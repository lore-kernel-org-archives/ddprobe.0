Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5226E1361
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721522754; cv=none; b=gX5RswQrhMHgBo+FCbttMhx6NE/HDAc8/ibMOEUSSIZxmZTlE5y0ZUpn8WwGvlvR8lVoVY5QpSIAaZCrBWNsWzYVkJ6HRuMhwGW+ZQmTry/gGyG6qA3l6rtEJazOTd2XSXlYOreEYqCxpVcZ1/hddzVf+mX+m8yo18rRK6/GtvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721522754; c=relaxed/simple;
	bh=ZC9MeLFxPGj0EOGSn1N2dTYnLyW3ZvZpb1wuIa6VQZc=;
	h=To:Subject:From:Message-Id:Date; b=MWn12qPOz7bPCtdPhSgXexRTJxqob9c7aN1IXQQBwuwWNaa2B3E0jlvIq9jpPcRiivbHYwDaofZqLm3c3C45QbwKf2Rj3sfvUkLSwkUyGH5gUwRq5o0bZq89rjtro/0NyHY4xn8+te7oaYLP5xsNVvy9Gt6/f8a924n32xcWRno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQiKzUIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQiKzUIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4147C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721522753;
	bh=ZC9MeLFxPGj0EOGSn1N2dTYnLyW3ZvZpb1wuIa6VQZc=;
	h=To:Subject:From:Date:From;
	b=QQiKzUIOPk48JSUerp0O8r2j+Bn2+4vli8POvQ0FYYtgWsdXtzxtjFbUzhU+dnDPD
	 cGpTqTCVjZMjx9GCk2N/DvmbolLJDDqxm4bTUV9CL+V2NBNNtWUWCSDH0eFruFk/bI
	 b6Wqtlp36LHIM3BvNaXrIen+uayprEoaf/PM1aNaq+i04MlIp5y6bOmPnWom5kiYB+
	 xD71VHHFL3htvnDSUlAAUhW72Uwi2zdcDYm5nPt3/nmvCipcOKB8+/3yIpeGHIalSR
	 A7tAs4JKSosOEbCDQdtBOAsfK0snxfsVR6F42kllNFOgJlHa4KOAyNtj4PTWaK/hhw
	 B1+TuE2ToMBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B6AC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152275366.31388.12423092117725948684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e878080343962f00dea0809db0b5636f6d015534686dd8c9d34c8d31aefae14e
Date: Sun, 21 Jul 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721522753
