Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406FE344037
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821394; cv=none; b=o+6HEkg6IrGOE0SDTnEFa6u1BeMkI9WtqdOsfMpyp49D1mzFkzaJFzfAkAEBoUgJcmEpbBkCM5LSAJAdUqIHM/a3aNiFvInez3PIGw2CZZ2x76b+C89KsTEq2Me8Ch+SYwAyPqMy/fwwS09Njx5yQvys3GGbLqDEg6Us+aQ7pvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821394; c=relaxed/simple;
	bh=o1AzsNO3iF8tqIhdg6KJPQm1xftXukgQiNR/exnxecE=;
	h=To:Subject:From:Message-Id:Date; b=PJtFURynhkNqb/On5GyxmfQWX9ZWgjW6JvORbpUwSBAXhZdPvBmCG4h0pBk4qn8siWgVnvI389yVrSPe48x9wQ2jUf+ZRmnolr5iPFpPws4H+dwMPswnuQs2uzjcdSMGQYG7R4w0sNv3ffxYPZmdiYCO5WWIRsZKu4wJMRn4mCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU6icidP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU6icidP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04BEC4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761821393;
	bh=o1AzsNO3iF8tqIhdg6KJPQm1xftXukgQiNR/exnxecE=;
	h=To:Subject:From:Date:From;
	b=lU6icidPW0C3rxKgPoonDt8fzqsWFgkhaOJ46oAeH+LlG06f093TdEJnE/w2xIEF1
	 mzW+1SbNbDcyJMn9zTeplJEbbBm2kkcm1yMVTR7ILxDhp1VUafkK0gSyK+5juYwmtU
	 xxszqxfMKwC2Id/C/0g70a+kGk/DJfHox5QyX3azTRwQIOtXZt/bQm7lYbMfVGZsA9
	 YhUNgqh+pU2BVSwmN809V8gTsjLC3WhHHI7nkwKtzgDMrazEmIWUwTzxYEh1dvj1bI
	 K0qCAOxblR8EfuerpHoHNsrSckJ9UtCeM5rLVW7BEtS2RRHIvwUUQtYDPZAim5JXsg
	 Fr+VsxLtgRWBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE36CCF9F1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182139361.12565.5983690507092113707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5450be71478edc14297451ac992d18de5dc3367eaf7060ef1aa2c77c23236d25
Date: Thu, 30 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761821393
