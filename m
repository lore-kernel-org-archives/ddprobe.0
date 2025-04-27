Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4823AD
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745765995; cv=none; b=SUqK6Y9ZCrJXgInfH9Z3/or51AnZsTGTWk6iIJeZjg0CdBP3rw0X6/6r/n/kOIaEhrNztmMQhKfUS+Zl0t2gW0qfzia7k/rX9AyklpqklHlkrJjmrGtdR1hbs0YnxNF6D0rR0neiltGmA7jNOTYohJh/Un9iB7EogcFm3+lgmM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745765995; c=relaxed/simple;
	bh=fu5Xdv4NsX6hcghTHMoVboiLQqUHpBezhppXaLTkqMQ=;
	h=To:Subject:From:Message-Id:Date; b=X8cTdCo887l/J9Cy5NXu2px57AwgGGUiEBG5uyxh5FPhGiDOXDZeMPKeosyIetBpINQ02UREEzqly8tjQHS/C67WplP8t3bmfNqs82GjymQwR8W0Z+COeEiYRfXzAyThNemPIlawlUqGGjSbO93j1+4gDdU4B6ZVJc3mbZUayIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgpAjvP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgpAjvP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AD1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745765993;
	bh=fu5Xdv4NsX6hcghTHMoVboiLQqUHpBezhppXaLTkqMQ=;
	h=To:Subject:From:Date:From;
	b=pgpAjvP6HIAKJTb7e1B1sDEDcQP2DfCutGSHISnmmfBC8bdFXg7Xbn09tccP937qr
	 9LRqMuj8NdWYo0BCNdYf3IbutzQZHl6Bs8w0rLMnTRyhqpakYJVeZVxA5SAfalvV6p
	 N54tmrtJFAQU0Klw5A09AP8s1rWwQAELVvSechuIgi+PUHCE18YsKkbbXZJWPng6Th
	 Che9bw7f/BDfO0+fMB/2yBdY8S2M1kOgMeJAahbqduMCoxZjHo35n5xU2ZnWbIZnod
	 FYvc+5A2hhZ2xE4WmMTbvlg49iB4+X3+lcDgZomjoN9PWszKUTUsMaTS3znpPNFDeR
	 BQ95NbG8KfVZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943C2C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576599357.13531.5062312140249542890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3f37aaebef6435d7c213557b014a17a6a56370fbec2c68d5b942c9c457c928
Date: Sun, 27 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745765993
