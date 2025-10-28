Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1BF204F8B
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761612594; cv=none; b=CFx+8LUPGS32MdeIqQCv/ZidQiAaV6bXBGSyQzt9u1hOiaAOO1PJyYHtck8DkkBauYw2Gb6YuNhpgRu1A2q0zpvDIjT+WRS3ESGs29fyRjqc2bl41oWJBulHCBZ5XATac8/zrEY/NwKcQFdDix+62UtOgDBr55OvELnPsR19VGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761612594; c=relaxed/simple;
	bh=IkfTiCBF87UYLQeODK9Lmih+s638pwRey6Ik9KMNPHI=;
	h=To:Subject:From:Message-Id:Date; b=VKKAJ8MWovLc176HkR3C+7LClHr70nCXHqCZ5L0qXshtUAe5iIg/UPGdM55VpYhX4fDWeWt7yYuMMPUAG/sv6umH5JVvnLqvwcAJXe/YKFD2rhAutmB9NUM9Avm5quAHba/oEKA3tqp0rmn2ILsFiT5eNzmaYYC3VaWutqASkvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA6wCDrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA6wCDrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E34C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761612593;
	bh=IkfTiCBF87UYLQeODK9Lmih+s638pwRey6Ik9KMNPHI=;
	h=To:Subject:From:Date:From;
	b=FA6wCDrNv5vBZmbNqd0RhOchTs8IMDKrbos3keBfl0/gDYSCzlVUITgVa5/EvouTb
	 8aRE+kQJyqAmSkHK4Z/W7AaprkMTmcg/kqoIMZoShBqTAIMVu4VGO1bywVlW3FiKl0
	 QcocWkAp85IswaF+vhzJJKs4bc69Y+r7W22JeeJOTpUF6wJZ64/S/i2txq9ol9sVzY
	 OyHTCDoaNzQnfA9LhTDWbkJz2riztt30UsAJYdDrGbhU1XHVGH+8njeqWiR+07qb9z
	 5NoPc5s4+ba/5lePwZNCtladvCtT7vUAFsH/VoNT+oPq/55chxMO3lnj/J/HCt2vWF
	 v0gphNQT5PX/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91250CCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161259358.14143.17618663414903670333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9beb8a424b3cb152da292ce7ed8e09123b750a007e89959df1f339df476c9750
Date: Tue, 28 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761612593
