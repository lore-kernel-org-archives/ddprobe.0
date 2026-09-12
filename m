Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD0242D65
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789212034; cv=none; b=i7bbS6a/vvS0SEoJKLe4wOWg9t/dCI8y+1FUFteeAi8zlJUYmiyFlrYfhllvqQk72zmJKuJybCrHmMJ6vvo+PNjeviChTptnX9VZyXk8mQdRDz4xR3yI2jy7E+c2ZfqCKad/sgdJme7hKjsV6COtSJ6MbfbVOYT2npv2rHwew6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789212034; c=relaxed/simple;
	bh=Pk6ZFnRCDnGAd+odNEcer58ZpjYgJ72dGjdpqgJgIaE=;
	h=To:Subject:From:Message-Id:Date; b=LH2JnsiBpNhWYngS2BXXOBGaRadBXoJGEoWhu7gryo6wiP5d3tdYUmfA55nD90c7bB0BDi7SRVsGSl2BHDC7xwi3HkwxHjXDNptMBRrcgV3MBEkMMGLPQeuMruFHrwD3b/YyBm26s/TXyLIv6MmBXC6wCo69LEg3jGtQcnfbAOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATKn//LA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATKn//LA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE47C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789212033;
	bh=Pk6ZFnRCDnGAd+odNEcer58ZpjYgJ72dGjdpqgJgIaE=;
	h=To:Subject:From:Date:From;
	b=ATKn//LAgWWyrpGG+Sv/YW9OAhY0gBqZYiWVNKIHgBl5uZbzI8plND1TMU6YIbb3i
	 OKCuGkhunFnyE+Y7DuwAz3HbWwhOGcT/XpyRpbTE5oCJENPBEuqVV8Zd7yKodKJ6X7
	 4EMCYBh7ImuzgTs6GB9gAz8PEQSL7GsXMF1ohUK/9g59vgnBSM72gk2CiTRldbeHNV
	 jXCtAlvGIozlx96Sghu9gGN6n84qvoW0U5dZIgUSfqvtkCtV+MnrEVT614RoH76AVn
	 1GrMrUkjv5uAVSoJ+aQQISxQ/uCN2Q4YpVPSB5gRLwFESj2jmFu/Mka8m69SOvPlMz
	 7Nm7q4nqxcBiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A904FC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921203368.10527.15324230058945758970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f53e21d886ca08858eb34423482bbd318d8a9beae9dda1b77667646020be89
Date: Sat, 12 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789212033
