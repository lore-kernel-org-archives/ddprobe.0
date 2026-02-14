Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7644C3033EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771049694; cv=none; b=r8c3RBsCQpmSRDFWgPSQj76kl7EGWNRZmoj0A6yEnpnLCIBXT8pIwp9qovK4+Hq/jYGJm4WMsbWRBo8rX/cbzdzShwvioC3YZLweTPLWY94+/VbmxH6UFimzsJvQG0yPpJME08j1YPARE6Ykh17pPIkkNLV0cc4EXPFYiRnl6Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771049694; c=relaxed/simple;
	bh=qyfaQ+CNTNvq9CNbt8fPV/qIengu9RsDKGPwt+5vPRc=;
	h=To:Subject:From:Message-Id:Date; b=N2MRPifLJ1WFCCpcWazyCHFzHC1XflTmp/BdCL/0m5nhcrWa/IdVV7JDXwigOSS2fKu3XGZz9OKZHh9O9TGZO6T0e81BkEZ4WQ/D8k0XJUlrHKQ5F/5p3qmu6jv7fhmhGNb1SltJqc01Dyp96eccVZSBxVnKXJYmX1H4Iwo1wS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Esliz3bA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Esliz3bA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DDAC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771049693;
	bh=qyfaQ+CNTNvq9CNbt8fPV/qIengu9RsDKGPwt+5vPRc=;
	h=To:Subject:From:Date:From;
	b=Esliz3bAA4+SNmsGOvtUfyKrJO8aFqHqeI0RuFJyPcTn9XFFiF52VOGo2uEbRXKEN
	 9+xtcCSQ0N3sA/ZY11mUoyjRY3oayjSPrhQjBLMd2HH7Xe6vqsFhcQXRn+T99LBO9e
	 YXzh88oRmP+kb4hHTLcdYMwwrw3/aa+z8US0qzOq8tqn6Jqj/Lb6e+FY3blQTAJVJ7
	 BuWw8GoWgEx/WThN66qhBN5RljQMSG71bTOIFuc8kW+V8u2T95w2dHmTK72IqGbpm0
	 nr2HUYyMmyMQ+7CLZb4yppnKLc4YruVjUmtjixK8ySKNMKERbRWr7khhQICTf/98nO
	 UCd5A2y7GTA4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7620EDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104969363.26329.16159035526106546695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452e90599b430ab0aeaf246c6f2d41bbe77eaedf27b885ee76f95e6193b970ff
Date: Sat, 14 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771049693
