Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570B3151985
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738756554; cv=none; b=uZt7gWgT8PKzTrgiZ6527JljKjpsyV9GjIRLG3U5heAPIEojsiUYdVMq5URvvaPHI4B1LZG3kGLTdjblo1u8H9ZWRsNZ0PPa0nBPol+35T3dbTMi7u+uLJahbJBy06bPGGoERnUUYc1uTkQpkKdzatRkMzDeCegg8XWVphnVB6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738756554; c=relaxed/simple;
	bh=tGYfh6/ivJC0F4z/IBp8BKvG1HWI59mk6TpueSFjza0=;
	h=To:Subject:From:Message-Id:Date; b=fuXjxcret/aKqPh5e/h2R+1ofk3J56D+ihVPGFtdjuzBCgOIG/FEWaJU+j8asdn+Lvsu50kCp0xzgMsLsic/SXRNOF17bE3JQ5MVzzyHg1hdjHLVNWL1TjNmeW/dfE+Yv0+6CSh81WISVOJoe93PW+OuWFxXBpzhfYJAFhl/g8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0tMUVW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0tMUVW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC03EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738756553;
	bh=tGYfh6/ivJC0F4z/IBp8BKvG1HWI59mk6TpueSFjza0=;
	h=To:Subject:From:Date:From;
	b=j0tMUVW11ZXIZs4X+k0w4lx6J4GLVMvJwBFD1vW60SNIaKJ2qs69KtBuNno2IhA4f
	 8Fw/4ovIq0jmx2HJgh1fyahsq+fniFEtctMnJaIlHBVx9uqLB5jkSBAE9vDbQ4rcu0
	 zRWLTLyB/aF8/N6yDkZHLd2HXNx8fyXRQB+kPDwDfYXZABby8KG2zo7BOBiqqv5MyS
	 7PxG6ZNhK2yn/yskVqzHoa0KsWBMeH5ESBwEprVszyhGVSOfS3/9MntpuPXzhepq0d
	 61ZwOR+FTtZYVEcYs30naWFDcJRFEtEaF0GlB4FvO2qU+A53dVyJ3rjgHYYpOsVH2+
	 JZjk/+qeik+yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A630EC02196
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875655365.22687.5404549741230547028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb94ed9bd77d56eb681ba78ab43ed36bb2a2751be8e091abfe5bf1053dd5e44b
Date: Wed, 05 Feb 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738756553
