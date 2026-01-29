Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2978030AACA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769725434; cv=none; b=gxNKKIQTz4KzaD993mmMlqptj/RYdjdpQDtzsAoP6Bj+TxPIkwoRc1Cpo80HrrkjwP9xBSZVQYd7UEbpblqcUGIhlwsTuFqsNcs71TWCgLqwplTWqRsy/o9dQKNS1xTKZoLGMmthCokEcyJI4gAJiA8SIcHgKK+yMqXpDXzWdCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769725434; c=relaxed/simple;
	bh=BC+WmGDYkp8kRNIPsDrc4rht6GRa0Zft/s4SD4pPg3Q=;
	h=To:Subject:From:Message-Id:Date; b=aUOGeTUhQYBkvAotZZcytDB3XsIJ5juldqa3MrW3E92hKyvTuMgS0d0UV2QVpc7TzMqotPB3Je6MKMlKDRQw6JrklI65I8pMrAeA/InB70Yvh10FVuJij8EB7k/dg9+Uy6enPM+ncyfdu3OX2heJs+bcuLy3rYR29ecMp6JgaN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0TJz+cL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0TJz+cL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38C8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769725433;
	bh=BC+WmGDYkp8kRNIPsDrc4rht6GRa0Zft/s4SD4pPg3Q=;
	h=To:Subject:From:Date:From;
	b=L0TJz+cLZq1qboLvTQrFyY3wFBYz8FXyTHr+OKwcwLx5/hECoUNdot1Ypp2nDeykW
	 Mp1r7TWjSt08QMwbuW5bF8T2PpngArKoX7uYoiqj0Q6HiHBxU96EzI8iKdar6FV3GD
	 lftVVElG4xtfl5Oy6eO74Cta8udpwZz8pGfQSX1e5ME2RrP6dl4mmB3SA09DZOl22o
	 Fb0oxH+mXxTyEWotTYfsa7crmOTUP3aE57Qu21JkVgY8IFCyeCeHCZvA7upu3pSIhS
	 9TED4gsc7OC5z74p/SQj1ki2zwm0qyp+fXYOMs9MBJVfMUrHtx+lp+gv8XoUFg5q2O
	 1D/pMW5NlBR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90176D73E9C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972543358.28267.1887440258650138405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d86028b2f51538fa010dd1c1d92f503ca6fd0716028ebe967b82b90f7d6fe8a
Date: Thu, 29 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769725433
