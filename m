Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8023AEF45
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773070494; cv=none; b=XNhzzaXj8zB0BZuZo7f7xeHPnQmkvhG3dbtTi+33LJGs404HwsJWbVuiQk6tazcp1ACjj3Hmg6+fpANGfmDEUIy1iz2+E36LkBD/QdgYiqri08yKfFyLchJxB4kp819YAI2a6OKa6a+YxGM+KkFH7DonMADpJakZWTGKMW1rgDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773070494; c=relaxed/simple;
	bh=xA2TXjGFeE5U2uUT63WAXqO6VfKR4MB8zTc3gZyllTs=;
	h=To:Subject:From:Message-Id:Date; b=DPim9pjerWUftKc5j1oRmAdlstLXze0jSjv+jUsPHvnGwg+3DD+5DKBb0Xbmt7t38qua6ZNtMR6tO5Q8Kbjjz6eD/ac+a2A+5itbdXVw64/5iNGMqK37nsODiRJmgS7LOkoO1JPKD3Xz8u7fCur9gM5qFAbbmuljCScO+Bj7Xkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFmTAUta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFmTAUta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A004AC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773070493;
	bh=xA2TXjGFeE5U2uUT63WAXqO6VfKR4MB8zTc3gZyllTs=;
	h=To:Subject:From:Date:From;
	b=LFmTAUtaj9Jit32b7m7E6UmKyif25YF/SgHVD2XJqDr6tkfc3pTC/DIO+KnuzQKMJ
	 iZNFfmRJO6uS76c6eCtOewRKMNUGe8fHPcWVoCOgaAOSDwLIrYQde2Fz4RabWvi4xt
	 lIpV1JyUsUB3S04F/LFt19Kaa+U5PMTphqEvkdkLf3WStEWpHtEmfaAz9uxXJljO5V
	 N/RJmzRz6uxDK0cFQL67ma6RQSBcSjQ8qP0RGcyaKiOHPdamEmZmiHQ0KQN1+uwl8W
	 t+Df42Qc/ZDFVGWkWpceq9pTDnc72wcecQlXfy88f6/vRQNlZZJ/KJ+KHzTnY069U5
	 gT+roERY/C7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AFF41807
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307049357.23034.1688189831279240382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4490bd65e1f651ec6f1a9f66ec9f615637462912fad3c6e512bd32d9abd2dec6
Date: Mon, 09 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773070493
