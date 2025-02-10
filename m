Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3C4204876
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 18:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739211354; cv=none; b=Gdav2TUrmiP2R9XdplhrGrYZ6yS7o3OHUZsCPb4ODblfYxzF69PLiIvBhwKeJZF5rc4dYFHSPdvW3McA07bqZ8Y23vXaX/L8JNWKQWj4lGB23FbpUbosCl2nGIx3IZXT4ICjzcorY4ARWWfg40HTSR0VdzTrxrAAT7bh93RFns0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739211354; c=relaxed/simple;
	bh=BK8cDnt42sWHEhC/b/lVrgHU0q7YJRSRzqZaD83OkpU=;
	h=To:Subject:From:Message-Id:Date; b=mGirXkvnx3LaG5SOlGjjV5WHZh8usHouhe/w8WHxa25eaZUXCrporTo+Fv3OJed68ufFp+zkCuOv2/5vAKLn4UH9JpwOChdzkuLErs8OHiaXZ+gdBuFlUTaRZyLMTjlvlI/dwg4Txuj38g69MIRU9VPz/rIoG2F2SkWjfOdFpEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWdIe1WH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWdIe1WH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E012C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 18:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739211354;
	bh=BK8cDnt42sWHEhC/b/lVrgHU0q7YJRSRzqZaD83OkpU=;
	h=To:Subject:From:Date:From;
	b=OWdIe1WHWBGjyEHtEj7u783Rrd4QijM0F28BRwM2Lac8VwiPkJVO59tH5/2NohdI6
	 YmvOgN6vZpsVej8j7HxT0CKxT33x3JxwtdNLiG99e4rw+wUnJCbWfiM6wS90dE2/7T
	 7+aQQxsXFnp54iv7lrbTsb0lKRpBvzVM8MrlV+nKSJQ3YKQZWDdGKIsnJ1Vy/gp+Ag
	 xILDccXrmf+kn3IJCtpBEwTs2W3LRtZX5Mp3mCqDxOkEuXxbH3EL8sHEji5wUn6j22
	 YXZXlXS2/K5Rp8nDgTB6HZgeOILsstD25V4WDvIJEhlN7I2nBDF+MuJplBBQpnUXOb
	 SkhPNkbk12Eiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE955C0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173921135376.15920.11536983999970104938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4137f149be8a4dce275f5278730e242e9be79a4d950873d7278fcf3aed3cd924
Date: Mon, 10 Feb 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739211353
