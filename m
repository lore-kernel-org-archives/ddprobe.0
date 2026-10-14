Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3C535AC13
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791975034; cv=none; b=RhO+MZSTBP7Plsb7KwIqPi03c7hjGI7sUbUsa9yRya1ZhLzcApvhYBIDHH3nM5DIURnq7tLcAbs2XxRPdYSv9+VB9oKHNVZ5gFmLcjs8clgpAa4zzgsPn2vcdal1Rmb62Zvv4JRicoOv9/bDK33cOm+/W/BLdiYs/s0UWvwtLBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791975034; c=relaxed/simple;
	bh=v/u17SyH43/lQT052qBICuHZno+h7GEpKJwkZSLfXQw=;
	h=To:Subject:From:Message-Id:Date; b=tP+EQXj7/YHgA9fmHio39RSXWYPRlCtcnJfcK83wLWgQBFXQ8gA+RUsKP/z3BSI9fy6U6KFwKRS+fHQEeWQfMLbNtAGSlB7d94se1Zp/6pkpuXKStW2jYtCOoVjHmlAoZbZ17+yocvPJe1O0NJPXaob57vHM8Wdfm08+6tCMx38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu+viwS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu+viwS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB25C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791975033;
	bh=v/u17SyH43/lQT052qBICuHZno+h7GEpKJwkZSLfXQw=;
	h=To:Subject:From:Date:From;
	b=Gu+viwS5ZX4CPIsa/kwHB6iiwVnKuKYNY/xVyms3L0lbSim2zqevFG2PUlTR/4iJl
	 1duFIglttrc0uP7myckvs3TKH037cgaKL7zQMCbAApROnghgYqQ9w0wXIX6afeCA+B
	 q4Sl+bjmRHXHBf3/t3Tg8YlzRfgNZC0NgVY+/+dSdJiND4i36xhuQIphVRCzijcO+V
	 /2rpDgxxgGtjZ5aVWJN87cg2dB7O0e9ATaIHKHcSHI/nTHaNl0l5ib6HVNWl3fdbGz
	 88IR3hkI6jcW8LAyjmy/JGw6ooKz/s965vWovNN/5zpnb+U6NstaetGoEcv0mNOkkW
	 sfJIEQutKE6Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF5ACC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197503369.19334.6748737704508836793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02cdd0624a9b155dec79ccdda3175838c6bf947cd82a0292306db2fe8ea6912
Date: Wed, 14 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791975033
