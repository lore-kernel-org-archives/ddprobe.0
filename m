Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537E12C027F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787369434; cv=none; b=uQc40tpTQ/6vw6x2ZA+nMxkH321b7itgClOE3OVDjRKpUMHXWqnSiA+MqQuUVhm9HpyUQbkT4OeLJjsOPO84AzjHJ1sbMK0XkwZEsuywpErJ8HLw+bpdvCPKXWYf8p91Rb99XMUYnL5RV9YS0lrnP59Yb05DOGFewX222PUeCRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787369434; c=relaxed/simple;
	bh=c5uvhXEoXasSwzR0Y+LD5VI26PGkcgfXnCB+XrN+5xE=;
	h=To:Subject:From:Message-Id:Date; b=qxOiTDI3Qe3dbc65lX1cXrDkbLNxoPLOEdOVuyUGiqnJQEaYqCtr0WgRG19cEu1aO1+2j6sSSVBcpxRu6p3pa1D6GqCJ2ySB7QyG1mrzITE/ATa6tVIqxutjcU9ZrVQNKhs48oRfnMFvjW0uw80mf3UPCfGp7GQ+zCV+L6UWQPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSgSKc6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSgSKc6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD92C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787369433;
	bh=c5uvhXEoXasSwzR0Y+LD5VI26PGkcgfXnCB+XrN+5xE=;
	h=To:Subject:From:Date:From;
	b=kSgSKc6iJxxgVVrAqMwlahARGEqEP0nDtIfOzntDlqp0k8vU1J8sHxLjabDkLRerL
	 jGechdYp+pBnQDfTkcB6l+ha+t7SJJdOoY3G++v+KJlEFchCxVC9gHxPIxhRfbXnxC
	 qvQNgLvwaO3uiIJSqQj4QmjnYOwCmfyoYAU475ZNd/gjU2eLcRnn5rb6rHjkphwuZS
	 1h4nM+LwxEr15ZEGaXDokREC2aqfiyzGRzAPcRsaoy2jxynHnVnDa3ICkMiHl8a7gA
	 iM1sewWCaJNO97ll84UnKnjH4ZuTrtQYJQmwJ01JI8rlEOI92Mo9F4nL1pVEkMGLoT
	 HDbWcG+hLm8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38D2C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736943371.15479.12598943512526350047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdaa7336ff16b9106ab683a5faef0b9246a0f45b104a9f029f21e0e737071632
Date: Sat, 22 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787369433
