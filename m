Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4203A1DF98A
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397354; cv=none; b=dhHs6X6UEVfbw0wWxuiy8YDVDJeZHbsaFxzL3Wjz5eCCnmGFhW9qbbuF4/7p2yysDCx4yAKWmSDOObCKb9dEqCpccmvrffluDznsT8B+sPxhMZOf8GoSMcArfQLnSH21FpV1UZZtLO9TMjzgEnY+nS9p9+q7Vk/GBXmzwT9IoUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397354; c=relaxed/simple;
	bh=nX3FWhKAaHn5++8qqeR0eG9glSF5avzNwbdIL7MVmxE=;
	h=To:Subject:From:Message-Id:Date; b=ciCp0sYGK9pKBETzlGBP70P0PWMQqclCH8jIHVp20AkzMEkwhczGdkC2P/b/wzWWV86TnYjb9+KFP193FbolJiZrwQ6b2RBzIvAuyjKuw3YcsndLt2IHCANfNaunMTKJhOvrUsxWyxTHfhiRXO5Mu70T9MBXPZxR1EiiBju3QpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/MVQLQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/MVQLQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8C9C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733397353;
	bh=nX3FWhKAaHn5++8qqeR0eG9glSF5avzNwbdIL7MVmxE=;
	h=To:Subject:From:Date:From;
	b=P/MVQLQI0aAoGTZCIISxbWsAQeK97+NOuW2rz993qohWcNpbnJ1k7mJU/x0zyXd4o
	 /81+XSL0bsbCxfwiDX7d6itbHMU+SL+dM79F+rSMPbBkuJ3K0wrwbvcdiAcvVOuQGW
	 pF8FCJXvmihN0FaGIoZ7l4TKD4m9NDmIiV/t1Rfy/yRRg5YE/OMMYq4x0+VXIhBh2U
	 wy9+PT8fpeOBZv1QsfBx6y1jkqo5Kb2D2z+VyblwR2ZnWUkeucw3FkzyAoxIlhacrk
	 sEA2EHjunUhoPVvfATkr/LAktolW8u1HFx06zNazZtdznjbXZ0csiwXLOvRlV0bS4T
	 SYnLU4DaYgvLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2410E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173339735367.7589.528839556596976267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb99c1688e6ce1996aef8c3b54c3babaf1f7279ca7a74c11665c9be921c00cc3
Date: Thu, 05 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733397353
