Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C66619AD45
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719240143; cv=none; b=UDRviGbvZJVgHrj1uTeSBOYMoFqkBfRK93HDSCOQtNZhjvahqVakf4OvE8RvGZ8/1FaFdSw00ola3hXSWMpUBOLewNWVTnve6NIHCgCcNhBB+re7WJ74z9L2jaykilyH0DdYPSVPv4svX3DiZ+k1DtDDbFziqsExLAx9K8lwKaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719240143; c=relaxed/simple;
	bh=1CCgc7CZZn0ifebIoi+WaSnF6HqoezAsIi27AXMRl40=;
	h=To:Subject:From:Message-Id:Date; b=iPDYbcDDK9+/S6oy3KRWvTnHMA13+Jud7puoyrmSdUrlZeTJGratFilEKTi8ncsbBKBM5jxujllpLHgzWH1vYNwiwuJQBGtW1dVPZhKURVR/Cwi+xTLmWlIBTfZvXi8ElbiTg0ic+34XiAkn+p5YKLC4J6du3H2Fh4FEN5eZzMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHsHZOT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHsHZOT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07905C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719240143;
	bh=1CCgc7CZZn0ifebIoi+WaSnF6HqoezAsIi27AXMRl40=;
	h=To:Subject:From:Date:From;
	b=oHsHZOT/Y5pJ/F2wSM/UWADw65mKSDNzv+wCHDr2tlA4o5M9eso/QwuS0ykHsw0Zy
	 BIA9CajHlDFC5GmmpGm99RdLuzIEndMflzPMCRKARN4WYaWedawHvRroOr9E1t8qa1
	 yxrsD6j7XPxAT4dpj0pZ0jfMfwaXvx7oHlLmsueSR2TXwk4MJ/02HTdCayJo7Kpl67
	 2u6eheNk8w4h+T1O3JjSCeziFCbXOpEL+VAYiZ4HKz1yYlG0GhwxHgygBkN+oNZ521
	 0ifYTQll1NOCtxZczmIdGcJ3FJkiNmjHQ09VlqsIlgsiK54fZcPkL6SILh4cEPgHbv
	 d/6YqwkuAyBhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E321CC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924014290.16882.15101207399838315718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35778156ceb15ff0354f41ce024e6e445815547f601c20e38668a1e107f766b9
Date: Mon, 24 Jun 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719240142
