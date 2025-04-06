Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4424DCA6B
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743970194; cv=none; b=BHuFUOMXiu/aXyP35H60aKNQhfGQqCNWLUieE341sg0GwCOJ09MZJ/Ep9w0Wc2DatprJfFw/y4ftpW4Tjmoa1fFaYJLn+emzY0dfHgSkPf8flPqwyWsuqlIhkSAoNn09N99qhzFhUQJSR3qupXGrjJJ/Teav8GAfLWn17vFP3sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743970194; c=relaxed/simple;
	bh=upJoGY9aOblGPwtNlO8Zny6k9iA03k+p0tlmBeVolgY=;
	h=To:Subject:From:Message-Id:Date; b=Rp1x7jDlgbaEspsgdABzKDURc0n8fhl3toSwNojbR4l61LemXtSFbsq0wavGqVxF/9QSVzb8vvtWTY8PKWG4UABeN5V+VAe/6mKicv3aoCZ87qLJ1sygRkiUqSb/0atMxOLjfN3gOmWydh7RZKuOtYSMnqmOykUSMoapcwhj9yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eP7JjaKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eP7JjaKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7A9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743970193;
	bh=upJoGY9aOblGPwtNlO8Zny6k9iA03k+p0tlmBeVolgY=;
	h=To:Subject:From:Date:From;
	b=eP7JjaKDnmYx+EH1Kpq3r5OIykx6RjMB7ffpNWCsJMc/5jJFvXBHi8VPIz7MEb2l3
	 7jDJ/8wfFQAr4RI/frupXXhrhcfwiEwdaV+hUyvSaxek0eHO1sekRKwaIc9kDVHF5Q
	 zCLi50SVGNc/LRflxWbBlGkY361HePlTnxGm4S8RL1EnGIPJ0dtuXrGXYV4JkrhwS4
	 RtBJXsFfr/d1v6nV7xhofb4sQoa+5BEW1C4If9eQe4fZHzMF6XzxOZMiek2+7fy4HK
	 mCqPZmh2rmYkISiJI3NW5n0BH5pG6RSBgEolHMqdBzFiymvD5WwvciAMk4NPM5K9M3
	 ECo+MXEFNbfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB90AC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397019366.10498.15467436550503779922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ccadd667143969f78ba45f923d0352dd2c28aabeedd4b6a625aac1f52bca6a8
Date: Sun, 06 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743970193
