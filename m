Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B96D2AD2B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768266834; cv=none; b=UmZc8Yrs8rzLbfMmCVHTJlPbKy3ildSS6GXP3r5PfkndneypHM7uopY0Bu+aTq5qmi54m3+BErPVqXHrce000UV3ArWP6wC2vCdd7GgfF8/vw9XMu108UUiTKirgkWISRy/5egItJR5ep96FivXqrpLhfeLp4nndqTfvmo7hb7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768266834; c=relaxed/simple;
	bh=D6N2TM4nsMDXVUZzLl6lHEaWEpO6ejF1JYdu+zAgpgU=;
	h=To:Subject:From:Message-Id:Date; b=Fdv+BqgoOxjTOCtruOUE8u4FkUy98zpQ7+v/I6677iH/ckutVICNR5l27t4ikL1R4L1tX5pZeswiRyvec4lictbnjBGER/hZP4lAWWgUezVoCHwkj3RRriYp3mhNfZbEkXPNOlDU4xxPcKl1ko+SdOcm9XqujAQnn7q3NhEeYyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/hYQJpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/hYQJpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A015BC116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768266833;
	bh=D6N2TM4nsMDXVUZzLl6lHEaWEpO6ejF1JYdu+zAgpgU=;
	h=To:Subject:From:Date:From;
	b=B/hYQJpH8bUabp9X5W8Avf0n3moMCh++rOGM/IOMQwoyrXeff7D7kpG1y93ug0yls
	 6WQLajHB3XCd2lf00U1MAQUNVSvwxehcH3HRuYn6PRIOKk4qY7aX/BGPVneFer5NYj
	 LPPoSCGCJ7Uvfbxmk2lrd0/RhChZXRAQaX9qx901cbNy1OHumACSIpFfEAv9f1pAwz
	 Wo3phb4hIrHVjZ6u55mlrA4QWRBerRdRCwfNxevCM4drTMi87b8sj636crhazATI8g
	 4stl4f+M633rl6eg+9tGp/IxrmyAb84nLLhj/AMOuDP1gyAYTH2zHZ6Q8705KcVeKC
	 BoOXOMv14fo/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F495CF45DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826683357.30373.15037858326505908018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d0ebdba98b3659209fd0ce1c114456a0ddaf375c1aacbf0a027d50c61eebfd
Date: Tue, 13 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768266833
