Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258EA22EF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753154994; cv=none; b=vC3mC61bjgoqlsjVesuJoUBJnR3+x21NSxRVmcR83iF+1/X4Mc7npBs29IvSBBpkhmfzqvcfQ4V2eyT3xpWYXHKdVHS4vhT8m0s9NLDY0CR2jtQ0Ao+iFvSTAkkE8aIi8gXeSppG9EHu2DaQx2XXBk6wZ1l2f4d/9kS5m2c3ySU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753154994; c=relaxed/simple;
	bh=v7mpncXpylRGpQ3J24eB2eA/1ngcSrp+W+BWJxjjVhE=;
	h=To:Subject:From:Message-Id:Date; b=HXIZYk7t7OJ5L/RuwbxRssXZuJBLgplVrdahQ1h+MHfP7Z8ulWuOwek/KGrbakoma77tiKqnqH/vaXNf5gbUFzpEzqh72CwdToZkS0XVIiRTPeYWKhTxDy+26+NNwUngnNIKb47a71USnXDfA671rl6W1Q5JLs6W7mWeBbLB7NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDXtpvD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDXtpvD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B70C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753154993;
	bh=v7mpncXpylRGpQ3J24eB2eA/1ngcSrp+W+BWJxjjVhE=;
	h=To:Subject:From:Date:From;
	b=uDXtpvD7NKMPnvcG/OCdmhdgZXx1C4GQNJ7/kbr/ubeDxuq7N1JIS3VpuDhurzUDL
	 HutJwWUikiF6TQVVQP0J3ew5NE98YI48MIvDmF6R625hjtsKaO9kyDpPqfXOvH3cK+
	 ge/pf6DHAMTrIwt9qnZyIdDtEFMjOGVQpZofzyt+6BocIopKidV6eSevpQZ5mcElpx
	 zOoN18zCZjbxOob4+7o0Exzg8wqrHUWTwjrTyn50HbS9ZB2mKU//JFQD9F1hWGsBsG
	 FH5C+w4VugIae1qJ+ap/aQnwcGGsCjOZup+J5GAVoPN+rAEw7wLVGNe4qxlOxnF8+D
	 lUHzkMZozH+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6DC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315499358.13547.2170604886588381630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37560dae6cace28cb30a5e0ea51f2d83701810404cf6f9bc4abb1ada0fecfaf
Date: Tue, 22 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753154993
