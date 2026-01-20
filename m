Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072B115E5BB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768869834; cv=none; b=N7qMqNTL6fBRPO/yo9RKbspz1WwJgSrpPmUK1scRcbmPJZVdAH08iUdM9113PqRA3lBI+26r3q3d7+PYGh7dNhgtYNc03YyOauOtPboHK9SeVqM1ZO0JsDsNIP9PUPmF+iH7BOUYsXWOw0nPE+IfYi3RirLBaSFbvoR9lfP5a6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768869834; c=relaxed/simple;
	bh=rNJ5sRdGmHOANMKzZAEH63O0nxJoR8owB6ANHftGDTY=;
	h=To:Subject:From:Message-Id:Date; b=WTAKc4ba+3OVZN00MUkMH5rTdWlq7qmsaMfFNbToudORNG4CsW3YrBcsj1kMkME/Ul5fP8LtYAZGZqQhR3WqbshekSNMPKIafeiBrbY5/n/sovwJ6ne5AokEqAxybeS4mvZAPgtxuBgKsdgO5/jzOghsH3OownaZ+JsKMi+jvtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F06dan4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F06dan4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E2BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768869833;
	bh=rNJ5sRdGmHOANMKzZAEH63O0nxJoR8owB6ANHftGDTY=;
	h=To:Subject:From:Date:From;
	b=F06dan4W4r/206CuOBQ/bQgCnJrQt1pXnrgG6sWuK0vXPDJXJ5XACQQSvN5kHL6KT
	 UW1YLnHK8VKGWW1rZ+adskV4VfGIZvcGz064L3Y4erelkHEzE7NbiQCxthmeXhAg36
	 E5NkQAQmHOoYA+v1bGC7QMD2ddUc7LA2Y3sIph06zBDiE+zFGjt9U0csEqGL49bMQ3
	 OdOWUtC4su9l32ABbapcYlyzKZcDJ/Y2Kt1fFY6G1HnaWm2QbDd90jokSNY06delWl
	 xQGG48p/9CUbvaQJgy+zqE3/l0AH1l70gB2lhHz8Csk2sMEmvd7vQKR7lvn4FSlQBl
	 Hy5nrseVjr2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96087D2ECF8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886983358.7703.625319568538773131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc8ca571684aba40d2fd698164adde277da652f40f3fe915d277c8781989a97
Date: Tue, 20 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768869833
