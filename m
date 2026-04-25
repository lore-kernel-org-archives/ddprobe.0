Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C1581724
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777091254; cv=none; b=Eo4dxO/5X9kOMH+eNti+i6Q3h4Yza///avrm4onAlYj4XedWSPOf7Jrf1xhVgHSliXe61mD/7TATxy9BjkAZshfZGAtfwU6Nl9+bBic6Hur9GLdv/BswPYmWhAK9HSsEKMWIw7T1nXyLKwfQRWL3J2KXPd4P1nIZJOW9WFGBPCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777091254; c=relaxed/simple;
	bh=csG34fcmev/nAuBd5aSN/v4/H+ZYQRvv8rtxZYOrfWA=;
	h=To:Subject:From:Message-Id:Date; b=UDOIx+0PpY+AKJsPA/veWO0iLXWTQgyGHld7N9zD0CV/Fs32eyvRT2I2zHG9KL0lo9xPoSt7tJxeTKFK/N3yT+PbZ4k4/RG8FKIGeXsoAtLJBvFgE/9dioxODObQ1KdL31kV0CPB79NP5XGOvAW1aWRnaeGVBGTC0wAP1lLxZYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8m69oyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8m69oyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C23C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777091253;
	bh=csG34fcmev/nAuBd5aSN/v4/H+ZYQRvv8rtxZYOrfWA=;
	h=To:Subject:From:Date:From;
	b=U8m69oyw1j0Ve/tH3rxVbGaLUVeUKVCXo0zgQ5wmuHTvR1UUbmF/WVybd0eYsflSC
	 GxqJnNKdH7TSsDaZSoa02JlEJJz4Nxosc8zxejD4/Xim/BbqfXzZj/AuOSX3sVnJ09
	 wNMBOwXvpNXEa2Yi03xgMDU2lVdOCsdXUMgF3RqvTn8toW5R2TGRCKA40LPJfvWsmj
	 vC1tS3so8dq3FmSfo0Y4jxV7i9a26kRc3vjEWaQ8xeydqAZYZVjygFFJjSyc/Gwe3g
	 BqkjlwyInlv4S3jVyhLDumg+T2dXGhHDErQM0ZhjSp32hvQZJZDNErWdvu3d+SOFF0
	 r795wGkF5jDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9754FF8864
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709125374.15341.6532365431782245329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c21465b1afc3c9183c33d3cc547d5c3682c970210ed4061a44bb0c944bcd73
Date: Sat, 25 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777091253
