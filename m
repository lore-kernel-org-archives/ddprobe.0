Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B409321CFF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753173595; cv=none; b=UgMCFVzymsQRRE/2mc45E5hHmXJ5qMpbNgjBHb09trsWf89+XF+ghhS6SV4pileNIBEqaQ0SsONikd+sFrcnIJfW3iBGD4POovFSlt+zNFcUYGBuKuHLGFG/vGi8lduHF5NXJKHWyy8o08EP7IBEECn2lbDlLRiK4IjFHqKF9Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753173595; c=relaxed/simple;
	bh=3oWC2k6+MmBQGnYz6cJV2/w/2ZkV+pJnJMW6MOAsIf0=;
	h=To:Subject:From:Message-Id:Date; b=ZxHvLX6fvChuAHCBYlfe7zdn42y6J6adcDAxvlIao7+D24TkNdzcvbopTR57ss3PiEuLLofyiGIze+jSLFwIOWthncU4T5DPS6cDN8Flnop587fk0GIRQV/lXSjtQM8smVbkMpKuJHvRw7UHEjAF0nIaSPkvQcZ5rLnuiskCUtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqQLl5Dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqQLl5Dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E400C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753173593;
	bh=3oWC2k6+MmBQGnYz6cJV2/w/2ZkV+pJnJMW6MOAsIf0=;
	h=To:Subject:From:Date:From;
	b=kqQLl5DxVBb1g4wNWI0iZfkN5xD+jETerQLJsa0uqUaq6xuHwgrv6oaRFWsNE+5QI
	 S+I5qaoa4UeCkXu44D1b0fOdaccgg4JoynvqZAxERljnoy+F9gAAVXbGT43DIz1Nsh
	 kXesrEkGVcuyTfoQPhGyYjmbHVZ6kjnDJTrQoRpGGx9HKbk25B1W0qgNKdhSJbStxw
	 zwexl7rJAiwnFXKOETgkA5QYpVm+osicrNX+bKKLCMgk7aoG+o9r1PN/c/8eAybcA2
	 EpKBXYyURiJkufY9KHSnHO5D3TSMV1NY8oaQIuxvh/kemfB8Coi+NskJuuf3vWBuqO
	 1lr8U0IPhUlug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37CC83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317359357.30820.2902656947569169384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb863bcaf5c031f47523b3b688d86664915413812c64cd7e5e4ab1e51cc810e
Date: Tue, 22 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753173593
