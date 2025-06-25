Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380AA1FF610
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750835394; cv=none; b=Udn0tjSSTnCaHo4PhGwE3Bs86Ugkqj0Rc2Eki+9D5yua7B8MO3lgUqmJ9C1Kgst0a44MtoRi/q6YaUeC2dhakLEXwMqwI2b0lQ5OPNLOni3BLMEHTh9SGIIHNLy+7T+AWFh1dUCmdmhzqNSp6f9NQv4VrWWEJBDud1SyrBBCALA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750835394; c=relaxed/simple;
	bh=Ea9TvM80KeBfClvfUbUgkQ4nxThcIbiXNUIEHKrFMnY=;
	h=To:Subject:From:Message-Id:Date; b=HqsFPkLMLwVw7Arr4nB/7VDls7wWMsq4pWoFJTZcRgzG4GJqKYJqdcFPlCYVHAg91kt+wYTJRujXLQYFuAjzCS2UWQ8HfRnnodx19IgHi5gzzdjThSp7cxIsmaV2J4FUYFR7PjkCgjh/NvpFf3e6ZsF2hMoQs18UX/lXrgSgp18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMNCjgPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMNCjgPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE0C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750835393;
	bh=Ea9TvM80KeBfClvfUbUgkQ4nxThcIbiXNUIEHKrFMnY=;
	h=To:Subject:From:Date:From;
	b=ZMNCjgPwmEozRaswtA2VScHSSKlfB3vvonLyQ4nzS1feSCx6cg9m29OzI7U4+Owvm
	 4++gsDFF2arKjisuEQCJ2NV/z24dmKd9dQqMRSpeXIMbY0LdwEe54WabSgsZIb43SD
	 xtnKQTvbpNRs0rTfp/P/b2MbbYMvFC99qIFSFfkohJceMONQrFlRO4bQQtOMrOFG/R
	 6yFdOqtsg+YGpA0eYmbfG4wVZvxRP0HrxAsQajZZykiZtoUiT62tiNoZ4yxwAm1GP5
	 g3KIx1CAAN2b/t5FfSA9JgSrc/2XT2v3bP3am8cAxm6n6nGGKq0D9027g1lloZhK8D
	 i864JrVyFliuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98CC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083539358.29533.7777273684020911040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd939cf9c4e7a715e69adc793636ed79240ee9b4df95b80de7687dece40a60e5
Date: Wed, 25 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750835393
