Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F493800
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728261354; cv=none; b=buEqsPpaIr7znFQ4QsU6XYSQLz6dA4l6I+FUVIK0eNCLm47gJGH6pEHoJj69zwzbOOUCPp6LYOy+Y7TrgWqiSynCaaLYejP11Zqv9j6ITaxrwuJh033vtm/SSmXnYAG9l0p/HEJfneg7o6B8rIvztFOSCuX2X465JkknT8m2Cl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728261354; c=relaxed/simple;
	bh=aCEGM2evssfmUVGvX48qjpJD7nZ86gKyz5Nv1GJRzEo=;
	h=To:Subject:From:Message-Id:Date; b=nhiJdTlx9THlyKnWO27Z+xjlIrcXkAL9Ra42w9Nsn4ghjVAiSG7Se2GGqnT0Z4LNA2lJzD7IwUOhY/GXQdVA6DIhgigeZD6xrFjroaWpFBINVPN+NVdc/DOrt82Cu/ylotjMehvXHJL9dhIX6sCORd36hjI/+EebhI9cMXx7z7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3GllNS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3GllNS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EB2C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728261353;
	bh=aCEGM2evssfmUVGvX48qjpJD7nZ86gKyz5Nv1GJRzEo=;
	h=To:Subject:From:Date:From;
	b=i3GllNS47cavPmP8mjJUE4MdL1aGjPNBxVU7Z8cSrosASI1GN80nOHNBMFJtPxJOU
	 REk0aweJCHHRhY4rqVI2P0/On7zX4bZjaP6IfiCZu4jdloiaioy6upN+Iz3Q44wiZn
	 MBakpig1msIacuEigfC3eZoY5gHWxXX8ir2fhANnYVAk4/P2Ey7VxE/Vfxcz3sgr1g
	 FOe1A0mdfqgQgce80i9aoLJsyL4qjtCD7AVHne5/YpsSdeQ+tRilTJgKUt8mn6zb05
	 nJM/v31mYfwFQp/AwDpdZIgZbkdYyC8ERkvjR0ffhCVqO74RABw9ipDKHC/McEPP4Y
	 MwZmLb04E1V1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632FCFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826135359.29926.10210307944110903630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cc3fdc0f72aa0a20a4d470d1e92cbec8d24c886be2d6f1616ee445fe8b8b9c
Date: Mon, 07 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728261353
