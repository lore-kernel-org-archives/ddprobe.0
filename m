Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415C8139D0B
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725491754; cv=none; b=JTjmryjMGehdmp3jhl+9HH8Tro3uePMqBITdqbJyl1QT+18CHByboq+yXdBmOhTDaUjPAOhPZsjYrTraNslONV8GzApOKhfla1jjKvJ+srpNuZIEB09yR8s2jY7p1YXszaB8WJVAtSr/Ox2O/XBX0Aro+3JlgWV2Oy6rG9cLGdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725491754; c=relaxed/simple;
	bh=TyLCQigJ6CRgX9Qw3R62AeINh7b/SWOuHN2BEMLya8Q=;
	h=To:Subject:From:Message-Id:Date; b=u2RYikIRgLyaGCBJQb1OgbZtD51uI3Kr0238PqhCFz0uZDwp7+MJ7x14ML89vvm8kLtxlOQT7nbYaexphiMSRxuIjiwlQDKOQMtbcgksveUnZGwjCZLNGJ3t/TLIA0oPsPXlORLEyVH7m6cloT/XHrgVRAsE6fp0mW0Y6vF3NlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANURFle0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANURFle0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA56C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725491753;
	bh=TyLCQigJ6CRgX9Qw3R62AeINh7b/SWOuHN2BEMLya8Q=;
	h=To:Subject:From:Date:From;
	b=ANURFle0FvkX9XFSuatp2W5NuFeZgsA7zwyKlIo136GamlCSFQ/J9b9q/d3EdlHWq
	 PEcu0yutTiphwoL+wo5SpK0XYTLkprfISlIOG4JWkteJr7UpsNy6Btpk78AvvqzfM0
	 zrss8ZYVBe9aZBZ5Dor8B+sBfNZjObwTSglExUf6yesEh3WAtJFS4uKZC7AoqMxE9h
	 Sr8vTVAetgKR5P/rP9szh6FJx+2yDUWdlJZfGAv4/kCNMjpJHGp0bDcw/H2JgUOECA
	 46LpkO49+R/lsW7oWmaiAkdY7mGIZdK4irosocJcSHlhuY6k4IZJ4+Puy87Jb3EzgS
	 VD1gIAm7ZaS9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9570BCD4F4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172549175359.9751.12651271052645260495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad625d544106c6f64e63ce0f851a919b199063c24e6f0ad979798bc1aff4044b
Date: Wed, 04 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725491753
