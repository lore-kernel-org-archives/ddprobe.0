Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227831E1E1C
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763934114; cv=none; b=C3NUhCekETdlm7cmK+5jEMCEqP/NwW7ZfkycsRsHXDRGBK8uUjHimcjmwg/gWSfUYZmUzXvCn8n2gBukuKbdSZu4q9VPhdb0azBu0djAPUGtk3khfNW4vDpny/m5LCkFRz8l+Gp+Z/FvMQkIZ0uUZ0t11N5x93FvNRaoo/qRAWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763934114; c=relaxed/simple;
	bh=1LE9XkIezUeAOfR4gwTiK+eU9pbH4YJ6ygiDIgNBpbA=;
	h=To:Subject:From:Message-Id:Date; b=QQPaG0wHKh2bvvx/kxdY3+M52EbJDvdUIRuV16WIcfp7mOdqnQ+Q9i3FTdq37s6fePEt1CExASj/TdtRtlTkV3nv7KLIRR5heiYKuJLZHBn3tb5IIOn+0Q8VFSdoBoEG7844ArGwdki5fwfcm52+Ae6MH3Qss8ZStAI4kLaySFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIofKiYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIofKiYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE07CC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763934113;
	bh=1LE9XkIezUeAOfR4gwTiK+eU9pbH4YJ6ygiDIgNBpbA=;
	h=To:Subject:From:Date:From;
	b=AIofKiYjBgKEbb4YZMb2cDVvpcRHi141+sv6/f8ZYCi1Spm0FK2vWjL/DoByMdptS
	 3DL4iM4q0fEyF8T/s4DeaU02sMtdRMpsAKTjV8IlglhrDV/yZqWLjqq+Ek144DtuBx
	 Y+pVjX9WMTU3b77fGRjn5P1MUkzE/HeyqOC7qIQq8s1B8+kKnJo+H6dl+HLADlHSzH
	 kl4819oXFCLb5vWDKwqMY66hQIG+EolcDzXE5cIbl+0m1KbktWdxKIBj2SJtKtgoCz
	 c8jTQv51F70ni64X9RjYap5nYxff1OmGzq/p4Zp24IMtKXdou7mPnWroOVAxg6yaDP
	 LjvhgzVp9onNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A05CFD318
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393411359.17429.17542483317541154576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e462e676e98efa8df8fc65c56e335d6ce31dfb2cffb23844510d2ca61a2386
Date: Sun, 23 Nov 2025 21:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763934113
