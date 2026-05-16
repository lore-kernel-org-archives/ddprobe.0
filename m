Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9E12C21D9
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778903434; cv=none; b=bX7sdlWNacYJny6kUhTOkLqDxfQshmC5EdgsBeMMp0AA+BQP/i/mhuCX1wFfHlKUeSc8TskB2FHf6MbuCWTkOpHyxE6fbtkO7eXU8b+D/62YJ0ZbtG3Q815HhQaFE0v8Opn7YL/f95iUZkPB7IgnZn4g8cfx9bAtgVeS5wdhehE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778903434; c=relaxed/simple;
	bh=9Wbn8yeoMr4UBUDT2wHLuLXvIzzvzfwZKLolNqhDtyU=;
	h=To:Subject:From:Message-Id:Date; b=gKud6JqpIPZ5Insn0sv3shGvUfUmCxDPqiwl6PgcieLoq2Te54hj3JLMBqE7iSKDXv/LoxYWHpu69xGMb9bQCZmXvclam0T3IEo+NNLuGCj0LIikH3gG8Z/k3NutPJQrgKtlJbCJ2YeAJ53XjWhMkNDXqnLHPsAhXLfOnH26NiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vA7NGVwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vA7NGVwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B6FC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778903433;
	bh=9Wbn8yeoMr4UBUDT2wHLuLXvIzzvzfwZKLolNqhDtyU=;
	h=To:Subject:From:Date:From;
	b=vA7NGVwdNP0Qf9VoEd5M7tQz9zP1w5tSeZ+5wcTj0pZ//sP6u9lp6mQ/DspZ3Tv+g
	 tS0xWPMki37IhoYASS/YQnxsh30NLMiWRkqZ5xIMUTRmtMgrkMxkdVdjuGMHcEnKEa
	 qN88Xq+7KKFzthxla1ChiV79tXFV+5yIG65NbEc7KicnBJ/nRX9MFvl1dwJoibwCun
	 ESPIb61HXXrRzhn9ykGri7F799xfSaq/RJ07Ul/CmEHeC2Jk3w5pzwcDZXvdidVLWu
	 ke+OUbVeNB8dUXkAG16NjqTf4SyPHfS8+u2gsI08F17kKhDiO3aSTbJQPRoYkXl84P
	 uSvT1UupiDjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51DECD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890343370.7428.10445628489218503573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f2851ef0e9d230b6fd597cf6bfd601b73d9ded02f25a6f316b6b43a4dafc9f
Date: Sat, 16 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778903433
