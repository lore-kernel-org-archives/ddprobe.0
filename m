Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2520628B512
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757918994; cv=none; b=UV9wtK40dSKuYLCGzgKzGjpL7jXarNLtu0rnnV0eYvujHRIR3RMCWMz0jeoQflloC/FfnloqMps8JhVnbfnirFviByf2ipSFcs8r5yDwjmn1UIDizjog22rwWMuuiu4j+hjaRg4iD80ss/iyHVMZpUexq8qcFGiGIZZ2dJA+Pas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757918994; c=relaxed/simple;
	bh=73lPphRUVHkI/GM1mtlt26Ekq4fjchRUuBar/I6HahA=;
	h=To:Subject:From:Message-Id:Date; b=dpDoDqgz0drEJPE66mvlGaOzZWO9geF99iIhnCIoGyLFKiSYag1ZAZW1Sf2/2AvdVNH0AAsdurPqnsn1+OtlMfloCST3Nej4OIZSWdbdMn6rlLaVeukECTJHafvjqnC+GaoCmWdgkWvVnz4029zRnIXxL6GZW8OJVnLoHx8TsLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gm8nlYiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gm8nlYiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E6EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757918993;
	bh=73lPphRUVHkI/GM1mtlt26Ekq4fjchRUuBar/I6HahA=;
	h=To:Subject:From:Date:From;
	b=gm8nlYiEUtNFlD+gdnME92WBQbagr2rqN22w22YJlcdSRWuUF1PDJG3pggGk7v4uJ
	 EJfTHVs3qMFC9cbXomX/1ys74m1ZR9mQGiMnYEf7Bz4lUusaRxbrI+/sEKKU0vWf+L
	 RS9LWI55PYqlTRg223ffHnMlhI7I/GM4ckahTOvA1TJwFSCyHDtUkL239AgpLwUteH
	 susGezjiOL2TNH+6Qnc29qtkrVca0or3t9qINvy8OjPPmXsCLEljHcN9lbwXXY4nv3
	 X8MbgtU+5dHS7PpqYIBwc2fDGEfASCN4Gr396OniaTW9lB8LNI5+vRaXC5TQ5519gf
	 RP/+yV5wjCCAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B6CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791899357.12460.3443169044161795231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09395b1d9982bbc676b63728fdc2ac5e3c5479deec15cf4167143764e2e08bd3
Date: Mon, 15 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757918993
