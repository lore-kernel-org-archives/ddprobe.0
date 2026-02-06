Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AA11BD035
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770377634; cv=none; b=aQoWBaMMF3cmNIiomUrwERjI0mneIgdJHFEQVkGiuM4pDRA3zY6f9LOdp4wQWTdUDeX2HUcHED5wrQjp+BkdZMqXug6R5p9d4wBbJFM/Lmi48tIXHoYs2W8rau5yhTw2owCsFkNucCufQBLUvpcmqFwKB8FCfTQBKI/KW4/JQHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770377634; c=relaxed/simple;
	bh=4bW6/xInrxkefF62R3SlZq9dQu8+vuVOOyfgV+4CwAU=;
	h=To:Subject:From:Message-Id:Date; b=X25QMdGnk6cDbayLnbSqIwLAO8jzPfM7l6/U2GcpUxjCxGmsVF/CldDaGdQlgpo5+DakjYClmSkzwOUtyUSlag5AYFqCuNqPIpUYIPq5k8ZmseehgQ6eDfUW9XnXc8QWobc0jqPRUTSWap05Pm5+dFdyDN/NmYyHCmZFkvNIO5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyGwlv34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyGwlv34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5713C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770377633;
	bh=4bW6/xInrxkefF62R3SlZq9dQu8+vuVOOyfgV+4CwAU=;
	h=To:Subject:From:Date:From;
	b=HyGwlv34cvwaUxPgAJw/kZS/JrS48KisE/xPDGMlqTSu+z++x99E+xBY3yAp+ROCA
	 nufj8zjrNfm1/aWuNya/m/1Qxrjqu9cnZo/qXgdRssXJKzMEN3swLFvHTjKoPnFfak
	 A43XuvAL1DPN41mqCIvcaC4oB75nAd7i1O522ElYirR4SjpLbEMSyJQTtTzNF60Sdn
	 u+HfuBfjCzO6lGKEmgcTBCAMU0VbB5L7mEsBCuiIBXdh+kgNbF2et5FGGDbo/Hrdg5
	 XUbrr2Pm73yvXBK2xSrD9NFRXN8ZUcp0bteK+Js90jpjeDtACWLU0JnujEsmBXHX+j
	 +S72//rtz72Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD7EE2084
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037763358.14805.630767943387157126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b24456b37a39b2de9986a70d06c4043e0bde620eb65af0ea8ca3c3c70b511b3
Date: Fri, 06 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770377633
