Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D6733A9F8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788879037; cv=none; b=gJSuuMJBJMATtjc9+gA8XpntrDhru/aYgWgbMUg7mLzn0PBR6eSV+rAOpQmiFDt55sSHkEqQO5qSO3+1AwU54bP0o2cPh1SFhBE+BKZAZopUb/+aRhdLu+jG1eEtyMWxOVn5DKcYpsQ5Kky+ht6u2y5A6ZPrGMRTa1VCgSDMDVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788879037; c=relaxed/simple;
	bh=qJJIrdxPa7cXC1hA9+BhYGp4sa/3NXoTsg0zXYdb8KQ=;
	h=To:Subject:From:Message-Id:Date; b=pM/f09QMtyyO7fS5J1GoDXS/45hQY1TZX77B8Dy+rRYV+osm2UkYQWk1myC+V1Q7whXVwQixwfvFt3vL4zJHanLZUGBTSAEL3voPsAC+0FBej42cagCdKUKn6Lct6TeHCyanh55bVNb8Lx1G5pYd0RRNEfCgbI1GdEBYgj2k5gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVwr1mYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVwr1mYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65CDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788879033;
	bh=qJJIrdxPa7cXC1hA9+BhYGp4sa/3NXoTsg0zXYdb8KQ=;
	h=To:Subject:From:Date:From;
	b=kVwr1mYlmQa4zCDXHf6q47lS1muhWGKDwKb6fD/rWTIYA8yNcobtCGAJW49K5s8wX
	 pwNN6X8QCyp+fxnKupEK8cVqkCBKPRDbs5fpCrvQQJWHisLWJ2gnkj7sSaIecM8gxR
	 QZtknbR4Usfy6XNEXiXcuBCfAAosH/H0611X7KREdud4ktRNBbFcdsVmFX8fBVXziq
	 rcH1PpNCwRVDmhmkoa5SRuq9LeFZN4svJ+ID7iwa1XfL6C1/cqkiTZGr2OnwG1YpqL
	 VSOCuzwYVW1ow9uFmgBJRGL6x7R973SIgal9SjRBCFky8z67q1aCqX3GEpExeFkS5a
	 Vr/XB/G5L26ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1635C79FAA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887903371.2794.3666048556150967462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e839184c5a0150833675e17bd5241b9a48778a701d323b994c14e52624913829
Date: Tue, 08 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788879033
