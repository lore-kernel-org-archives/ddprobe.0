Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFEA4687
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720317983; cv=none; b=Jt9walOxn8Rl9ig2n1I4QalN+F5GLfKpgElzJ23A0amCVdS26Mm+1oOb+AukSgoGGSUvLMfjDdPnlFH7GMCCIFlW6w6N6qOBueyDtlpUhuMpC2JuqY/p9z+pdWND2/g6B4fm0SuXipMd7NHr/H04/BcI41sYT14zdT/3NhCKVRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720317983; c=relaxed/simple;
	bh=bdl7qBOPUdBOouEnNcUpHwMmqj5AExcJGmUnknCwL7o=;
	h=To:Subject:From:Message-Id:Date; b=bMcbIOl5Dqqn1olrd2SvF2Nu1iuXXZX3Te6LpcHxyE5h4upPP33kynuV5myKT0LKXIDGxWRdu57aT7BX57gJBub4re6OoVDVu7AfFKiGT0wtX0w1Z7eMiOLMLhPosQhM3OyoHbq8GQOI3+6Aa9ObBfjDdYuENisdmzpKkY2Cdl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0jjttYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0jjttYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D2EC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720317982;
	bh=bdl7qBOPUdBOouEnNcUpHwMmqj5AExcJGmUnknCwL7o=;
	h=To:Subject:From:Date:From;
	b=r0jjttYcxW2kgkOQbjBqwbXJH4jglu4O8VXZv8/GRtZTpYY++w4vMCaevJ+V1cMjR
	 aSAAwSJxvcwIz7aXP5cO3Q6l9dtrI978duqLQ468YuGaGaJbs6kSrhZd+yT9jE99fw
	 s7KL+Hw9zDN0PALaogeGlWKSTfQD0gilCAP4vggnwVF/U3UilSpeme+d1lQbTEgViz
	 HYTce1teUxb3TL0O3+jxJnFh5Pwa34zzUFoXSvmpeSsrxfWvfGeQQP0/uwEcBejHYM
	 KShgcGlipH056OH0tbT4Wi6lDEh3Ft40TOCAPH0A3xgXHKWVOs0UIJIkdQUUUSGJ2e
	 QSbe3lfvxjYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3A7C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031798280.12065.16138148027188478629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fc63affb998bfe95173deb602689d3f735d2a75e07624ac3d5403df3458d1c
Date: Sun, 07 Jul 2024 02:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720317982
