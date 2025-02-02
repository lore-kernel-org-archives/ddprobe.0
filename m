Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4006A39ACC
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738515354; cv=none; b=ZH/+SsR/Flkg/ojHRETwmPLg0ASKFS221m//KikXleN37oTgTS91yLpw2aOXj2BF5Dr63hBsd+mNh9Sk3/cHE7PfN6jQMPFFEFxgi0ARwKfvFrpLjcIZTDNz9ry0vx7YXel54uUqNkDdWLNBFop1+SSSGNE66P6ItAe/lKuSzfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738515354; c=relaxed/simple;
	bh=aexHgUw5IogaEBrJ6n/CkcaygLrFlPBW80hiUGfXGM4=;
	h=To:Subject:From:Message-Id:Date; b=LDg1o5GEq0NEeN1xPFJoRT4vIQyvjx6QywTE95HoXb2cmPJ2KnV3XFdcbcnZq0y/wf527o4Ob9ymzIJZ+U196vtTB2OFmf5rB15NluEIn0BvyN3Q6epR75SkET2Ud8eZr8Ua43xeoHq3LzvanpX4N2oOYg35uCKe97F2muNwaZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1uHGOt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1uHGOt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB893C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738515353;
	bh=aexHgUw5IogaEBrJ6n/CkcaygLrFlPBW80hiUGfXGM4=;
	h=To:Subject:From:Date:From;
	b=u1uHGOt8O8GYNqMXYh+/S2cLKzEiq9802UARKXCt02t1QW0A5JLMOayIxKGLbzI+7
	 +ZXUE2D8OXbyooAtzZhAbgNinKZMTMxt7V/X8zLrM3q7qVvgec7oZgDfV2il8Bc5DO
	 eCieodkydb3VCOgrhaC962B2W3mwlsXdjAa6WFZAdJMMCULKaxpTsvT/r1ioAg4okP
	 RoBPDxQUzmM8ZUGUqNXrRUtvnQsRlt9TNp5sFe3dDxLDTyU7Vu94BXUlk5KdEu1V/Y
	 piclwnfZjnYQh/w8tkGZvLbXa3d1hGxUfup4NT6WvcMiAEVDD1fDwkAzMtZl85XCrP
	 v75toH1BtX0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B5C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173851535358.8538.10565438407553133462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a448115e03874b8fe0680f6a443712a1f62a91d3de33e48b243b27d769d61e92
Date: Sun, 02 Feb 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738515353
