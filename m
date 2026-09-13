Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439A2360EDC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789302034; cv=none; b=h1W8r4JbZfEVe1D316qNvZ55Mh9VWJL6yMKD/xvgvNH+nKzS8gCaoy1N2S9xCN656IF2WeC8zlQKcpPHJsEXI7kPBOYy3x8gZweV7uX+29m5EIfBSYD2huJWTsxprHynMZYJVztC4eR30e1gbmGWiu2JHEOoylV6SZa/JOODLVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789302034; c=relaxed/simple;
	bh=O37KXch7RpIeaEyXmcbXFqJq57+YnKU3Cguo3/ABcdw=;
	h=To:Subject:From:Message-Id:Date; b=R0rIZJzpHwlDGSMhD63kvZnGQTEIfsUWHuRvRUnC/Vc9j+yP0bS1UyEi3qtdzAxScnHDQ4SF5MkEVnZuc3y8t7P8EvHrbJAd9WXtKEoAEsTgL5SzyqTPFUakNUvgk23rZhLO4muOjXRFBt4+i0z5lJ3bkM3UswziuvxDd5zHMoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hty/vwzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hty/vwzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCECDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789302033;
	bh=O37KXch7RpIeaEyXmcbXFqJq57+YnKU3Cguo3/ABcdw=;
	h=To:Subject:From:Date:From;
	b=Hty/vwzsxacO2onWMAr6WVx9ApMIGuGPW3J2IkuI8PgLPDb5ZDrlEXP0ftUkTfJlQ
	 2lLkY4OyXow1MxeuNZz0JXQ3tQXEZj+JBmkdgv6IWyDAmrSNcd9v21ObFjmMBj9CCg
	 Dfg42LVd4y026ijK1y5APyqiSxGWrcaJPsNuKbo4xy+dBtV4KrrXlhxbjc1+dL2QA/
	 WRb+AZ+3U9p8sPQXawWFbpljGAtK1XmqPhjyS2q3n1LxFFzuQbTQ85X+KCwxkVWOlO
	 flAzSGLX25UIoVigx7p9nGT5gy8ZpVENiOHRBo8hJgFNp0uO26OCNpRHuAmCYcrlbS
	 /2XChjgZ7A0/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995EC88E5A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930203368.16413.7025666763757098982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9287ad74a2a9269e54229997260380e9aeb871b0d1e2abeb62d54f3a715083
Date: Sun, 13 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789302033
