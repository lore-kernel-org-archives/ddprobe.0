Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD8719A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752472194; cv=none; b=mCdXVr0JrAQO5TgarNSuQdZC9HHNAkBw03N/3akcfx7S00xPEbFtm5aXjWq6tDYBJfPCbTnQCg4BpqQBPEuMbHHhBjorYp9Hda/ruQ7GO5WJAUy9fgV199/VbDXCN2y2aW0kqxxmeQlGOHs7KpSEvA4VdeTZ3aQ+8STbkbUTxLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752472194; c=relaxed/simple;
	bh=pcxX7O7/xo5COL2chAwo3LYLKKYiVlV/IjnykFhUv1s=;
	h=To:Subject:From:Message-Id:Date; b=mlFvoAe0ITHsZe1yQZuX/aOIf5c/kWqM4GXDhh1Pci39Rlck/fhJw8PwVMmheUz5+qkvpAlPe6sbloGyePXsMtdQzOCSQOTkA15F8KX7dCKtEr57GpEf2yQ0DAiBIu9a81nCf9LuYoRfajp+zF3MJkkPHMPIBdG/7DFhv9eAr28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEqobUB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEqobUB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A024AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752472193;
	bh=pcxX7O7/xo5COL2chAwo3LYLKKYiVlV/IjnykFhUv1s=;
	h=To:Subject:From:Date:From;
	b=iEqobUB3gBW+ihWGHSvZ+Hq51bf63nAPotcvWpm2HoJEzLkmNu4ZMjRyXWr3dk7Lw
	 jrlgBVWWVdUanqoo1t2kLEaso2u0OvSblIzWosr4f3IytVsaFBFzdt4mVIXujvmjpO
	 kN1b1EUrurTAxWKSWTKsKqv0Ab5Gxld0hplQaP2iK6p6ueyYXAkM71TlIM7O1GM0fZ
	 49CzYZTJm86b1x1JXYYEYggDf7rGmv7NqHNxhL7SqabcNgBPbrNch1LUPeUDhFvErq
	 pJwB2sMZVQ8jWGbERToGo+xcmYI1G9t/k2vKEG1pKCx/njCJcrcev5uavt5UK8Qzf/
	 v1/9WqW5AiryQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB80C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247219357.9382.4945042863191140103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4e2171db6ed2d202cfbc8d6b54e28658998fb7495a642722e14d8552af6705
Date: Mon, 14 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752472193
