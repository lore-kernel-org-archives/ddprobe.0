Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE451C6FE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743524394; cv=none; b=A16mbAGAjK1VIbRgxeIuheZYSh6FDIK0mFXrc7JtJSe/dTIa83oGuAELgYzIMxVmsw/zbJS0clCuHx0dcdkQCXmTuZDwqFB89/xHbCePFXDDNwQ5EsFsYlVCI9r3I9iYE1+0a8hk9NKa8+soKGhezBK/6yXCjRjPFERM6TFUXio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743524394; c=relaxed/simple;
	bh=dFmhohFT9lVmi119Lp0Lr5q+yc9AVPTkIhB+81226v8=;
	h=To:Subject:From:Message-Id:Date; b=JmI1G8clVHRNrU6IR8Zr+pcotn2YtziLQgWeabUShmL//S2VEyWf/4CRslQucgY1tyfj5h48SL2McPPuozAR+SIuDOCBKwBaDpv5UV3n45xZUHaFhaZI4dnN5hGBtTayfC8PJ9E/yM6G3M88cov9e09xGADti+fOs/IfTX2HJwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFEyxAUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFEyxAUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC651C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743524393;
	bh=dFmhohFT9lVmi119Lp0Lr5q+yc9AVPTkIhB+81226v8=;
	h=To:Subject:From:Date:From;
	b=aFEyxAUp9njPcNRr37+ZgbsoLmhQ/Je7r+qxK6lxsTUeQufWvdB+V+gLfXDm4x2xK
	 wMUGPxMZlm2+L0XsUlN0YAm0huC4By4QFvvM8fD6gnSH8ZxLkr2ddn+UI0RRgGJuML
	 dfov62kC6WDSgLTZM577hWO34F0hq2budkV6tRl6zTxlcWczOKEC40UsvbQsBYrmY1
	 4tlYjuxQNVaT5qnsmG+BdY6yaEOtSTEnqwN8v+BBOlAbGrXjaGRr+CXE/lLvVmsIbG
	 TgAMnhDYGgF1aA77zkyLtFWslEE8pUATWqqbO+T9jLacqbMexCQJqLxHPtd9uvrQiz
	 Qbl4KVYvJ+MlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CAFC36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352439361.6170.1322195858480921703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb394053d00545b8c3ca94755da0357379314e11d32f34976c6ba858c2f18a58
Date: Tue, 01 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743524393
