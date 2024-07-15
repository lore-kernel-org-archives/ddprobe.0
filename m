Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB8A1849E9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721025203; cv=none; b=rDNWyjKuKpNxBWLy/ckO3qYG3tlOQH/wVLvgU+y8I3NwoTPXZvF5imooqpwg9YgQMKMeoxc+2F5fBepXbsXoBxelAILeUwAif0otYThdapryyci118IVaBA66DbLxwBF+vrkQk616EFpNE/LKY+ikjdHQq2FxKHYu2bntYVXlbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721025203; c=relaxed/simple;
	bh=D1Q2tP5LRFYYTA6Zvmx518gi79iG61d4J6MInx8qKkE=;
	h=To:Subject:From:Message-Id:Date; b=Pv/UhhtdkhufaRtb4nw5H2v9LdlDZ4sMclYnbU09JZoxI+7V6749XJHIOFvqw3xJQeYmeP7Nb+9WVLkDER1lg4GMOFqOlfOzPjI4b6C4nXAYa0xtuNLsvAU+RDRtnLdKZzz1angBETyzpAOLXSYmCCmmCO4lKNo8IobgZMwtzmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKybWHmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKybWHmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3D91C4AF14
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721025203;
	bh=D1Q2tP5LRFYYTA6Zvmx518gi79iG61d4J6MInx8qKkE=;
	h=To:Subject:From:Date:From;
	b=cKybWHmEC3TQ4Gs78BOW7Qsie8e2FEmW+JLuFpRWA9kJG0EKm9D0MvS2mBEMlGfGG
	 2JQavJeM0hVMAj+hWzBT5ZMR60RNGN79JksEZJvTZzuCC1EpeezDGE3G0K5SMhCxgX
	 BfMmU6z8sEDtAcDCkQsGnbaWtO3jqGB33p/LEh4WswXNzGIbqSfh6X4g5vbAs9jVAg
	 k1hQbx/rANp1K4nHNz3gZT7H/JpJM+6MuYrp0/JtTn6PbRnZCr3XFYHfoO5MZfPifn
	 XoamTsuE3LI2ay8RmwmaNs7+qA7b7jcI7gt6Y9Nz0mq/P0fgq3AdmOo1qI4dugmiX5
	 DMQ6ehfOMI3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40E0C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172102520279.13268.1864208728828219623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70381fabb98d77b04ff5f69f8c7b77167c0d6c238d9469c2ebe5c8f3bd397274
Date: Mon, 15 Jul 2024 06:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721025202
