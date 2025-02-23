Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64958146D59
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740343135; cv=none; b=mK2Tp7jatj30p6uG/zWB1eLLS3GvHwatLQOIo9HxRciiMT318r9lmhcjf+wgCrvX9hak0cIMOBXh4j88O+X0X3pRzLOKV1anXKm4qfzUiUGNPOMe0lQXmp9Zml+BidbcP92oOGxZcMe410eh+zAxVxvcyZRZ5skGpgZ5F2gF2jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740343135; c=relaxed/simple;
	bh=nZNeTx6UaGuXHO7tcq+RjtDT8TgHSCA7xebnsCpKnvg=;
	h=To:Subject:From:Message-Id:Date; b=TQzLtR5QJZbuSbJxuF6y1cDqPn5Ney2rv9adC4YhoHUEwtfx/DlcCO1yvoJ4wp08SgOFH6KIemWoSrheMmr+a30lGIr1aS8J9c6VlUB6rHtj2Rx85DGEnYGrScwe3FAKnR+4GDNZfyC4F2LfI8ckewVtiUr8xS0ssQsAk4ypm18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzPr8r8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzPr8r8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A96C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740343133;
	bh=nZNeTx6UaGuXHO7tcq+RjtDT8TgHSCA7xebnsCpKnvg=;
	h=To:Subject:From:Date:From;
	b=GzPr8r8ijMjkCGgLI6M8EIve+lZ5TQ0mJx7sFDQW1QhRzgfm4ODutvgSyMM71syvr
	 rixyC0IYWHBXvurDAoEVm0dPwnDF+dgqjsyf6cubUe7lRXx14N9j18OJIIesvBYLnh
	 tIvIJSuLL9LuuOqeSOaSJmbANu6T8yvOxeUATzBIMA0yPn3zl8Pa77PZ1mudwKNOwk
	 2JInlq4Q1NZ5QwAN9SWrbX3BOJ75uKaJhC5dOJvY1EmeW8Awfpv8o79u8F1bCBJ9Ei
	 MADotYtOK8AKKrIkmkUidYu5YpQ0AAmt+C6I1ss/PyBwX2d08bmMbAprNEUQYToj9o
	 MlWU+OKiNwUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B379CC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174034313368.17907.13255968740158955856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430337a4333570edb2cd2c0cf7410e4c7fdc91c7821caa02606fe42ca8e65c21
Date: Sun, 23 Feb 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740343133
