Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357603E1CFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780337074; cv=none; b=BPlbrx7/c0Tyy3UWQA6+zyVO4LNoqC3v3e6y8KQd4ss1giHhmYUBSlaxIiDETR/yIqL7Gsh4vD7Wk/YGKM5/J8+EkSbyo1EhoYTbQAi013756CMbfdVuA+mBN78YK//o9HG5bpCk7bb0CSE07Ysl5d8TqCsfZPJXZic/esPtnn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780337074; c=relaxed/simple;
	bh=U9UODqpE9PE1fSPe/OZp688jscyLr6tMMXdQV+9tH/4=;
	h=To:Subject:From:Message-Id:Date; b=E+F9m5NVwdor0UtyMmUafOWdkCboaGoAn3VD5BXF6cMrmHHW/frR3KcJquOuBQXc/mnYbNQlDsk4Hsf2xAeWanRfDCzmOtT1RoYKvIi6LgnT5XmAe1UWDZJE3envHESUrFI4S78JVjlNDslj25AKdmsH5mj3cHfQZSWrEQwD134=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixZtABo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixZtABo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D464DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780337073;
	bh=U9UODqpE9PE1fSPe/OZp688jscyLr6tMMXdQV+9tH/4=;
	h=To:Subject:From:Date:From;
	b=ixZtABo1pOr2CphB4XzmHCSQRuYxg1+FwAyRx4r1nszoGpKZZlZbcFRMRu1VsGATn
	 KyFbR81CUnlyy0COp87n6CSeZDxb7kk5CbFKMdMI3gHDstocMGePVcZPS3XeGLtwz0
	 pnuKrqlRbO3CpV0WvA5uArngw1/IFH+dHCydOmOB8aozON/Xtbmegz7jXAva9y8Cck
	 E+se9mBM+xb0poI1RbDQTDzJ5rkBJlPLf088cfE9T5N8ysAtg8vKIbikDSChMry24O
	 kFW/Q32AtFvW6/E8hqrPvav6xstOM47xwGD6WDQt6c47G55hTTTx/g/nf/ADgxwCot
	 qjcypnZz117Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76D5CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033707373.22031.12902580524045343724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682bf52cd31eb0f11529b1333021de4c0b2999e35595767b3a25141646ba1080
Date: Mon, 01 Jun 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780337073
