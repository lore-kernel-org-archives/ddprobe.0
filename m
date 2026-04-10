Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28573201278
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775825254; cv=none; b=ZGBOLPUOqRuO9xdZt/MFYnhY+H2X1lLsoWURtThNDnu3NpA/xsmWctJBJ1YSENeRtHBRiR8I72kDlqIhbaFsARKpXaF3TEIuzk5/fB+AutMFdWl2iaPwOpGLi6AaqdgHWHZrrc03IJtiAF6cfvcNaTyCzQ2LBJI6nok1VZ5hAXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775825254; c=relaxed/simple;
	bh=9bwNRTtFc9c0Mhy3ue7bcDVyIaM0AviPdyn50bxpyKY=;
	h=To:Subject:From:Message-Id:Date; b=pxFALvGRk+y0DVF0Xb56ae379RBqWO1VItUFb1Vp9e9IUwsAB9qNns4uUS9pE2uA+ruRtOiZihuDstYjfKJImcDrtb5vHdoSfpyxxC4o06AZEBGfgchevM3JPSGWkvs1flBt8twbKyb7hoIaTr8foFXMIZk0nbjVSqfMQpLwaXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRXH81Xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRXH81Xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9320C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775825253;
	bh=9bwNRTtFc9c0Mhy3ue7bcDVyIaM0AviPdyn50bxpyKY=;
	h=To:Subject:From:Date:From;
	b=aRXH81XnQkxbqYN+bmPHZPfc5sd+SMpKXC/UaQdJzx0KF1PvsChxk540fN3gsYuGE
	 jtcaMgEM0Bob7XetyzNwnoOAQH56EmL8J8Rh12QLhE9raPjfazGfZNDEzj+oNWuEal
	 Azoqrn9MmCjbEMG9eEtoFiifvRLyO44+eDr3pQqgOUgtJYLehkTO2McLjK+E7KsXYD
	 EZz+C1JXa//UYaExd0ChahPxzkKG+C4MISE+z7mf8Alli/XB1HlcNyFzoeXYOIG4vv
	 Lm9haQ78zuxtqN/Rj56SN7V9BAjFrWqkqnbPVcJ6EDrv+xucSskifCkAvIDnVqKkUa
	 uZxwCLejfhQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF8F44857
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582525368.30562.2116303062870767995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9278faed7ed9cc09edbcd5e3ff3754ab86d2cde6aed74c5657c4b845af0f6624
Date: Fri, 10 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775825253
