Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528842DCBF8
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748750994; cv=none; b=DMZ5ToM6v4/5KFE8OBi2D9T5s/b+MQ9NJihbjkxvDSiObo/Z3PUcXuBjpIrRQPA+2wViskMdAtZIK726DPoaCTgNwW/CGq5laV9HQRwQzjIL5KCAbzuLBfCf95pcSzi86JYSxWlK+rkBJjjwydyNliTAIR3OLYg4wCjDW71qDLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748750994; c=relaxed/simple;
	bh=SA+h8fRjs1QmeUoiCUPF8WFiIrph8RDzAkNjDlvkY50=;
	h=To:Subject:From:Message-Id:Date; b=ukuM4urSOFIdGFgsM/mPyJFtjYKc2j3WU3dGf5IAFB/PiNH8MawewBmmSKyYZinP8DuJ/lN7LqpD7M5yRm3jLSA3WuU/Kd75gk7NI+zfkBEGHuBPhYEsvZVYsxGUr7cfWg8YPWi3LOwtpH2V8CiNmpYSyNYtWy9Q8N2ML14FpG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctTSPle2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctTSPle2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1A2C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748750993;
	bh=SA+h8fRjs1QmeUoiCUPF8WFiIrph8RDzAkNjDlvkY50=;
	h=To:Subject:From:Date:From;
	b=ctTSPle2PTf9sRVGl4fUzub/hjL1/L+PSXDkv2DDAo1IR1iq6gaY70VSCzg26LAyH
	 c5Rfe+5MKw4mHMBZJLQW+485+Z4nP+UDb5pgvUFKzfjlpINrNmPuHb35ear6d+SQV0
	 6fJWTLnhq41hbk4r7H/bcxkB+uSXZVQoCNWe5y+SASyPrD6rdPSP8ZYiw6Xf6x5/fP
	 /yaZBOmOI2Noyez5nuCS9geB+8dtMgLEwR+n0p4NqaEPMvZpbcQWJzKE1Gsxi1yKF4
	 YJfndb7N+FVmy664dQUAotoIfVM8sy/yPkevruflNm5I/SMnvO8vqIORP8bazix3/0
	 wd76Gj9yIyRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EE5C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875099358.25556.14379230216927061137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a401b1781753ba88cf2fdf6429a10eb1159f5552817cd353a147577c09c7fcb
Date: Sun, 01 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748750993
