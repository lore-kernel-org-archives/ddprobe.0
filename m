Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2764964F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788723634; cv=none; b=fF65qbyjKGvy/lWmD94BUopfb90m6F9pGe/offGeD8LPPR9kntyiOD72qwC1OZR/xd/S5inKQZGqjTKIEMxq8/OgPS3FpToIYbzXiVudXYd4UFvXlmIsOQ91u7CqUqbPl8rQwPQoVo5T17iUlAx2XoMMmqNA8C+BkVkaoTdvbrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788723634; c=relaxed/simple;
	bh=Oxr4zvzltmZmz+flX0ni6xFol6+LVVtLhnAw0hS3wFY=;
	h=To:Subject:From:Message-Id:Date; b=ozcKRlPFDVwNZldLte9anUdkMfA2cG78x5TFsMlkkI+jRIgF4V+pjSiYSugI2pH7YWHYMWrrk1y8VI6pD+iMS95/0r9Vlx7uQ1HVV+zStVmnCk3CFJVHPAlECVWE3SDQI7LkiRpqltiVwqYsHz4eeNVdKh69dnnwC9nImqyOavE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EK0LpMkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EK0LpMkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D204DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788723633;
	bh=Oxr4zvzltmZmz+flX0ni6xFol6+LVVtLhnAw0hS3wFY=;
	h=To:Subject:From:Date:From;
	b=EK0LpMkcOh4j36CxCS/10N5AfGXb+nqO8Jj5mLU/ShQkm3yehJiaio+y+yUqZGztW
	 t8IlxR4y6LKkdgBxFqaXnrtWkAh1PPBKpBJBDWnHRLDxVQyIuMNecN6q1d/x+4TEgv
	 ysyV4VL2wyWxH6ZmJt0padB07B+b84O3PBRuDEEJzkiI8zQdxQCEsDc15uUxpUsC84
	 k5yDyby2n8pnRtH/dZmzYk92SyFRm2l54BKBGb7guTA8ax9U7GGwmrY8MvR1uojliL
	 5woJcOer8QYh+aIxFWAUuMZZnlL+19cu1Taf+m5QEV16sAJ/hFq5mJ5QkV5QXk3xF2
	 E3ZQA9vyZ9Zug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEE7C79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872363370.6326.321781447178231419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00ce26b28d7f13cd904e295e37cf915cc09358d2fe7a4b189a32e28097433da
Date: Sun, 06 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788723633
