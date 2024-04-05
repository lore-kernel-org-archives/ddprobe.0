Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F404B10949
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712283497; cv=none; b=lJfaRqVBaGO7/EvZDI+EiOANnh65BeIUgfqr1fy8HcAf42Ac6bWfkApSivBnUDoibboElwDZYUkne3Xw9BUMVR7/Vh2iSyj9VCHnUY4OnmDR3gKf3DOqdm6dVgpsiXGJldhImJWO00QJBDmycMgaeizc8GOwwKhLYrrPxqw0OkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712283497; c=relaxed/simple;
	bh=osg/BaqFoFOihyqSmAbS1olKOWrgiWM21DSWNe18BNE=;
	h=To:Subject:From:Message-Id:Date; b=o3D/awA5QAUp6Id8wObNBvrlJBZ8Jk12TJenmSQLzZRcPq9xh0g/g2HkYkMDYXU4CAPwc/9kI5wX/kk5+VrVMGt3hp+800dgMlaZoQyWQs6FQ9CjvP26NMlrzEqdHAAYdHpLXpoO8DkOYsOhMubo6DsPH5eR+MO+qyrrdKbPIh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccH6pPK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccH6pPK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA6FC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712283496;
	bh=osg/BaqFoFOihyqSmAbS1olKOWrgiWM21DSWNe18BNE=;
	h=To:Subject:From:Date:From;
	b=ccH6pPK5BHOkHuZx1HyW1LYdLo/H3Jop7ZiB9Qcg0GgRrzoe4hHZBvxDrCR+WHcTH
	 mAqCm8pny26XJbzy2NuDMlRrVbP345uojFN/adQ2Yn9aeyUd0GYdG+MVxF2yOgQ4aw
	 +SaEfz6XjCmlTSf74usFcwRmjeIG/tW3byWT+zVEf7norfIRMIZrUMsO0IZ5w8mjTG
	 /3WZXLQjcl/QDUan2qL54k/Z1zffnuGeNNMwPnAGHKJeGRjq9/vJKidjP/cpwtn1py
	 MpABhTfTe6IA2o5qohIoTwajkbxyuLMvfeeNSFe2F8NY3/6lS5LEF1f0ufYrYvzbn6
	 bmo39V1N+Y5fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D38CD1292
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171228349641.25347.5680114045829964233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb4cdb0a361984eb54168120214eca7a0e71c3ca23929b53432a65272078868
Date: Fri, 05 Apr 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712283496
