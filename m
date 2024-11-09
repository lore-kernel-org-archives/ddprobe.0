Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7C11C27
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731117954; cv=none; b=FfqOQE97bgj84Xpj3A9a+NyxXItIQvY83aRsW3lZLiBECO5Y8elyeYkCUUsJKO6GHxmEmwR/eh60Emb/3NSeE+tg51t/v/mqls5NgAypmIhAoSrLHlpK9SbNHgSICKH3cZJ8L3IK4TyQNvMvyy6U8waWekCFwZ0ygjnRAgDsKBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731117954; c=relaxed/simple;
	bh=dNoJLzWe70y4a4qsq5iz62kcCKYOGK6Iy6hbTtsJ8Zc=;
	h=To:Subject:From:Message-Id:Date; b=UHpYCcNyiYBrPlfAp3WRQqBKfG0AELMxtMC/jxUE8L4g6g0yXKQHFjC6GAxbR4OXD946AZuB5LNurS7nf0Rk9E3HwyDaoET0PN9Va3+88lgm6ze8qFUX/4eOOVoiYPdOpWbg0MYta4TPJ8H9RPwgfozo2vRVFiOawmkJvB00KJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcm87ZfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcm87ZfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1369C4CED2
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731117953;
	bh=dNoJLzWe70y4a4qsq5iz62kcCKYOGK6Iy6hbTtsJ8Zc=;
	h=To:Subject:From:Date:From;
	b=dcm87ZfCJcloKhZaSkOUdOIG1BAuFGtOvg+X/s3DivHjgVH3yTbqpxG1h4FkH+Gji
	 7lyGLWLwSpyFt2xaMdfzYSlogvG/ga2pKqhv1hR1fYru9dQyMTV85EYydThkrtsiQS
	 0PgA2OiKRZXXo208FS+Q+kIBB4K3ecCsuKptgHYyxrZySmgaI8nd8cYlKeQjUEc+L+
	 AW9NWY7sZ6AKJkkiGsrNry45063wRaCboA1h+ee1aCh/D6Id4/LSH/bo3omO+dioEJ
	 XLNqI8ysjLagdPewzS70817B/tLByOxvwkRUUC6fSRatbAkiVADj+HMnSaF+evUmrQ
	 zcHbMbJ4D9fxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB5ED64099
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173111795363.29734.5110506078345980188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7476c3eee6969064b0e4bcb8b9b37e7cf9b178ab8ab160034d2f243d2f7eb6d1
Date: Sat, 09 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731117953
