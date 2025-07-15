Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E64238C1B
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752572994; cv=none; b=jITRgJeJ7mw0sejgNJmDYzwPYTeQKG+X+R6aJngAOqMf6k2aR7xp1Y3p7miNnOS9Kyfj83esCKYJypWct83ALsh+/I0qnl4BepociU6ocyvqjKQ48iySVtxkP0MwV17fVDOtNYFq4HY/EY1uC6/C2puqoAlgIgGipScEGupF8HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752572994; c=relaxed/simple;
	bh=4ogOnZrMpnSg6zl8wswMi+8hsiQyCfmr2B4f195gCsc=;
	h=To:Subject:From:Message-Id:Date; b=Xn85PIV7x03ovD6wN7hqqJ7vwCBBnwSRn6+823TDnFsQQfzgu/+77fTZWOQ18e036K+Ypyt8K/ds5KMw5zUZ2BFDT4OHdvHTaPPBrKnv9HJiOk7EVlB68fX+zJQ6sUlutMOd0yKMgZ/5xjASrK5s1/CElV+BOjRljsM89j3z8rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcWnjJ0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcWnjJ0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752572993;
	bh=4ogOnZrMpnSg6zl8wswMi+8hsiQyCfmr2B4f195gCsc=;
	h=To:Subject:From:Date:From;
	b=BcWnjJ0MCImmAVwAkvOLSq5sjn86HgibdmAYXHdiPx1FBAU7T5eYLJFN8nzF7tTev
	 RzTL7mLpgRqfL9RyOCM1LCI6PT+CrVN6q5F0S074F7s7FY/v/eNLSPYexvLShCqLmi
	 Da8YiBh2DvWHl0Lcn61MK05RDsoEe2/aGXrKI5MckPSnXmxwV7nvOL7cYwUlOwGiKy
	 OEUrT9iT5wNmJHLyMgwqAPeB8gu9PwIPem5Eba+Cacqh9RvXa04XM4Yt6QlcNk3/52
	 aB573fH52x9cjKzEpmS1npqQgUw5uCMzxORqc76PEzY0beHZRB9PbcpAcXYc6hVahH
	 USKQlLBurnD2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7AC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257299357.25716.18338848646501650373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ab073b7ff18c91024e4f026d1583ceeeba8cde12d2c3be03f8d291008eab94
Date: Tue, 15 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752572993
