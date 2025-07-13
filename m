Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160348F4A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752388794; cv=none; b=OXopBiyKRzXP1T3wOguar0bk2EaxQc9y6zwY0FVFe0AqAZQUHwJUKlDRRpMjJ6EH38P86kSr+s4lcIacs1/EtCaPStWayPwohhnZzxY6wTrbDoWDUzEYJUb0Pob/PSo9OFB2a2jsVTcQddYNe7oSZEoq7e5FODWBhJp1/k2zSvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752388794; c=relaxed/simple;
	bh=3KpbKGWuA/VtXaewBeV12bggcFscJf9hPIKN+pJ0Qe4=;
	h=To:Subject:From:Message-Id:Date; b=LJuOT4puXRiEZIWCpLg0Cw8Vkovo00pGJs+NzOxoJvY5l00Ycd43aQxNDICLgMwj0VtDXZhq9q2hle6wMev7siU1iUyPmQaebf7DFov5Qg4nhphlV7+QsC+3eQeocr8jWwhRQaaXAAXZ70o1P2GV1D/qpc21mj/09200sysbHsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX0Q68um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX0Q68um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F15EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752388793;
	bh=3KpbKGWuA/VtXaewBeV12bggcFscJf9hPIKN+pJ0Qe4=;
	h=To:Subject:From:Date:From;
	b=gX0Q68um4UN/GV0h6BaJBo7Hf2tXzg0TCkttusZdI2cX1iCQRprRN5FDocU1LRgI5
	 1cc/aIAYysX1fq7/vMWBw0UkRIUITT4C7yufOYHjiThjfCIJCerA8FkGRSxeR+NJ5K
	 7Bn56rkvH1ZBBW4wFEfg1rwO8mdQQ82EGAjM4D6SyfFAshO3rKk3qgAv4mhK8NOC5s
	 I8aOktgkcqGxHrinWk99osxf2Gx1f0UX45XF8UlbS1RbibqkoIPWqK1Wro/0Dt+EFF
	 p5UKoqtExeInT1diNHB685DLuL1MFCxXIh1cmAo56+nW/1+ArE5raN+4xLy6MkV4oq
	 TIELG1jvgBhKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167CC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238879357.20872.4058019063715926323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a923acbb642cfb3871fa93cb95e6dfa941fb92e6ae8cd061b67bc7993ba60bac
Date: Sun, 13 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752388793
