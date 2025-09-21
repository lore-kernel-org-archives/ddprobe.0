Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1313D78F4B
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758491994; cv=none; b=GS+l28GOuEEa5mJet68ApiR2WuE08XndDP+xda8dJ2BATNhK1cGObpbIWMiwjy6P0K53H4lqOSSGQO3Oo4OPX+u28bLCsA5YY09LFBqL4Aql+Dz4+akRjKpIv2/lviy6iMZbNbZ4VKzV9P1szhQUBJ2B4KLToAKlEAYaGhPfvXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758491994; c=relaxed/simple;
	bh=vf7OALYSgSp01UqiA5vc1WrMKaPK622Re0N6+bZNlfA=;
	h=To:Subject:From:Message-Id:Date; b=JWu5uH+oaePIMy8HQcHSaVt8AJQf2FvUMrltEHODUdw4hZ4JOQ6aMU6IYSKAXFWC7WYUcnFS7Yn8KXAn/GLW6ktex51N+Ww+hi9wsLr8O89D91XN6wcAPo4JsUFU6Uvkch2/1UBQL4CIf1kVOGSAljWM7rXe3d8vCiOfkCng8+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvHSGAa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvHSGAa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24E8C113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758491993;
	bh=vf7OALYSgSp01UqiA5vc1WrMKaPK622Re0N6+bZNlfA=;
	h=To:Subject:From:Date:From;
	b=kvHSGAa37tMnldBy1jEmbL3zTK3YgNRzCtCOnlo62qhhwFHvNgLxC5Oe1HycuLGJ8
	 3EH0ccJ5n7ShzCuCHY8R9Pf17Gep/ocHSN5uymtE4fWRx3/hxPukNBUEW2J3Os2b3E
	 f9r/HgQkOr7WtDlXt47YatazF0TFX+EfIP57/jSg9S1Gh17BWchS38W9maSoIazK43
	 1ALd10UvEhregk3qhAT/Evy4ntscRwzfXkJgwitWIHbmYfTWeh6QbD7REnRiFB1Of4
	 fhcZtMbMOj8a8+X+grJ0VW7u+6SP6O6PsB9LlL0w64KhcSXvQDkUkgOPAwArkUnSBM
	 qCXuBoo8HYNZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043ECAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849199358.26720.6304076269711675701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f898d0fe0e0e8855e4d4547561c58816cfe932c7c9befd8b0a67890f62dc5cf
Date: Sun, 21 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758491993
