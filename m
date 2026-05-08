Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC761474CC
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778272654; cv=none; b=Cb5dCWwwwPfQ8xZfQm7F10Gd5Rc4SIiYHrChgSmY/MNNBP+7JtJryHw3NrmIuBcPZiBUfqCFsu22G4cGVT4RKnw2I+4zLj4DMGldgg3xm0tz6m2djQoDz5ZiOR0So+CX8sBvN6Hhps6+ciZ1DQxMLgnL9Lxk/XENr38c9vBJRlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778272654; c=relaxed/simple;
	bh=j+op7Ng6o3aPgVu6dAwsOrZGD4mGIruAcmtBclmGgB8=;
	h=To:Subject:From:Message-Id:Date; b=HhiMsLVuP12v1d93ntqdygCACrQVVyuKmFJEvZ3GTsToDSivr9cLoDuGbWYWGKTw902DN3DKF5vqzcHvu2Yue0L2LIOmHBI/6hx7zv7Ho7uCmU5jV1gavhiQQoFgV75S8j8FGlZT1av0sqGTM87Cau7FXaB+lMNag+bBFrYKHuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XB1URkGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XB1URkGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00E4C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778272653;
	bh=j+op7Ng6o3aPgVu6dAwsOrZGD4mGIruAcmtBclmGgB8=;
	h=To:Subject:From:Date:From;
	b=XB1URkGO7i1fiebicMPyYoT4kF/7vHbBT6qmu6ei2W31uTyePR+kLSF9xvJ7ynKal
	 mWw3ixzLqMTb9LQiSJhmPk4jk9IHgEWfyRCpWYZpl3BSetvcR15xnNSCfAm55VDkl+
	 XUIjNXEltj2HCoYFQUPUFE+aGrbTX5vaICCPpu11A7oOo8FCBwNdRfxXQ7Xk5i3NAm
	 unRiE7GSEf9FsHjBcSStvOtCPzJxnejQqV9d4Ik2okwpFPY3dnrsj3vyGPrPC3pt05
	 1s5YxW04HBDn/R7SE0XYcevEQIiiK1XXKoGItwf0voJlx35hCwkzOUushBROGGUDis
	 VbjtnEyElH4Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05AECD37B2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827265371.3405.1373363288936146359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84c23fe18300b545eda3407179133675a5fa0e2ce8cd5ae8e5593275c02e462
Date: Fri, 08 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778272653
