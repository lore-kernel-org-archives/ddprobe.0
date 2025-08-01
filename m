Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F9A1E51EA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754068794; cv=none; b=uEbeCOXW4JriGA3sFxXYcGMG5Tz02aRk/KIU5RTv4dO9B0aHBRLQfF97MJX3AFpGu50aoS1WucBL6xA9RbhyEkddu2sWlqGTN+w7PobsF1TINcK/fkFQVwcpwEfN7NU6PFFuDZ1f90jjDnRaArqr8temXNHaHkPsBkhEVSpTGvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754068794; c=relaxed/simple;
	bh=DnbjeaTOjwFYfvB3cMVjCdplhkT04S7u2/LW2Sa89m0=;
	h=To:Subject:From:Message-Id:Date; b=llNvR0XCcKp5KhbnmUzLW932Woz7Ks8TephDdCnBr4rqS02n6byJDXxLxDh7q5A8BoB9leTDUBRLXkh0FFEiH9ABsEcQ02PBS4knBZpYXXWMNzAXTmiuq8cwvVFiVKaowfJEQoHWyTkU1MRyFaGAlUtGH/i7RNN3d98Jv2XNhuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG9+IQNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG9+IQNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4234C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754068793;
	bh=DnbjeaTOjwFYfvB3cMVjCdplhkT04S7u2/LW2Sa89m0=;
	h=To:Subject:From:Date:From;
	b=GG9+IQNIAI6lFlWa95rYdqXLNO5A0A5YfthxCFyxFfkkfA8zY1jibPdUoXnaJJrMS
	 2giYxeUwzbgiKCrTt+dC4PVVJpmqGCpUAjP/g5STSZAsd+kX/QKnDpZhU1zqyJWfdd
	 fFRe8EM1cKMzQcJCzHHcXrg0Frpl80UkAdwskGUrvjA67pGNnIM4lG8jwqqcSRyrSM
	 9ScebAPsMF4YR19Q1go5o4Xw27WlIb4wYlJzQnV83vZE8WllDPYcLKavkkHJashp7T
	 MiPA99pBrAzQGe3uksTzJHYGMhWloNNQDMs/rqPwhn9cvbduegp+mS4RFhDrBFb89C
	 CBar3Q8CiVW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93192C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406879359.14908.16394179242150142785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0fc99915639a22c866bed6f741fc5225a64e4d9c7ee59008bb3f0cab5f2de1
Date: Fri, 01 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754068793
