Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A36390CB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776762454; cv=none; b=HwzEbWXy4C28K+5UQREnYk1hh/T3Sz8MtVDxQNujFLDbVe+azPAOBUQa/0uu9h2gl088QVdJrenhC8QXtFXi3CoSD1jfGSl9CFD1jKRLPoKPN7Q/em5p2BeEj9KWVrCZR97pIdGzrIHZYcsi/1GsTrJ/vAtBVcuwT5OpaoqEo+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776762454; c=relaxed/simple;
	bh=f6Cj1/nfTw7cLZ9RaZgwxuWWSsYejBe6jCDmQLoCU88=;
	h=To:Subject:From:Message-Id:Date; b=qlxB344DTPXRGngAMkcvLy/5saVMg2cUmpPQeHwe7kveYhFOsZTNmO6yibWFsFn1/xPSFy98anjMWwGcGCAR64RvMrecX8fwfH54BHik96pn4iW6F2eVHjmovH/6/4864gtcRtrnRnJS7iVnImxOXRgSiZSwNbD8Gm3xG+SUG6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdbumU8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdbumU8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2F7C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776762453;
	bh=f6Cj1/nfTw7cLZ9RaZgwxuWWSsYejBe6jCDmQLoCU88=;
	h=To:Subject:From:Date:From;
	b=EdbumU8EORhjLkrz5bcChzl6BFGhnHdoWkRLdc97hHF3n7mfIexG+78XNNWWu0B/A
	 SdavQSMDurr+SXQb1dzcgWdo/Bu+a7gD4ZgExp7Lchbl1LWRwFeCPxbZsnzlgZIwxu
	 aJPIHOw0+RzrJ9k7jV52QSPl4/X6enx1WxKuZ1hIfR5GnEaagJF61mVxx5gGsk0dg1
	 yV8ar1WZngfFjvuigodPZFLPNK9IfPiFhN/al2KY/npsWJiDghB32vvmR8XpXknt4R
	 7hp0WqHF1tnN8BR+nLeTZyAYak1cbkW1tFq58aTWdsAIPmr3V2HMe7TQhfBLJaG94l
	 Ysi3ghAIfWoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A975CF327C9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676245368.20057.14050221973318589329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32697bdd29658c2e3c222f96292781d5261042e031a8e7cc82e2042a2482d07f
Date: Tue, 21 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776762453
