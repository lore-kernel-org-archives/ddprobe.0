Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BC17081F
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745833194; cv=none; b=P+5mq/X1QYu6vyZS/6fbJl143lwgnk82qvMwG2yKrUozyMMWxKf2CdgPkpHUQ+WfDUVcSbW6MOLFKuC7zfzukd+PJh3EYPsMt0H2W/tVlHeUz/pBCUAsSwrp3/6E+MVaFUBOsicAd6L8xZIWHrUv2eIY2xe426Ldq7YYgu/4zC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745833194; c=relaxed/simple;
	bh=71EVCLQ0WZa2kCEK/Ycmn/8HpAbbKlSb8jJtxYhPw0Y=;
	h=To:Subject:From:Message-Id:Date; b=km2lrEhGWetYmY+q6pxCtL9rpNRL5tVPRXZrtmL/CJlqvkoMIO6n6hbyKOdu6bec0ly2wzlkaM3Memf9aY6xxCI3dqoNAxKYNvT4rbXoOV46xBmuTaMU3XdenbIZ9VbSAqI+AB13OsaP7RP9PXbkQpObBgzkUjmx1L/+/Gae5bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF4XeeFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF4XeeFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB43C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745833193;
	bh=71EVCLQ0WZa2kCEK/Ycmn/8HpAbbKlSb8jJtxYhPw0Y=;
	h=To:Subject:From:Date:From;
	b=PF4XeeFw+uu1CegiMacO2EUZQkJPwPOtuYoI3djR0GzsXdD4wlmEzCHOpV1Dn15jb
	 ClR2/Bmkh4A4griUba4YoIrRpOwqV3zpA9VYc0KPJMrI9yTklQDC7ZHMuYRH1hmyNF
	 BOY2cm/uEUD3Ug29CILPkP9HxANlrIVzOrCSDhYusCMBeOkPXSI0JlcA81S0r+1bHZ
	 JgXvNLknGr94IRjL9A3IopIqYV2t2HwlL64h07kQpJ6nH7v92nunLmJQXfyXvWQpWj
	 AQx/D4WCmAqspnBRtyK71BowSZ4vPvLKh2C/XEbYM/+017TvEhXD0hwLjfgwNaL8IZ
	 qQ7Ic5Fv5rX1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F015C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583319357.11579.3924994698096364888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963d9362ef337cec5fe36e99d78ab85460d8a34cda3fafc1257de06e32d1b4fa
Date: Mon, 28 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745833193
