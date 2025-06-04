Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2724A1FCFF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749020395; cv=none; b=UFLAEN7pcRbWx3xFQNCGnSMrVJOeCllKVIwvWpfvJhwAhSkdXmNVWN3nGJ+NzRH5TpCFVT+TH2GI4ySN6gGYE4B04lL20ntbp53b7motiUNjWg9GE0Zo0tGNryZLu0AFvr1ZINaqRITwApS8Uk6MerJEU+IijNxwvbl4HF95JyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749020395; c=relaxed/simple;
	bh=69tp08+bp6Q/I5u9p45me3F8lg8xAPLgCgpL6L/+WT8=;
	h=To:Subject:From:Message-Id:Date; b=QNjsqYdtNWn3nkus+ZfE07A3kZpFl5yIwCgoVmkn/NOgAaL6gcv0B5Q7Wxx6nsEhMzC5Io42Kbr63s89bDzBsNmDfzVhscWU6oOXqXBXP5i76nT/CEUOxW4mOINl3dMec309AEj+J8RTLPZhJWe5sN117wIyuBDSvzRjJUOqAc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2xHwtVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2xHwtVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E63C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749020393;
	bh=69tp08+bp6Q/I5u9p45me3F8lg8xAPLgCgpL6L/+WT8=;
	h=To:Subject:From:Date:From;
	b=h2xHwtVGLosddJ5z0Z4bmltYNzEw7sOMdoWZZBXs6u4seOdaC7/F+fuBnRn6P2mA6
	 p4C0DQrgHPo2zGaiY0Sj+iz0Ot0agJijoob7BajA7GTCLw1flMjETg/PYZM8E4DjSX
	 N2P2Ih8bMHaB8oVB3HrNp5sfwbrGvyOMxiDKr6agamHI71+8wAmwywzbiUPO7VIJUO
	 iBvLSnP3k1HUqKIl5nWSapf7qFxLcxp5ScMivCY/NTMY+l6hHXh2CTWtgo/eBoxsSn
	 GvKI4P8NJBf+rKaKxJ+/Z530Ge8LIAWixdVelVrtMaFnhS91UnEDo/g8TgVZStOsQB
	 qY0zg3BH/jFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF3C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902039358.31397.8303837975607307235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd1b6c8cdd8dcf79cdc461f2f6801d8b7bd40b958d2f8970a503c51e6764079
Date: Wed, 04 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749020393
