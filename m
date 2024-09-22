Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCE57E1
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727044554; cv=none; b=FonKX8KfjoYqXJ2BXUIAAjzpGDzR4dvEtZFvBMqt9yKu6qoCYIgEzF0q314pwl5gCJ94iaUMpnZ694EMBuK4S9+nAOThA6OTa0y4OdcHDxmUD/hy3qLKQQA8jpk2RhIPnlbiG76s8z9t7wIoeY+mlmYgPRCC83OFsgbSTnwLIx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727044554; c=relaxed/simple;
	bh=wWr2/SVn5TD025y1XffSSfGrnsK+LAmssID49OhesHo=;
	h=To:Subject:From:Message-Id:Date; b=TDRb7jqglJAqPsYWIiILA9scITXSu3ppSaAevj77wLxHV+0M/VAHUdBPOPdw1ERsfb45lKkmhNzQJ2sow2lrZnwvs0RT6HzxFg9IL/wDJ7pxqjrrk/XK5i3ZyI3WEYk5F77WXqjkH5j424CTtKhU00pk9yVmCamH0Zl5JeWZCqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NScdy4bW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NScdy4bW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D44C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727044553;
	bh=wWr2/SVn5TD025y1XffSSfGrnsK+LAmssID49OhesHo=;
	h=To:Subject:From:Date:From;
	b=NScdy4bWcXSyX74imfBjTlo8n/sz5kBq1aeBeFnF8GdHyi/6RwIWOikSK/vM3Nwio
	 802nO7t1cO+vH9Pj9cXlSdE7LHXvZNwrSFWoX3GTI7GCfcU0+RnveR2Y4ELlWcIL/7
	 s5PJSfDPjpYFbgWkg6zNEbbu27DFcB1DP1Ca7HVEhMinT8YH81/HpuiOnXvYWX2OGk
	 KtBCOdHwDvnQE6wJh+P8JAtxHE0MS1qsVgMsmOWG70278nSKRtjPJivCp1uwg3ng6e
	 rgFK2F/5Zo2dDrqJszGvFa5jzQCkvBAzvtigRc8LdWNO2EpLJ4aUC+5EPJ+R1JH5tV
	 MyubUe6pgCCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A200ECF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704455360.28526.4591655057948436138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a397fb6de2daed7153ae4418f56d0dc46e6fb7f099593e8ad8228bf10493d386
Date: Sun, 22 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727044553
