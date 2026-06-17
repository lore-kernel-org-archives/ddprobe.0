Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1C648BD3D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781711794; cv=none; b=ZFI7hozVVfWxho7MEGUUJ9CVxsLbj0dYNKnaEJBRFhHuieBE881/DtTOxWquKOu6McTx/A/aETqAHvB7oxetU10UcDdjKYVwXRj7oc2T0HiGexKMnVlJjW81DlwL0dcneR+BletUx/qnrOxZcU0/bLzTr9776lWaMuMgx06/nog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781711794; c=relaxed/simple;
	bh=WflKHhhudYmFn7U81h6LpdJA+U/lHT4czkkCOFRM5ZE=;
	h=To:Subject:From:Message-Id:Date; b=kK4a8F18QYdl5Lvy/L1h+4IHBfj2AHDxP7XJv7UBjt6Fgn/MgML2BNnNoa6VjMDAiKQi0keV/qeIQon945ObuSNveGwHiEIBR8hw5M+AsdpadzdAGET/lFIhfpGChleI8gCvCqAh1V1l+fddsCARbPoxNvCjLja+rbuhHfRC17M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ers86pPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ers86pPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA99CC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781711793;
	bh=WflKHhhudYmFn7U81h6LpdJA+U/lHT4czkkCOFRM5ZE=;
	h=To:Subject:From:Date:From;
	b=ers86pPGtRN6z58KSid9WsPGSc1jU153U/VuZLGtZ1Vr7xSwmLT7FGlzOxUUo1yow
	 MlD4d4jV0cZXe/LxQ67Y2BM7kt3++YBUummG6D+BetR15nP10AgYDyGJlwmJ+M0Zmo
	 nygaJfp1eWLCXeYHaozs7e91CJs/uq5TwGHgMrLQktGoWQLODC6hNsrlLZGwm6hW4Z
	 NRWh2pl7DGWUJJ5GmUOCwyCEy90ccj34h1nShV4YPkpXYA/7ZDxMmt6eSRA34Tr7b0
	 ymTOLVb14EkseLOckdCSq/O9KnQcfVwBVqQq9IzqjKWO7mpNRZHjNZpvrMda6nHUxx
	 9HYiDlgI2RuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72C9CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171179373.21339.5697775645894119960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731e3e8faa33ed10d0b7454cacbc0bc51d22c7552a950bdd6e41aa2318469c27
Date: Wed, 17 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781711793
