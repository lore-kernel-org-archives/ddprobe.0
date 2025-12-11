Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244A02836A4
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765461174; cv=none; b=SdVXlJbf1KSPgovIgMR+AQY6r3cuouNGhJcnPY44x1LFi2Kvdb6qAOZYRzbS60E7+z759nvIJis+uBML40ziOJDMR5exCk7TAXnWk/zGaYcK4EG6JDeXfyueK7T4yK15ewEz9dGs+JJN1MoHoxjb8srHcZRPOqo8K9rF1pInuJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765461174; c=relaxed/simple;
	bh=XtrVtNszV8pCT1ba7icisXok9fkuLEnw5FSWhXNeoVc=;
	h=To:Subject:From:Message-Id:Date; b=pRPsPfG6xpT9cEPBdklAVcteK2C9sWxxB1Ngt76G2RN948fwONkkqAf+rfxKpPZ2U/p1zzzpzcs/1uiq/z4B7nXFRzr0+PT0H8+7Rj+Wsa/RAkCE+nYSv1zhmlu7/Wj6C08mcr1Tc18bR9EHYkT+gO5NmcxTP1ARQOQQr2kezU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+nViDcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+nViDcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BEFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765461173;
	bh=XtrVtNszV8pCT1ba7icisXok9fkuLEnw5FSWhXNeoVc=;
	h=To:Subject:From:Date:From;
	b=R+nViDcrk4u3oN0tX6cl7RxOaO0Kc6Mu4OYPDzjhT7H2QrknqHNLSkz8lQi5bRI5e
	 z85vykOc3WQqLfLPjo/VOxYUuJNnNiR731/99B/CHoRnkq1KYiQNfrvIfXvEAwl0Ej
	 /+pH9J/Qt8Bs9mVpzN1Y0aUYYHtCObUQrFB9pXBkv2qnsgqYwcFoGomioojlKYYevd
	 Dlwn2+a+qhQU9j79geegUFQikU7mNGxUxwSLDLBaA7TiN+dPCUPqeacxvcMA//dTdG
	 njltnJrv863m0x1nMAWDOcNJtUwQeN7qnagmq9lH33sjFxnS8JIa8iohPUOu1Rj8vf
	 kpARK7tNynYHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0001D41C37
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546117364.5777.3264524267183096630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1396ec980eaefd8d4529448b9a01b87922f59be7cbeed0f2215d0cc0568058d
Date: Thu, 11 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765461173
