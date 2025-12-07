Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9862E65D
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765120975; cv=none; b=XFelELpTg2uJCzY3NAJ1j4LQseU+uWu46qcwvujZXXMHeHuIFzWfSSDqe5BSZ6RZUEE91KnWIrLW5utUMO+K6GilBaY++xcR1UUOPcBzS2zJ2Ean/fKvesz2nomXNn3NnGOAVuK3grjqcwpPnuqfdQBVpuX+VvI0MajFQfSxguU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765120975; c=relaxed/simple;
	bh=kidD3cwogM9DP7lMZ3hMNRRxcbHd7YibfwkOPcbt7VQ=;
	h=To:Subject:From:Message-Id:Date; b=UdzNMfg0yhWIzN5/VsYdGu+7xVst1ZCDpt9BwcD/NdBupG4PBddHDdyG+1/MCkcBrXE/1QHVUCXB2CCyN80BiUueVXZnI3KCliRMtGwWmktWOVgughOUwmmwNB3oUE2YXXtCxj4i9hP3PrzJx9EamRDzOZMwCyVaWpMiETkhRck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNTYPJ2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNTYPJ2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4B2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765120973;
	bh=kidD3cwogM9DP7lMZ3hMNRRxcbHd7YibfwkOPcbt7VQ=;
	h=To:Subject:From:Date:From;
	b=vNTYPJ2YVTGkSRrxlQsNDIlE3VKN8xNUugimLjpoTkhyhKZkmaQmlH3g+Fh1xWBi7
	 sJqrj6uIAIdBhfA2sXk1ayNI6MfAWjBrhUQRh/SM7+kmBWWQyes2PsMjMh7to8Rhu7
	 Q9ucr73p8owJVrGS7Jz3QnU8G15t4tt+P03zTCjV3vzdKHjmNGT84x/tjeiVvPWW3k
	 XHVdbyR5vagbcO+htwqDr6FbMNtbaivxR+nzukRTcAWsOM09ZUVGbHNBMUL+kvOKkg
	 CA0vYdMfSgBnSTcGsYwNwDKAEcA7gtJ/VGoZmYh0hKXH8zbIq5fUsarzKnHFw2/yWZ
	 eiCaeZVVnE5gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99552D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512097358.13405.3312733213239697130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb2496fe924b4830c04189303a4ffb6ba7e260fcd038271e3a1a6bffbabb071
Date: Sun, 07 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765120973
