Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DCB13D623
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716378803; cv=none; b=qKeENWIJbGho164SlCK34pYT/5rC5/GiCD2VyeCZ1pXEQiVzzsiYvQ6voM4xcpFbFW9XQM3SX2F4WY9E30Py31/VkZMjzSL2/D5S14xV0+qyddzbIoTINp241sKldQunkPTva7x+Guz+0OPltQ2NfkGe/UGVscUOnQfajn5rtOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716378803; c=relaxed/simple;
	bh=vD4N5tfJSmoSixeFMZShhm/unHl8Y0kD4ND5rkTyZI4=;
	h=To:Subject:From:Message-Id:Date; b=P8BHrUVJOw2+suLzbvM9YZa23lnh1B2rugnCxWNe3uUwQ0KApnVXPEflCtBWIgS9AG0M7LJ/cHqTPebXXn1h/q5LDvmT8Ks0Xg13PMXsMu01G/gTCcMOhFI1dqHCJrxvLlsVDBveMeHIkviXMAoixH5qO6UY0nPNqha9AgaFB9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAuAnA/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAuAnA/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1BEC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716378802;
	bh=vD4N5tfJSmoSixeFMZShhm/unHl8Y0kD4ND5rkTyZI4=;
	h=To:Subject:From:Date:From;
	b=aAuAnA/30Q8n2b4Tz+Vy/ke4/P/HbR+iqTBIZS7gotZlk9ArZJS+CnFOm/1YVOSF1
	 9KT6Bs3mNAFOrVdxsrgLxRcoigIZ/RqLY7A+/1ycgeQCv0kYTyUOS47JJKaYBrORc8
	 uxt4G60lrf1SbM5vraGm4lz+wQ1df+pvwktCfK6ytCrKouLnRWOft0Zh1y7moRby21
	 98dRzTczxgicD4qBAIofFBuX7S88EEN0DLef2psfnso09mpsRPNpgIRRKglGZtsFI7
	 9ON2zztvinSUQOUebdlRX1cnNhrKqH59xU7/a8oWMfyhyuTNFlan80dQvO4ibNFtHF
	 r4aZsoIvucCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE205C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171637880277.24577.9180467278622843064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389d401ac570ef080cbb15c62746fd825ccb462a3308f065e90c3e5d68671b10
Date: Wed, 22 May 2024 11:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716378802
