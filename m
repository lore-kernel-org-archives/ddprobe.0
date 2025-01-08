Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D38C155382
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736346954; cv=none; b=q5yYa9KmDqM4TJtyXrDF3506WUzCGKW+W8fjG2X7zxw8MDmsVLGwS7LVTf2/LWAC89O2ZucM350cA7+RYXJ7zZVKKy1mMRI1oKZDFGRd9YxUoKhCAHyNPWSWolJaUoBPkTap6AJr+eMRFX/J6vtY5jlvJRsq1zRbgS4aByqEr4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736346954; c=relaxed/simple;
	bh=tebXmsK3iUa6hNYZ6fFk1zTex7KOCaGiSqOHv1v5Kk0=;
	h=To:Subject:From:Message-Id:Date; b=BZES2PpO/kWUFOaACvDecY0S6ytFuYxVsqA27gARK+Jq0Sdl+wMgf9rXeo8Rrg8tI2X9I1I2j5koUBOe8MlbblqpgwMxC+jMpVJ74gd9WkKJbuB8C8KmkRZcgPDnx00uLAQuKm2fXPRH3xbXmY2LD5qs64jVZwt1cP1k+PIiwrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tB7gAdyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tB7gAdyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E25C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736346953;
	bh=tebXmsK3iUa6hNYZ6fFk1zTex7KOCaGiSqOHv1v5Kk0=;
	h=To:Subject:From:Date:From;
	b=tB7gAdyLn6Mg+Ael6QCaQSMxIXc+hwzQHb91CdWUWzDh8oP3dvUltO57N7f4c6Gi4
	 HpFJUdfNOY3Tr1kkX7kK+i0SbIMnCBhq+2q1oSGZRYvTMEJfs2m0BVYLN7u0m9YEae
	 lN6COTJfv/nn3OZ9XyFhDxWPP/99oJA8kg3paIuCUnJ7cla3Zrdvvt1hS0H/joXc/I
	 C9p2h/9cMS6c94AUHmh5JVyapeFwCmCH/NqarF0Z2QbXyTOoj9hjhO8Y7Mhb6G5sGP
	 40u4jxlj3Yh3lgna7zH5U6z26LVjwIRLL3/3iAcY5Yv0nYRZa7PkjUvhpYDDmaM4Zg
	 WQys7KGbtt6bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D4E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634695357.1614.4536764534660719329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d61f1e8c42af6b31b060502b5a358d9f79cbaca20d657846c9df756c6570df
Date: Wed, 08 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736346953
