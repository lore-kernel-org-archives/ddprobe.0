Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C06438A72C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788490234; cv=none; b=Bwf1DZoj7OkZCSK8dssfDQerOEJ3mXQ56tnpzOmBHbt43kkCyV6igMNHHQN6z64IUua2LzwvMAYpQrQX1xiQrcAC05PSV7aFvnQ06+SMjAyp0z0Ut3QRfcZ5cyPAAorFXgK3z1HRyi/r5WnSQFcve/pwmp7L37dOYPi7ISYPSGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788490234; c=relaxed/simple;
	bh=yWfre4MJ7i7nGLN2X4nkPybQenr+Tfe3EH9uIdo7DSY=;
	h=To:Subject:From:Message-Id:Date; b=I4597jCufVExhEPczd2rovskdwzFouI0vHOsGTvX0jd6gw8WNU5HY4UxNyRR+yS75v5pArHBtTGHhDY+/amz7TJunbpVsGMocsfrjWtgOvuhxUPX1FoTeDffhPCR6SrgsXdfW+SmYVDKDSmU5DT5vEiKScZzuV00US7k+w3qhxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKho42/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKho42/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F8AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788490233;
	bh=yWfre4MJ7i7nGLN2X4nkPybQenr+Tfe3EH9uIdo7DSY=;
	h=To:Subject:From:Date:From;
	b=rKho42/3oOQdwrc/2fMj6Cabf59bK7ob/ouSMe+EtY2FEPMS5CMTN6tZpzLPSGPa9
	 aP0JIXXxLJx6GnMRutuy7ndbdJEZ7edkzjA/Jw53R3pIUjVzMhU10A2y9BP9mQr8eI
	 Scrs4FJjzb2STrBBTsrol6pCyHc8+vRReIoztsJFBP0fkSbHXbf3dUfygnQXMmZuoy
	 /v+FqhYAOWBzs8q5UP1PCihZ1CWZ0aMubbOJWRE99Y5Igp17XRzeEuAesINlZkeP2d
	 6TvqXrH/efnOsE9RzqInjztvL/jcz2bSiSNhlbbtn+D7higbKAwc3bN7TtcNq0Oq5v
	 WH2zy452SsVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC894C624DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849023369.1342.4730586390436689724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7f15b0224c998ceeac54b8baeb367909a6b4e2311a58f1e1cdb97fc3c89ee5
Date: Fri, 04 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788490233
