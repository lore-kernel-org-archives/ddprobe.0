Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2111F2D8DD0
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788722434; cv=none; b=Zhk9vegmmvZT+nCLKEHnrgwHKlsgJf4BuJm80RVDLqmjMokvj+ucQUeJe/W8l1WaE+4rTwazbBkj64X6+lYcPZeu6zgqYelN25KRhx5nZeoX6rLz6EOJ+YrlwFPrNoFLf541WbnPtYv5STopOuvvmVXEqtkVf0V9ym2YnMjkTlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788722434; c=relaxed/simple;
	bh=+ZCuL9c3EW82GpRegXw72fb3YtRBdGEarQYOMkhCdsk=;
	h=To:Subject:From:Message-Id:Date; b=SmlAnL3mcrzR9jhWHiF5LhhkajxVZoXCWMgkFxAj009fLssTCmngTUMTnUI7OLoXLO+J7bNgjAXcAje2jOLtZG9mPAEnqmk2Yc590RbD3Hx9LgJziOCoNko60EtBP0YfxZ0zL3cUSDOYjQTKKu8GOb0u5w21j4h232KE4FZME+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdEXD97J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdEXD97J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3165C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788722433;
	bh=+ZCuL9c3EW82GpRegXw72fb3YtRBdGEarQYOMkhCdsk=;
	h=To:Subject:From:Date:From;
	b=UdEXD97JuiPFfK4xsrchU8tgIGXrtuOgr8sLF5/f02l6fQfGBtUq7TRWK6XU5h4/a
	 BF9/bils4XLaFfI8J9vxk7JBj94QNd5NGHCV9Euw30UeU+9lZHydR8xcpLPXqa9KwR
	 DLkU5eVq3wh9b15OiLir1ZqpSNqUC9iQYHi3XISQbvX2q0FWh88GFfHM9QDwcnZNEo
	 DuFrs7o/FUIie69Cm8VjrVyxus7rSd0cmsiKsjaBKmEXkLv5zhfWlggTfQtdB5dMmN
	 MhEyXvfQZXsLiyh67gdss/+iohgb2lZARyqhkTj0H92i8TTayj14q2UBn4Y3imkEQY
	 AuRWl6vA8nEdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE21DC79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872243369.24012.927105836372126404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63f60a5761d67c0a94f31311d7135c26cdf8acbec5633f88e6023abf3971a38
Date: Sun, 06 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788722433
