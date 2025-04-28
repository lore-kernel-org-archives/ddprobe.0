Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89F826463E
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745838593; cv=none; b=Sy/ia+Dw9Lq0p1gsvqSemavdL/8z4k5T8ClvEHZt/hgcgxPbWmkz6VyRo28gsD/VHM04oZ3OyKnVNm/cJlWK4GJzUCviFW/PpJ7AMD0uvuglJJcl7R4QupU9RG+5NtC6HDQZjsYNdtB0hMDbnetUlKBfc/tEj10J/tstC283daQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745838593; c=relaxed/simple;
	bh=miBo1eddZgy7P6ywsslEU54SUBlWF5smrVSI2KsWj1c=;
	h=To:Subject:From:Message-Id:Date; b=j70ZLu2QJ4H9Y5q5mQuXNEInnVLJvqNhauBEgtARtUNvwAKWZScFx1DTNWjxx9yceB8DseIa3R7LhxW3I3zaeRjcCTRcmJ+B/9ub+rkuyhgieBXQgB6mBod5QuvQzXZNi8nSdAHzml7VKPtHMDb6/8/RQl3zf4EgpIW2ZizaKw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYeITvQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYeITvQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5158C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745838593;
	bh=miBo1eddZgy7P6ywsslEU54SUBlWF5smrVSI2KsWj1c=;
	h=To:Subject:From:Date:From;
	b=sYeITvQwOffAAIdPLyfIYesnoPBzYMdsc3aujtiQ4OTIPOxRGEdT5Jy4LqmuLwPly
	 PFYAtvn7hJ018X/40xvxQzG2g4BOpt56Q9RZxKEF1GaPUhtzAIwYh7YWNROS0HGKB7
	 VsneUb27mxkhX8n3jHQyN97DXxsLDRSiL0479ztaRHrOFHzCitPFvAJfwt/Ge2X2us
	 2yuvfN0m22tozHPQdHpi+8S1cTjiV/+o6HDwez5dSUkiiBAwKEfj0FgGcWplbo1QDp
	 Su0Tce4Pf520ssWrrH/zZCWOGYQbI1lszk/PWSQ/17Cjrglj5T4WRSh2gfV2kl2b6a
	 Pcyw/FRAoD5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FBC369D8
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583859358.677.8357210623891867099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092ff4a6adf7bebf69b7a6f01d1d2419ad40e42340364080fb409b76c132d90c
Date: Mon, 28 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745838593
