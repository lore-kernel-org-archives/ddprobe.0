Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A011607AA
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735409154; cv=none; b=g+CQaTMJU0LefFVtH/Hd0cZq6gx/X7NCiIjMLZ5kwyaMbfKL6h/wber3oQilidB9Bl2CzQfjU7epBADX6I3xzc7PE9CXpGfEt0hEQ/Yw+3HDUh+LK5H9CHKKEKyYD6KwHp+j+c//jCTFzufD7yBpPBaCWivWLjD+qe3PH1Ajzcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735409154; c=relaxed/simple;
	bh=3dc5KRqq6QJdfffhnvsL/Scq8rjlFXNv/pddhYJL+D0=;
	h=To:Subject:From:Message-Id:Date; b=ZPmYbObihGReX5RBqlkPcIdhdxCvUYQ4TZEt8eZtf/EbqqJl/K89tS2plTnKKwjs5ziEzcv0wo7F5iCXjCrDNVyoHW52JZoNosvwOvBknLSauQpXrt+CaPRb7vzbl0qooUBXwFV+4ahVisxeVVM2ESMPvUESe142OL9HsAB4RSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i89HM8Ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i89HM8Ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB6C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735409153;
	bh=3dc5KRqq6QJdfffhnvsL/Scq8rjlFXNv/pddhYJL+D0=;
	h=To:Subject:From:Date:From;
	b=i89HM8FtIdoMXJh61p5h/lpPdUJ9o/17EdChVu4AeijfyGslys6BjWvkKepdbQF8O
	 nppOy7ziQGTuvq2LZtiY6nimIWZ3335jt8zPOaNhwfCGS76Y2jjuIkechTwIglSd0w
	 jsvMM5hHVDWDUkwYCmqABNfcv1ByvUT0leZGlPVhntSRekMvBtEcwaP04uxN+Jbdin
	 lWDZSd+u/s4KqL5JxJRPKxXhQ9HGga6qR3QCXCkOptIvHePxk3WCxOTRH5FSOhSv8e
	 uV2AsjoW12IwO8AxZH1P5pw/Zu+EaEQP0pbnD4rL8+cWoG1ZobnaMuvRxCw397ogQ3
	 OU3ISjwYI2EPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E10E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540915358.9445.1794463954736475236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36f8753334ab79206d3210fd4d6ef4f5570a4d9603cbcd07d6d2bb10209a23b
Date: Sat, 28 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735409153
