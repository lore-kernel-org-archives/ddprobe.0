Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7BC86340
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737963954; cv=none; b=V3+x/dYnb60D1YT+Z9Gx0TTru11bwOWnBAThAN3fbuATN5Eg3UGg/ZtWJvzz0YjLUQ4PXUTpLvUoywGLPRRoZ+IqWDwKlL5gNcj8ZuYPmNj3a2+G46YGJqWhaaLKFTyvZuy+VJeCmJ2ZsCXvkL3VanaOdr1OloWt7GwGxAQLPZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737963954; c=relaxed/simple;
	bh=P4raAja2oRWmXr9VBGr0kDvbzKDSdP8EDmrlBjLwGjc=;
	h=To:Subject:From:Message-Id:Date; b=hbxyU5VihkT9AZU3ApxjMZNXoJ3ggesnqYb+BkGAOJe+Qv9RQ9cCeinCguavYPC1gp5gDHLoJWX2ZAr4sfMuBoPAlrbQuqjmkeHEX840VBF2HnN4lR264xEOxmla/+dKpRw6JDHXV2BIzxGMttq0vkpboWnuP03e+W0kVB7NpXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzjZwBbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzjZwBbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB17BC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737963953;
	bh=P4raAja2oRWmXr9VBGr0kDvbzKDSdP8EDmrlBjLwGjc=;
	h=To:Subject:From:Date:From;
	b=PzjZwBbZP4/n+ltTr0jAJjVdvIkRLYy3CCuG4zq4PKi+M2Zu8wqv9gXFsdD+Dr7jU
	 +HWdEwbyoI2LnT5voroDR+dDPD3fswjKcqYVMNgs/b1/niDM7ToNg3sxvAzWTla5Cb
	 wuRdKSD1tz55ZMKlHTLd3zU27DTuOOTLLQn0ZWdCjcI4BY9pB8VZirU7HNCmbUEdRe
	 g941s4cMgLmBQ0pIl/31c3dauWuCi9EDLyu4+TkH44rzSVBq211VOvzLYh9G0CaplF
	 S2Qu8hBq5FwqjFzI4OEn5SoK5H1B13NzMklIip3bkVnBi4pc42PSKEkpRzKaDh+b1X
	 HOutgM2zsJq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E42C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796395362.2526.8094061375919853957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e273cfa9ec10cffaf37d630da9c79fa7b2f5fc6ad157ac9989b74595c99b35
Date: Mon, 27 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737963953
