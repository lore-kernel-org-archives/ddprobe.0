Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB1123B615
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770773634; cv=none; b=K7qh875GPZ1EpdxOlLN1sLX11cMpyBw4GHmIOAEj/r08MG70LUvxqUR5QnHMVLBYeRps5TuRMJHViep1C66VXotQYQ5VxbbduJhARhHCXqKxw6YWU5DTqD9hfFu04okWRhu9b5S9yrizfIhIqw+56DR6Mcxds7KpOfRCs8AQTEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770773634; c=relaxed/simple;
	bh=bSskiaPBEjF7u85wp0aP7D8yhDI3v0uoyM+o5NiSzRk=;
	h=To:Subject:From:Message-Id:Date; b=MEOgAHgBVlKb4ekfwsDF8XHK9+JMfGiJxka/yB6nD+kjScYfKGxfYuyEzwUE+FLWQqrElrHu/DcRJjbXC8Z/JLl2GJ4WiIbCReujbE2cxHpfqjhiDWcaTh0AWWj71kwdOZ0w/XzeC5K83kOBbQDQf4YvJaVfX/jsavl1oGtJV+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBocjU9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBocjU9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC4DC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770773633;
	bh=bSskiaPBEjF7u85wp0aP7D8yhDI3v0uoyM+o5NiSzRk=;
	h=To:Subject:From:Date:From;
	b=aBocjU9HZp2QwtH+095dkY/vuV2JP+O7RKRo+7kjkLiNDQjD5MnmnOwgSZWPzLT10
	 QB6hSolnjo0VKUFYzj6IBRnpc7dNLRlQi4/wXFseB23rFPMABOO+RzJ8sjNQaw1OSd
	 Ol+CVb3yFq6PMYi8kiCTRqCVSdMU/jUn7XUp/3AV2odw7bSeV83egz24/u73WP32Uw
	 ibyVKDbm7HeDzCrbUuMr21sfUy6TAFzMinqwvlISQrY9wzCvE8Y6JSJcbstbYzEkyB
	 wfkmdxyIlRxh7wo6yOrqprJa1jHAIsfiOOoyGhFfH7xDGraTbLRiZ7G7m2menDEAkA
	 dg9VC6X+MsRxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4480EB594A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077363365.25316.14045629217589411145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f75e45cfd540038f333fe47b316f38af21f11bb25b0f1fbc6107b231e886b80
Date: Wed, 11 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770773633
