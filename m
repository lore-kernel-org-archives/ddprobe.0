Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFE62F22
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749973794; cv=none; b=kEro0ok/BkkNQEzCc8smsiVSF0t11mLMB/5B/pI34Y+esi/oUUDJdmSfE7aPdZqJMc/nx9SF1hrYVIlo3r9cZgpjldD8VsaptroHO4rGQIhqx52iEJb2MtvVqu1SSA6kvoOPVEbMlTMEeJ51aNRON/QZZnxq+01i3IrSFqRRbx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749973794; c=relaxed/simple;
	bh=7lPYAMZuYsVetP7Gw1v1TERQ4hy/V9ykOeRM8Tp+x5c=;
	h=To:Subject:From:Message-Id:Date; b=ZhSzSSLk34ku8p2s3j82cIw3hIZq8D5+z36W3j48ySWbgLrwEt2PvYay6p1eOGyjPhxOgD5wgBU0MDfhbX23IP8/6qRZfVTtDFurTAaUuEwp+Gs0zyyMH4HulDQK0HIHk/nOW3GYLAHkiQKeqOb3SCJWlWfizVX9XT8rP9rzZYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAR2A2qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAR2A2qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD69C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749973793;
	bh=7lPYAMZuYsVetP7Gw1v1TERQ4hy/V9ykOeRM8Tp+x5c=;
	h=To:Subject:From:Date:From;
	b=sAR2A2qs+/TE64ydrOQI7B7R6MsB7GSQsDJfLb6dUZjHagBBfO1Kz+lP1/l2nPHCs
	 NXFLmqkD2PAG/tIX52OK5PPSacSGPrlwoxPxamJVMRD4Sk7yNmCRJ5AB5NsJdAyozW
	 SBK4qNPlpgQA0WHbTk7KjZiLuScFxxLW/gjJbWdHsJIRBqoRrFw7+y0mFDi+TAblN5
	 IMBKqW31RQiuP/b7XHXRQV4aKi4Qzg//H0c8yxw2HBuPajerH47z5dBLVZ4umtmVQI
	 2Vda5aQ03B9OPq77Zk7LONMwJSuCfUT6GfBARXMg6XWaVjzgVDu6RUn5PvlhVzoD44
	 nB9ZghAbMuKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998A1C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997379359.31277.9115711050802599397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16c7ced948088964064ca5ea1f762dc3fbd939c6788b03c480ff8eafd4ab179
Date: Sun, 15 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749973793
