Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFFC38911B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774322093; cv=none; b=Y2/MpaCZY/nfb2Z5PTOvuvwQN0Wo0u1PJmFcRJIarS/V30QrZ3nOenYzaLwQLgJM3r7XI3QdfQHUZyBOspwjjDvG/vY+G6L5Bp/3j9cx23tGqvswfls+EDf6o/mFH/SJ+GtEC44sf22K31Nzvjc6lYCtAca4HjRx34nnJ9947oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774322093; c=relaxed/simple;
	bh=PjrzFJLv5AFVi4tXUzGWr/zv2XrS2zOagOi/wHl/CFM=;
	h=To:Subject:From:Message-Id:Date; b=M4rVgDMJBluhMDpxKM4S58wA/rZq3MasrukAEeRxMoYZJdSzLonezN89hMwm/KHSaqJH9OcLJf83Gpom0L5XQhhI+uEsspMOSapUR/baL6vawyspIuLGem//u5FcEGXFLnAJCGrcMWO7P8ynKdoUyAxZz0lXWAa0NW/T5YcCDnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfLMEdo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfLMEdo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6556C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774322093;
	bh=PjrzFJLv5AFVi4tXUzGWr/zv2XrS2zOagOi/wHl/CFM=;
	h=To:Subject:From:Date:From;
	b=AfLMEdo54ssjEEBRrpQc8YHxx0ou7DGX50PjDRaB7jltNjbpebaTeDQ9xKXAR5U8c
	 Q18TsacveeQb+hIJXjHK6qJEVEVru4sWc5b0kC4gLwmZ3VP0rhAENCB8sxvduuv13u
	 5881f535Jy/EVHU7f/2l/wr+eviTUdQcNoQeo5ZGPTz/LWkP6bFjVzJxeKiUtmVY/w
	 GQqofj6cjJ+y2GC9JSrFKHKMk0mOQkInFq5IhslGytA8cG18CL04weqLNCL6zHbbhD
	 Jo1D0COz5RJhshJuml2kPgGHHP788tHuSG3MmMDQVGGcMFeJoq1e0iI+rrJJ4Nl7RN
	 bnkwST1zUnkHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C93F532CB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432209358.18345.6701633541698573546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec0cf97c9691ad4085ea99a0b5b7fef00d63e2fe8338637bfddba9f6317fed4
Date: Tue, 24 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774322093
