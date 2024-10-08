Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F28E1E49E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728357354; cv=none; b=rg3u+bpxveoUNpeJDz0p4QqO0/5UrledsmObE4x/cHFgNtwtzmBgW67F33FsmDuBQLI/3yBlV+LlnbhrsaQ2JbvGkqaboRON5fO6ueZELitRDBFjab5KMpThI+Ik+pSrPPJ4yaIK9v9c0RmOARXK9HjWFm/aplvdXsPv7tgfRMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728357354; c=relaxed/simple;
	bh=JgKOL1m5wvJTfiL1do9Ow/6XUHruLpciG5IA3ORcaJM=;
	h=To:Subject:From:Message-Id:Date; b=MU2Nw9VoMZ4d04Nzrlw2Nh3VGsJxm7HFHyp6Hzhy1g61VPTLRKR8XHTB2acbny1xVLgSit2neqAp7b3ifMdfq24Uom+IQfsQrM/o7kB5iwK2WHhrFGANtidBuYk3OTsR8PNzF+WbYKMKZiDd7hQwukUjmZ8t9zgd15PmZmjCSNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGpFKlKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGpFKlKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFAC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728357353;
	bh=JgKOL1m5wvJTfiL1do9Ow/6XUHruLpciG5IA3ORcaJM=;
	h=To:Subject:From:Date:From;
	b=aGpFKlKKo99J14C5evPjQiGwKdx/ZPq/qSlj3uRSMMRcy0gz0e6p6P3LM4AhUq1u3
	 DzTo6ZnCX7+he5VDcXxODO/YCM0LXWEN0qpM7+vQoL/ANRC00w6P1FP9bLQSweOp5f
	 uCwaP+ExwJqnlMCGAJIqcl/rC9CvCHPWnYLO9bsdpLerhqsWuPSu4n8Ed/bA0O3bxH
	 3zl6BuL6b9Bsc8hfHbe2dpHV+eqO9OO+x/vwgt0SY+WWUJTmG+BhuRbrwN6IdeKYuZ
	 4rZZcXAKtw2fgdtmlxMmBAfS1z/VITyh6wGXwoD7NpFeSOLxiBgCGpVdJJOpTeGc9s
	 7UKh16b2sjMYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93444CED25D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835735359.27826.11315634357934864195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 080e48cb8acfa298c32f8bd685b540ca35a13bf61273f296f72efa9b18c7f744
Date: Tue, 08 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728357353
