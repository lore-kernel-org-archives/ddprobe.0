Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A6EB676
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729958754; cv=none; b=SQvxHDXzN4J/EMStbP9C2ysm3Nt8SP/TYpx409z+pAilSzkjBKX9NMKnExeNVAV9ejZva2IYmxuMKXH0ZTIFQAsEYPioI91h/4R9vq21wI1WE9wm2J9WEideGe2eGV9jdXObZTRXoqbLViax2+PdzXCSu3VCOLVOi/Bh9bESkqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729958754; c=relaxed/simple;
	bh=Qlax+qzzs0oymkuckmeqWYYI1PAAvdh91d5jxgAdaPA=;
	h=To:Subject:From:Message-Id:Date; b=oMYXhltakeVGNXvL0GyztaYya3Jh+hDIFR9iDbDttSS8CX94gCzwRbJbHAgqKSi/oLla3WpSM778bTqR09axpR1eF6vXWaEjf3DcqCP+9+RCORNM7zofCYibE7b1uT9OXqJm9vUOZkoPhXi3+jYb1EvZtiGz9BDk2Mx9c/+Oicw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxaFm1sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxaFm1sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8134C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729958753;
	bh=Qlax+qzzs0oymkuckmeqWYYI1PAAvdh91d5jxgAdaPA=;
	h=To:Subject:From:Date:From;
	b=PxaFm1sjqACJr3DAQ05m7JsaxIhfEXcfKVAiadP2YeeHVDLWYJVITv8t4tm3h85u4
	 VvvjmucoPlP3VWQ9vMFiUAV9Rva5Mod8zViECKKaRctBewdDHSMgdPgYClD4YqRkFy
	 TX4Om6P+XaLrJ01FjtdPddoub+UDSn4qmXbASb8U/bUlR+rwdao6l32kx2tmeXlntV
	 RN6yfjHLVjHo+Ex0fVe75/bVAPcvXdxjKjvFP78a5tnM4bpis80TAylP/f7mhd6b1a
	 uCIKBRGoGNSaDVUP/fm7T1ED61J4TR0n+NQkCe3aUOhKqeToSCVhZ4rJ8+xMeQFgah
	 15j2Jnk4YnUnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94330D0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172995875359.21336.8332005814110058281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cb0b640ea6a405f9290776bd4419b0d5cabc481f838c2d61dfe54aaebfbd21
Date: Sat, 26 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729958753
