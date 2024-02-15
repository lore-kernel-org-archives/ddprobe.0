Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8F112BF00
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000096; cv=none; b=g0h/HXreKsXuhHhqDjbMl7kDeenvBRefbMRMMvS0KkdAcnZbkMujdNDhTcnOmYiB+yJ7jtBdWtC029q+7JISMPexvMy34EUteXp1vMOP5/goOS82j9CG0GPDgU1zOHvdcoozAFDl4fOjhRJBlfv5bqrHt9zYfviptHDoo6fLk30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000096; c=relaxed/simple;
	bh=c7nvLHoYMGtTY2ByDxBX2S/PtdMfN39OJiyGlPZoIQs=;
	h=To:Subject:From:Message-Id:Date; b=Xd6d+J4/RLyvaS4/oexpCRgRQd0MUsBGr92etTm1+cqJjC1ESF+VUBy3V9dB+mBU7Uut0xtxSkIXGQILSeF6aPMzgrZ1U3cvUn+6ipbsveW+HrGEq83+s5NWrt8PkT7TyQG0GpN4V/LXFodj2/7rpJIaI7+o7+owAS22Oq80v9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkT2LcLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkT2LcLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFE4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708000096;
	bh=c7nvLHoYMGtTY2ByDxBX2S/PtdMfN39OJiyGlPZoIQs=;
	h=To:Subject:From:Date:From;
	b=YkT2LcLerXjb2hJ7GnwfKKsaayJ26v044GdASyYugImuHCGmvn9LKLikUIwZhWNp0
	 od3sHTDEXNrM9UfNPI1YczayCowVmLZJPEFN95UxUCnSZVpSNkcXVJw3Sa5tdo1t4k
	 7y+9hvg72tnPkl4q+aeD4qESjm/SeO1zmCXxCib+3dygNWnihkdopaqVRH82lzFJ1+
	 zwRPNTDCnU2kKYkc2BAQKQzopGadhR2Ezo3wCuE+yeJqvwEXmiCDClpacjfAqzrWTg
	 AeuGhh7455civjD/SALOZtBWgyWvxf82KLtxGfZ/4mdpuYVjAcaapUcZS8VNSo/zYI
	 i0AXHxVHeFPTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BC9C4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170800009640.24938.11541127532318470694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16987b6ee3502f5fc0a216e99aac3a850a80e16549c0b3798cb57e36bee32cbd
Date: Thu, 15 Feb 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708000096
