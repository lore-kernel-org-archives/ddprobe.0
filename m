Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2BA1527B4
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743089394; cv=none; b=XKRh+76kSrzIPMiafBy3T9AqVOnw7Z3dZ1vy6FuiERRgZKr6x5nIiKk4WuCtTMz2LnEAPUbq0pxBJ7GISuUdJLTXL295jgMMz1Yf77O1OwYdQDOymHtIQW7tRD7ZzG/UUdPGWXA9XZim+1sW5yDW257I08XPTX3Hc1Wo0FiFz/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743089394; c=relaxed/simple;
	bh=2zE8hmK4jOEB+v7XN2QhkfkD06qEeAYAUASd6kclsno=;
	h=To:Subject:From:Message-Id:Date; b=Zlh2AEowhUhvoK94sZlHfNQ/R5D1Ch+Ni4x6hwFSVsy3Yqc2UNpmyeNp52QDRJq6liEi6YY+tXFUKLjZe10yykZYGYU9BoK1su9nP1BVGKbFnxWHuCSI7v3P8+mYbSMruczYsXUXT/rgRzRgQ8VGTv1n7Jv/bk5itXWywdhoTM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpn4l1hq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpn4l1hq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD375C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743089393;
	bh=2zE8hmK4jOEB+v7XN2QhkfkD06qEeAYAUASd6kclsno=;
	h=To:Subject:From:Date:From;
	b=lpn4l1hqW0aMj8hUJDc2IhlKj1bw9WriUTYyXP/YyUmjR5gYj/XKJ1DUdbEXAEd5F
	 Uvt34c1NnLPU8A/8A75+wCkjnimWZe6oMDbk0xmbM0ALmB4c01euYYQiZIGE3INPE+
	 AAijzZsmdg0ddMbjetVcbWIxwkZLsi4XukEAme23oUjz5jXRu7kx5p1B76sCTldAr1
	 YGkZOsHGDjAioVeOJfiavnN+p7QgnkUJn9rjKFW/Gy1EY2lXU7TKPpXRBLqMrhYuo9
	 a95D+y/n/6XESf+K+PEF3UNuOJpzPvGcuAEXbnuAmSKg/xwF1fF3Fvq/qM4LoNona7
	 NsLOF5l4a5Z8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CCFC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308939366.18778.12211808186032779277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab81793c54a6f3ca10766f1de091e183cb037138866eb490abad88ed2f24bc6
Date: Thu, 27 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743089393
