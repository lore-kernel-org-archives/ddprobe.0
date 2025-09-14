Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7B811CBA
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757830794; cv=none; b=JN9kQSyfEv9zKsbpd6bEWIwdMAok2H7L87265XD7I1szNQpNfDvBNcNjU2XSAARp0Pt8hOaY7P9OP+pDKunPL2oNRYsogMXeZTe9uJTezhsOy2nxrTVPP9A66qQuFbS29y41gysoB0D24dRN0YHoKtM2NemiFv7Xx3RCgpfr+rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757830794; c=relaxed/simple;
	bh=qn3qYGQDAwdKf5Ct/1CXhmssv9y0cVZddkIJgkz5vms=;
	h=To:Subject:From:Message-Id:Date; b=jexHEC52AwYHmRCvvOwz+VnBgtBTZOGi4BrdBA170WRJykT7QyXwD6Vn9np4pa4hAyAlbAS/NvuznIwYpWX34UuaGQsorqSoDG5fIOPiru1/LqTlOMn4Xas7dqNh5SonzqYulrclAWWUxyPXGd4C9mslPog1XWK6F+I8QgJ7f9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcS/Kr+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcS/Kr+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CCAC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757830793;
	bh=qn3qYGQDAwdKf5Ct/1CXhmssv9y0cVZddkIJgkz5vms=;
	h=To:Subject:From:Date:From;
	b=rcS/Kr+WxJNcqopox1j2s9Y6OcLdhXV7QjJMmaE4G+0dwOkOajbG3ytIunJL80Wkv
	 MLmRqYH6eUxmPwwwaBd/CkS46SwkMIVGeTapkXDo36Ca07qAzDjjUsuGZfy8LJcOZ3
	 98Ct2SeHhlSeZBZ/ZUoI368DPHVaH3Gwv12MRq94dl7/r/qWDWJZZBBoorr8S+FtSk
	 0JgEzoZ71SkUpsuhkYlNLmtyPx+1TbCqb4wXffT3QTjMzfeW426fiyGTIw0ZXQlUcl
	 FDmG2hrMdmZIMftNvCYkTpKH8dFzJDYnKfceuYOmL5QXf5lC1B/MP68yZOXxYLz4Ou
	 miTbd5yBuuL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B1CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783079357.14986.13121859716492261039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5e165a43c701bdfb44ac0e9651164014bbf6fa4ae63dc80bd7de22eedec854
Date: Sun, 14 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757830793
