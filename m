Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE211FC7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779337834; cv=none; b=rmeu2HwXthroW4rhUOra4mhQQq1BLeX8ePpNJtl7EcTEUddNyU8d+mlHj+QsAeyRu2/MJboNDm6bcrErtFavDUAFE5EjQrGtEdKI5YhmFX1RFVIub0JYtnyKv71PSsntQC60gkJQdOLNiCMAdZjfRzAQwVr+DAZ3c//Wqn/9a0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779337834; c=relaxed/simple;
	bh=1ZLHKjR3ZHlyRvSdPAqTwzN2k2EAiXYHeKu1bCwj1rk=;
	h=To:Subject:From:Message-Id:Date; b=WGLPSkVYpnx3N9Kvp0lrMZEFk4F3UTtjdamtRi4xad+v4JmV/t16CbqH9JBZJEfUpNXOf8hYRHFjyQqPZWJhyuye6PefguBrfZUhqutkY+Ob7XJFwIGVXCAfD+XsAb7Q7DBYtYAqqjWM/dHMMjBaM1HCRa/xW02aHUKqOCcvjW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTn+jwtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTn+jwtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D697AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779337833;
	bh=1ZLHKjR3ZHlyRvSdPAqTwzN2k2EAiXYHeKu1bCwj1rk=;
	h=To:Subject:From:Date:From;
	b=gTn+jwtNxEri61V1StS1NtzLInPvwKROzGNRTUYjINf55Y8/Gb/qrjbp9wxueyl6p
	 C3euIlC8xAFnvs5oOI3dYIrCE4yOG89QOihaREAEmf1zWqp5UNlg/aFvBZ+0MRRyow
	 HPvQ3hVNdojLzw0TcWapub65svLIpD/zznKKxwY4mNL80CXehPiL95SseITWbDYDKW
	 oOZMejkGtXGYb7t0ROzl790cVrxFU4YXVtdw84j+EcOePc7GejMaTKkg3/ZrT1OBxk
	 cJ/Xu08UASRuv8lW72zxT4ui4/x/S8n7fi5TvJ2y/pzqbFD1uSTL7D5vWUOmpMvoY8
	 Sll2/lXnx+0BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7943CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933783373.14003.5445346683836702780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2810caeb7e4d1f00c8368064a2e93fec9e3603430170a9949d98972599b8a5b3
Date: Thu, 21 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779337833
