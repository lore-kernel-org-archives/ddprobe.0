Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4042F1DACA7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753078194; cv=none; b=m08Mnm/dNY5MOAxvlNpTxKuKTKPBX9kmcSRA9/Duxa7wdjtONAxYk7RnG9AQtaPqEoRpg/tqE7giB/5diwX+SeFJXCWw76BHhbW2iYmYEW/psCvacJ4fvNF09qugkRaq+X20Bo8nc4DRMQsvpA89Hi6ef/rF+DBptjTVJtu9MZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753078194; c=relaxed/simple;
	bh=GEC9qYnQiTfjXooYOnaU9+ZajnReUJpkhMG5QYBtRkQ=;
	h=To:Subject:From:Message-Id:Date; b=F14oNx2EZ3C67csapk5iBqjOKpWH02slZGTGcwHfeSBgNhevjg/UWXtvFh4dHvd4OMKyD1LNPZuxb9SQJmZePFoE0N1d4bHfF1Xyop832dNUHnHWit0h0IdcfP8kvhKqdn+t+cLtDhJANQyAfrVjjp0tlckQiTZcXUHow2KjEIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9NIUe3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9NIUe3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C42C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753078193;
	bh=GEC9qYnQiTfjXooYOnaU9+ZajnReUJpkhMG5QYBtRkQ=;
	h=To:Subject:From:Date:From;
	b=g9NIUe3u9FLr02v1C1erpHdWK3nA+r1XMDybQOEQzyF3h3WM1ezDhiiScQX+2ARhV
	 CvmKJm1sL+nI3D8L/1j3voRumv7AF2EwQoAtWsxMEsH6S1b4/Y55dBQpAPUfrtsKC7
	 WlXZtYLwJAKL17ymhy2tgc1TM3B4JXuLEn9+qINew74lL8qlpX4ecnaCs/EzwumHfP
	 ffPZwgPj5Hcmi+p9NVPzko7fY3xD/RvX3Mgvln7D4SfhVdFFU//z+iSMmtAUdadgmV
	 NmyfNtCBdu/uwznn71tolkFY3UC7+tsoX/2g1cjvYZpOH/Mwe9kFAGE6dfTR7vtVl/
	 FMFpn7+0385vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB0C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307819358.20517.16909648314612577302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076c28ee19183cdd79d9a39573670b2f1dc445262f79bd7135728ca19a1104f7
Date: Mon, 21 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753078193
