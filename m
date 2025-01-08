Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3DD1DF255
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736339154; cv=none; b=UfTaAv3f5qSHoOIxtRxSb5bya5YcXQppauYeBJEB672qah4bAKoEsjqR6ymvYAvXnyiLVuJLrROBUpDGC7JmNtQ/0do3Z7kYG3IVILuR2qwQ0mFQXcCsTphVDsVsng52rlWQx4jen2HqMHCMXr3ufRNfoY5yVLaMH9bbKwxmM10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736339154; c=relaxed/simple;
	bh=xC5iW2JQK9bYoZ89BgfWYyC/1h4DUmk6RUvTyVc0kOc=;
	h=To:Subject:From:Message-Id:Date; b=BHzXnTxwwtESHJmKMh1Sfxio0hx13s3kZI064qo02M7B/gawgLgd2AXBkRdxNIvc5ERvN8a9vefHALfhoy2JOsuWMAjC4miTp0+LGbEa1FM3aRj5CbLAUtBfonN/hAUZjLWSXbrryf62KWs75kHqXeyVePEuPMStclKUekjhkgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nl9cexxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nl9cexxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5AFC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736339153;
	bh=xC5iW2JQK9bYoZ89BgfWYyC/1h4DUmk6RUvTyVc0kOc=;
	h=To:Subject:From:Date:From;
	b=Nl9cexxn2w+zGyDsKO2NuvmaCPRK0Cio9CoTfnFn3Ow3FhDL9OM9G9iX53OmAyRyS
	 6Wf7Hc/rPuNf7xNjROaEXjpzk5PjOA5Aa7atVCi77yDFo+5TbmNengmarTumKz1F3U
	 4iy4r3u2JjI0Qf5O0HQgYrkwGeBxbYhzV2PEju36b05hsQCMYNO1uhi5u/TMKoGgPc
	 dIJD7e+eAwJCAyc8a0Q5G11OAKz15z7zGC1cKN8Mo4S0goy+RLUbYpEu+gVYxfIIb3
	 GZXzxCtaaQaRXzCmPumg0/m3OcUo3NFaRbKjLr4qxSfjC2mspKgWbZbznLXba0aQuX
	 LhwC7Tl7vLCrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADD7E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633915362.23576.15150160886064604169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e39aac6f14f0bea22b55814547bc89ac896352ee2cea1fa210d6401df9c0c6b
Date: Wed, 08 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736339153
