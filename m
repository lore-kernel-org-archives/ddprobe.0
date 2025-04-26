Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365ACA31
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745678394; cv=none; b=DG1OrGqdrbMGCc8qrPGh67mJ2i2cFMEbQDsTXI+Ru4h9WhhwwHRDiojF2inncmuOZ2ijbI36sa4AdFHYuleVk9uLcigcunCz/fPEDZ6CrNd0MqcY79X/mIahHJdCIZ1Z+FDLSe5FQEwAQpJeM05hy/rn3BD0funfLuuSDEihwjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745678394; c=relaxed/simple;
	bh=n0UGMB/4Xd9QeAPndo5aKj98v1Z0lPACeuccpjzRImY=;
	h=To:Subject:From:Message-Id:Date; b=u0uOoIHOuk0vROmEQFpWQRfG8WrkpB/d9or1SJof7uhBr3OVe8eWLwj4HsZ22PeKvJIn91o/NC+nz+FuV4eW8T4uPTEGykfiXij3QqPTWWsdlJNHT9C3VTKKGwcaR21tLEJc+BPv4euoovWYuoa6dsO30bvKJSxyzEJuMlujoCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9xQ8JFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9xQ8JFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BEEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745678393;
	bh=n0UGMB/4Xd9QeAPndo5aKj98v1Z0lPACeuccpjzRImY=;
	h=To:Subject:From:Date:From;
	b=Y9xQ8JFq4z153fPiodLFlsSCUsh+2BNfHGQZdfLWWCvXi1gQ8eG8ModaV2Gm4v1b7
	 ZnJ8ZJr4QXooo7ZaPXGRA8+ZtiQRzcNNM8QwejEcveYpMZZxusOR+Zxszy7VMCDnuu
	 EIOwcB5tIBloJ+tVFMcWks3/SIoDh0l2N9L/xnc9vIP1iX7PU4NjilG9K5x4u2P7Ff
	 bM78urR/Z1rtE/mo2q6oUcXhEZxdMqBhjpOAv79jiRqTrSVfGmEJakpQrWvD8mWNbt
	 c9f4kqi83k2UyRoVKYQGfxVuNePIXDTLtiGzIzuvy6UEKH9uQ4x1sRnxE36Qkx3a7f
	 x9gCVhELi7sBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113CC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567839357.9461.7845516360482407283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b959fe70b81437bb9ef37e1caf7f8fa033841e2508fb72a5894225b3984a27c7
Date: Sat, 26 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745678393
