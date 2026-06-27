Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECB3361DA8
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782563914; cv=none; b=jRFKUEkXItn+FPZGPTqGy9EllY5M/+ZkAcg3Dyng10SiTWaw+foOHUl0zlZ9qM7bhHByemaSmiMed+iH8BeUhzMiAcaYKuWoEf0IQlqt6gn2Vyebp+sritpezwVQm00tHdUrAjy8tyUjQxTAQCf7s+N5pkQ0WVELy4BY79QLwcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782563914; c=relaxed/simple;
	bh=Ri27VwLuou7SaclTDAyVPJD0s2+LyoytVtGr6CXnxpU=;
	h=To:Subject:From:Message-Id:Date; b=LwsTQwQyxp+bMZckec6jb/mqTBvirkES9iO019DRLwVt+FcfQ7KG4FmtIClABFbR5vLDIJaemxip5K48vJSA4di4pbVVMTfYjcA6Mq9J4U5pexWH00p2QWYj6nKDSlptHEz3ZcxLqb++FcDXfQDhp4LQau/1yWLQvc0+c+NSnZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=te3aiIpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="te3aiIpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45E4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782563913;
	bh=Ri27VwLuou7SaclTDAyVPJD0s2+LyoytVtGr6CXnxpU=;
	h=To:Subject:From:Date:From;
	b=te3aiIpGQOj5D0QhN3WRyeIay3NEv7gdI0yl8m3V+rwcxwohHru7MRyVsVtcZxbXp
	 HVrjFBUQy80fsnGp3xgBjKHTtnFG4r8nhrYrCYJVfG6OxQnRGrFaOKMAB3f81gc92y
	 WoOsq2/Dk0weeTMAWpwiAW07JYDTQrOLvASFG3OlxN2HAZGgAE3+uAbINn0gwmuA0A
	 7CU8hbcSyJEMpoJik87vI3byQ/2rX+tsX8w9SSXVZSjjUyMr+4CtF0uTWHTyRoRZzW
	 Z0UuA148OavnXyilOyP5dOlrWNezyob7leN0vmjXzIWmAOAdk/0T+A2/xwKictwm24
	 eVojYr2KZ2abQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F0AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256391369.22644.8470719095304213793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bd25d6ea1df6655e34301cf708ba687ab989092502aeefa21281ffea317eff
Date: Sat, 27 Jun 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782563913
