Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325B638B
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728768954; cv=none; b=MerVHbEj35MyJs4OjdiMSIBqmTzPTqBX/A5NHELwRPeEIX6KQYvknoZtGLDsfVg5hi/K394VdD+xrHAD+Y1sgfJkWpfOG6bYre9qfQsqfzmrpqKVveq8uVXIqUfu7S8ymQzAnNP1b88L/xYjwmMBqQXHkQiiKLwePhx24xYC0+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728768954; c=relaxed/simple;
	bh=fvqdsyi/4iuPyvI8qsbAowvrX80FhSasWM/oXfv+NN0=;
	h=To:Subject:From:Message-Id:Date; b=gFrHWpHRbRltopCj9R1A3JfygrjyPcExiZ6M9GNX1uOySYSSBUXh+aBiBWlQjTP4dQa38bO+SwsnFLc/ew9W6rklejUzIQ7uHWvH3i9F/f2euEUkM8TeG+saNYHfvAF0bLITejEcxFBsW7aBE6/8So21239q/I5Ij+zIKy3zV6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crXWYa+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crXWYa+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B0C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728768953;
	bh=fvqdsyi/4iuPyvI8qsbAowvrX80FhSasWM/oXfv+NN0=;
	h=To:Subject:From:Date:From;
	b=crXWYa+/TVh59srxvh9Hv/h7acibWsP1iURyn9DGQkNu2DWgr75SGab5yfAhb5QUZ
	 uB6ul7ehuY2qhKGvYzUxTH0xPuclWjAz2r2DofDEO/X44bKBJhAd3F1h40mGdf1dOi
	 oYHphTfjLm1J+P6B+RgPr3fG1tVu5aQXE9dsmTtIYXhQ+8YCDp1M6w6Y+86jpcqP4/
	 a8QrapS6+0yDeu5/C1eLqB7bkaR2ot0j7D3wF7i4u9rZ/VHhnZHz+igRiM5u/ZkaO7
	 e6STzDFlE3/meH4cfIoYYGZwNCoJOz+JGSGXF9Tq6pntGr3sA5AUzqlIDyOjll8E+M
	 EXVhImpil/upw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999C1CF2586
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876895360.21845.11535358980393870773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf59495c818a2f096c6b054b07967b3aea905db5bc3c2de4cfefdfdf2513104
Date: Sat, 12 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728768953
