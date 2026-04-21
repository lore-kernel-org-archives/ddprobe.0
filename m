Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BA836AB57
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776812854; cv=none; b=rz7q2PMu5GIV1qon73mn76Yzyhyl9V/FWQ6JBme+Gcm9wseKq8BKFP8FDEZVrwpHCVT/NsoE4jIzqPnexKK2M2Ed0aPsq8JYTVCPgIaF56w05rLCD6whufxXU/E6CF/JhOLeDrzpEi04B4apLOVrPVBw2pd0goicL6cNShKorsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776812854; c=relaxed/simple;
	bh=XvBEcujefl3sk1HR0UkU1Lty1xOs6+bT+p7DfBnMbuE=;
	h=To:Subject:From:Message-Id:Date; b=KuyYlXuKFgfTEP+K2E0UlTuoco61mJq2Jeo39mKNP7VmXdM9hNs9E8Qk+kQDHqyO00Ls5486kEDJ2CgPH+0ec6jKdvk38gEoKSV2wjHTd/oIxWqu2Ho2n0hTk43V84cG+ammUs1vZ7JP4DYTh0qchGOtCtxOSPn4jIydu5xM+oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0nRBRHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0nRBRHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B641DC2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776812853;
	bh=XvBEcujefl3sk1HR0UkU1Lty1xOs6+bT+p7DfBnMbuE=;
	h=To:Subject:From:Date:From;
	b=f0nRBRHtvAPN1T8YRllwnNmobNjg1RdoOy51Rwah6Yy4I56Vvcuj/eDH9TS2ZHl5F
	 9NuaukeJm1tWe0eTgyxa5YPxN1qp3YENioXPzsyowG4srFwutXn5qp2snocs6GHaNm
	 nqHmpzI/+K2X2WRdfPeHsZfZdhj7oFHdTGwxLilXyubLSKdYeSbk7DM3J1uL+nhna4
	 NsUJluS+S7BEjU0OkcLJPJjsxwmhIqzomZTY1+50578AU4FvRkkgCoh2VxVa+ptwsc
	 0kBtyVPbiZ6OhO38FZXmIspnyN2EktFzpyDpbq7LODtDesnp2vp8ONlAISRX28/XoL
	 SAiQJd9egzTIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9611F94CB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681285368.26080.7575480215089822349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665a6b4fd73dd12d80603e23557400b93b2c0887c53eab23458b39750d1a1832
Date: Tue, 21 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776812853
