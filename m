Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106842261D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705514297; cv=none; b=H1u6LFDcZu50qOUMgppo6rTb2hP1hFN2HqWhAnxV2MNMRtyHUbhffPEKgCDxel9zAZ9ugjj2lnmekcLtkU1HXCzBpJEj+OUs6WXGKD8G5BGU9iOyMjLqHOuOe4o8GTKuHCnepNSmBt32jkLEbRegtLlFefj4SmO1f0i+y6pv1j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705514297; c=relaxed/simple;
	bh=478zBsj+zLSp+3xPtNbP/pSEIj1Ij1337MUDbZ9a1jM=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=ARF6ZKIr0oACQQyLTiiHdqV8iFURmIur01QMOubGYOZ0O1pbjHin2mHQtERc3lPR1LfrqYc2ZR+khRQsgAbV1KefS3d5X6V7vsExLW8uzj71a/tXoVGiiC8j0uFCQYc6n4+fiY7BFpfKO3x7MqMySvD6EPJr61qwHyGdGnEzve0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RszeJviB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RszeJviB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80267C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705514296;
	bh=478zBsj+zLSp+3xPtNbP/pSEIj1Ij1337MUDbZ9a1jM=;
	h=To:Subject:From:Date:From;
	b=RszeJviBx2uXVt4tQKTq/6xy70fdyWZPns7WK5YglscohCx/A1RHMYjCFsVol82v3
	 xtzI+tl9rMzncO2Vankyq7CjKntZiCpj9skr6GYN5pEhXBRCdg+ymu5/rwarhnnsNP
	 OGbItt0d4PtjNvF2gLtOwIHc+TBIULIT9IfElwC+PEisAJeZ3M9zLzdXFmgn/T3Cgk
	 jQ5HLyljrWn+Wiz6dgVxo6VaiC9/pe09YSLRwvpXzse35BcOSf4uq2Nz3qqHDSG90f
	 1KuYDntUPxEx7q6pErJi7gWpdTx6ncJol/rbb0XWuCbHZiDukuFHCicIQ+MTA/Ji8x
	 qSdDBZhFJk9GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6354AC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551429640.30645.1488617098838788545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6624a032a010c1e690123e8e14666a73152a415a88625f450875adfe7d68df94
Date: Wed, 17 Jan 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705514296
