Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F3B35C180
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780247674; cv=none; b=o+cC1/segnRmTdDOLZDgctzN5d5tUagDe1eEjpRGmvLQD+hjOAudOJLkwsXgBKwJOCcAXWpho8ZWfuP0u2vAjrGejOzPgFeNQten7X15hNOHDnXrS3ReNGPR4a1jCyFfH+0igCkCWOjZhYy9WRLXDyI11769tAxlFE/KMYP2l4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780247674; c=relaxed/simple;
	bh=xqhQkhbd3yw/INb6IDpu7sZjawlR31BmZ/D0yJdI6uQ=;
	h=To:Subject:From:Message-Id:Date; b=pPK0YJ2y1ZyT4ptGhF42640zDJ6MYFVSVTfl9StAM/YQja2NIM+EM8NTo8LT1HlWBv5j6NIGPKz16okQlv1Y1HKMjUuEuocdRH0cOxB7j4y/N/OWtu4OG/KWEkqk6gRWnmJFklKI6jWbuNlJY13A9GYkxK4y88VJWtwJGNFeIRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVCBYOiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVCBYOiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6C2C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780247673;
	bh=xqhQkhbd3yw/INb6IDpu7sZjawlR31BmZ/D0yJdI6uQ=;
	h=To:Subject:From:Date:From;
	b=fVCBYOiUwDrUgaRE78MTme74S18imGP64zhpigLxbvqS5MKv5aCbj9GXvhuiV/SXz
	 tzDZp/UKvfTwHlD4ntztVTTNILr5DADx0EVgzk+Tp8RR6qb3M6NusBl+9HYtXuL6rA
	 XI2Oi8sEFmXOb4rESnnYfw4JphzPhgX72f/I+Ma2/BHh+xk/EBAPJTPzTUyGBn+ZNT
	 wI9FSPitpzkN0AZIymyo1ZQYGWC9Yfj/Pmc0ejfAllW3WOs9sTiWjYmcC4ilNkt0p8
	 ni9MlDCgMCZAQJr4DCEqrgHJVAmN8NmtuyIXYhk0wao5aWyywGXgiK6T48hJPhar2O
	 H6t5oc9uQJtiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D07CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024767368.19616.5707506240003770125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5bcbe8e7c8bf98fbda58f65b52235366f76c00766eb8338877cbbaf113033a
Date: Sun, 31 May 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780247673
