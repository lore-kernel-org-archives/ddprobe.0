Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C56345724
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787468434; cv=none; b=HEQxo7aLzLJk5nsyXCSmhjr/SaowOC1q8gF83HDUOv2sxSsk99N8zsoh9WZn4ImnK2ijArhpsu7aeo1t7+utMhYFjMPUqqdIPX4NTbqNce5f/6lBY7ktLAkImV205+00Coza+BPwFc9wrPzQNGZn2AzSSfca63ujcZY0ml7lfgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787468434; c=relaxed/simple;
	bh=U6ntGwS2LzyGPw+GIxYEtOalKUJKwexCyAL+Yj3WHd0=;
	h=To:Subject:From:Message-Id:Date; b=TScXILm1ovQdBQkH1nkuCRx2Z95YBNPE1gt6m+qMCR5mVgj5BpNuO8zRLTyPlOvHaWXhnDZtYzybR4O4VKSsJwZ3OH/DiYoFe5VEofYshC3QHcVKpmudLWRQxMp3smRH2iAxHmU9qz17joGNR7Q+TsDXNzIWUYQLpDVaNK3055M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXYGTR49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXYGTR49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0F9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787468433;
	bh=U6ntGwS2LzyGPw+GIxYEtOalKUJKwexCyAL+Yj3WHd0=;
	h=To:Subject:From:Date:From;
	b=QXYGTR49QzuTtvZ2hoS3KD6KO1J9pLlZmmD7SseOVNbJQQl1TEBVBb3RISvlfpgZs
	 vwPYqHTw98oFCFlgf05F8Y9AsidENjvA+1m+OZdge+nY2xygYWOeDqX1EE0zSxLQk2
	 q/mTNhUTCchr2d46JeWAwBKBH+CyIoFE9oLI+HypxCj9Y3EjxGY4LLO73i174CXFxv
	 id1h32TEjX6eyU+kvubPimUQ83RloL0Q1jEY7Nw86Mxj+Uq4f2GlDUsURWto9D2Pge
	 XpXjIKtQ/fQ7L/uqVBihMGbuT0gM23I3nwrJ1nIwKoIiOTsREyYGO5Jn8VXkUgWnb2
	 1O0vUlKqa7GtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3DFC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746843369.6799.86107520048054681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfb6aff45040d2a2077cc3b7e460fe9db1b84948a18b2ad53509f600060f6bc
Date: Sun, 23 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787468433
