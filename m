Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED561D1748
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728311754; cv=none; b=ZKXnF7V3o+AXxvB+GLL1oFi1jBxPmtFcDaOiOTF27fPi+I+ndjGNF6CT16gjqHHLeAXu9gWMN/TYO4Vd/TMSHSVvX7XjJG0ZeOJ/Hl6AJjGezfwlZcFImQBJdkdC+39PJZ2rE/GMoR3IXwVGRI6wIDZx2oL2/o9pFDRhLW2H6Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728311754; c=relaxed/simple;
	bh=km2+qYAt2uP0LM1Us3VvXrUOHH5Sl/stV+96kLTYvGY=;
	h=To:Subject:From:Message-Id:Date; b=IzTGBls6+tqpZEyBZa0RG2nc/uF5Fj6AC+SeaynPTEoYBrppDOwpKgRhuFvnESTeoq9UeZUlINXBAV3lXX6DTifoJonw1Czj1q0Vp4U5W/lJU7b9Yi3crZ+OmVpuDAADRfKMyIdolNKkP9VE9TvqryhjT1ScOXtmzDaDaWp9iHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tsl6pegE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tsl6pegE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99D5C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728311753;
	bh=km2+qYAt2uP0LM1Us3VvXrUOHH5Sl/stV+96kLTYvGY=;
	h=To:Subject:From:Date:From;
	b=Tsl6pegEcv2z3oIw60vqZa0fOWfc9ECvopCeLMrPP85c+FUDAAvcpUXl5q6llmj3w
	 qM0b855mMG2f8KZ/KacTLv6HwO4Kev1BCnnue5nQWpuwxY8kruOsV8teNWOE8fWH8x
	 ZvnRXIE0jjnRrjaaoBuu3FR6UkEA2lFAJ3kgzdzA0kOoS0Hr5TLSrB/mQoi0vIdaws
	 Az+LXNlreSuWG2HKtYwZQFRTXq1TaAcYXcaAo0wqj6VP/Ahat0MZPGjw3Sr9vponVn
	 aoa9nem31BQfDEx4HgARFFdJG+At00hWl+xXUdAlY5BWpC4TWKehxy0neXLhM7QA3v
	 EyzsAbkXAtXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9597BCFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172831175360.465.18121232748774834468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fd90958732e21ff64ce8c945bc487068430cf3fc5f345064599cbab3f98a06
Date: Mon, 07 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728311753
