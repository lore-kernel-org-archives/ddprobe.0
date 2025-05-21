Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC64450276
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747856393; cv=none; b=tsdMIWhnDzqO+Zis2nxQOOEEkH/toywFYFgcnE513WPPyHBv9MWpIQnfdaEc6LkjlLixwJvY0dBDj5ofEDL/tK1yctMY0kbRjpwgy2GvcefNgM4HtSdR9ObFsw0oytKgZOC/dquwUx5viId1Tac4A8d95k1x+zaEpB/bExWiLGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747856393; c=relaxed/simple;
	bh=LjDiI8iVckURd6wsPGQC0/69B4GoDzVQVGLWZC1sGkQ=;
	h=To:Subject:From:Message-Id:Date; b=rBa5N44/0Rpt4WuExe7VrZNxFbjxtiZllNMboU527BLfhuvOruOa8YLh+Q3mgrZ3CRc24MQa9IfaHCcLwLOtpIhb2kc+fB2Yhl0JCpEVF386CcfL0el9HjDi+O8UBwXde35sKjHz4c6S5ahSem5o/toIvxsAG7IoNyiNoOp8atw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou92JUUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou92JUUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F376C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747856393;
	bh=LjDiI8iVckURd6wsPGQC0/69B4GoDzVQVGLWZC1sGkQ=;
	h=To:Subject:From:Date:From;
	b=Ou92JUUGxAXqinWYbTwFwcfADowx8tEcreSt/4pyfAURVPRwO4BfgziCfj7fKRVQ4
	 M77+BI1PjvttMZgEgiXmES9x1vbp7ZVZBxz3vSQADDlqyelPLhmSBNcbK4AHR88q3N
	 A3MT2shUhsIjO81xrUCB+v3NjxB+Cv1kbP1O1DU6DWfSXot3n+EVoPWJvi33CHf6Hi
	 VrK+78UVVzTWrptEd9ob13EeZEdqTuZPwjAAWpn8l7sL0TWy0Q5iPi8FJG1XczLFYc
	 Gx7D+hCVYO/CRLMOv9FYBkY2M5UstagFbwjYNCsTucwrEa7i+2VIna2dxGWkjBKt01
	 eyZFju1D9Q9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D2C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785639357.9352.18287082245270737139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34fa61a63d05da98d51c7146da53fc895c01698d2893c4d1787aa474cd6e698
Date: Wed, 21 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747856393
