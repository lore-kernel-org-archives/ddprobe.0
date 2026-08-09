Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1AA2D837C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786275634; cv=none; b=WTPCi2xZpvf9skgd+CiYOqB91EJtjLWsM3NvytCPNNYAUFPDLt7WsGFpRat+Gws/hye5J/UqrQu5ymGyhlHWG8Uw0wGw3V/cRa6Q9jWUYLIT2silceq9A2mH1tV2sjQagSR+5sLlObmn0wsgmnebQipfd8FhmhGDzJvN//MLtKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786275634; c=relaxed/simple;
	bh=uKY0dPAajrTsXMLnOD098/3nky4pKLbw514l2w35KXQ=;
	h=To:Subject:From:Message-Id:Date; b=jBeSukX3GD3PV3dUB+GxJCrcZLPZC6G55Pn3ApGbYEob5pfpCQIHPd7Gf1ERVj+A/Z47llUsmsFdbHcBXoPQgbeiB2FsxK7Rk79JX5ThSSngigSMBrwv7hwu8iKe+7ZwoaDLMr5c2PzyGgOo9TGQ4kz3KrcJx0fSIa2T04Qe62A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZAzonrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZAzonrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C77C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786275633;
	bh=uKY0dPAajrTsXMLnOD098/3nky4pKLbw514l2w35KXQ=;
	h=To:Subject:From:Date:From;
	b=OZAzonrfjZna+jleh1VDXl4KTW6tTDFBOZtJzTddxCnDftBGw+icyz88UxfuTGq+w
	 QOB1zxesk2XDA1uBrfiW4t05/tg4gA1cK14sYeMDw/BUQM0UqlolYeIeUixPu24pA2
	 /sww9GslGtyKZNWEwfA2GPGxe8suz2VhjKZmoAneiRryZfRafM7GrpAMrPrIgeBRwC
	 XNLep6V0UVl7y87BMw6Qjw3NcoXqXGBh36/ZXS+K4kK+CJXcByyjxMmdYf9P0L+u4V
	 DY+c2vrAZCJo6/BBBdZsLkL99WxGehcIitsi9BsPH7AVPOsN2yRSO29UrAUnK+o3n4
	 QbY/54tWyNnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06A6C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627563368.28379.9171997462961424638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6abb45b00e9e748fe74fdcbe6fcb81ec56ab22857b171292b90651cd1e80cd3
Date: Sun, 09 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786275633
