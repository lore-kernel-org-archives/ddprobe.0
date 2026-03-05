Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B84730F52C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772693694; cv=none; b=ZvHxvcuJdjVuS3WZpBZwrJuaM5+6BqxuE5UrGfu/YLmhxSJluX2uHxvdg9jCveRImPoFq6JQ9/J0Acv7hSSwbnwb4rteN1+fE0WTguZwRdFM6hiNinch5x1NvjlGLgSLHIMbX6ma9J8Zj/6HjA5TXZCR6ssBKtl1r3s9jtxiwgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772693694; c=relaxed/simple;
	bh=Y6dEVWCTtOxoMQuBsfDQGLVeaORpY9i8ETEXZj0D/uY=;
	h=To:Subject:From:Message-Id:Date; b=Trf/8IUG96i+thJQxkSXP0KO7ljf/edalayFQ2AJ+CAVivpFrc61YsHWyYOJbdCy/neH33JUs6Y0cie56f1wM8HW01SuRrxuF9UX228j2BEGMi7uFHLgDMzBBRKJA0jPTBI1Ejy9qiMzpjYr1BWglmZ7VFqH4h6CMVeMWIXEQZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g637oqmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g637oqmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D76C2BCB1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772693693;
	bh=Y6dEVWCTtOxoMQuBsfDQGLVeaORpY9i8ETEXZj0D/uY=;
	h=To:Subject:From:Date:From;
	b=g637oqmy+nyuXKTtsw2aLpvhsRqPtMag+70gg1oPh6LXjNnaU9r8uC03z+znAR7Aj
	 ZOvnoLB8uau04ozgvLGfDpnmPdd3+tg3Ie02eAJrvahWkSxDsyD1RBn0rW7oT/ZuOO
	 G9+qS9L1iPOkc9OwFnORDAgbcyzJcFS2Msj05FffgQSXIUXkyNJ2Sfx1Nmjpko4vYm
	 QJkOrH90S8j34HELrZs05ivWTuKQoHKfCtMAozOtP0WmOv8qPZSKoKYLZ+PPC+zwqm
	 xG91sJLPJ3b69WenL5OczpFyMRB94KRDZjyXWpCiATe17jFTdod4ql8AEmL01jurYT
	 4I6dBD0nxCkyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92020EEF30E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269369359.23593.1194419028941021161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010c3786b368c394339c9ac8c72106796f783beedfd07e16ca2285fc91334fc1
Date: Thu, 05 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772693693
