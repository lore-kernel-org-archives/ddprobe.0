Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4176744A3EE
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789388434; cv=none; b=oju1DT4g+0nUtHbCm0QsCRYNv5+r82Z/fvBAF9UgH80WWqlDLkobX8Q4ykHz7atd2rXGiJD3SXaxKUuFB+b3KWgORwuArotTp/Zu4avAG9dbJFwpE6rEHs9d8rKDZ+0tDz/ssH0qaYdtU7MS7sR1fUymycvaWulPY66DGAvNPSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789388434; c=relaxed/simple;
	bh=JV0vqa24GgKaiVelOn81LvzZ1e07HyF+cOWPCqD0hNg=;
	h=To:Subject:From:Message-Id:Date; b=Yhe96dmNCT6QuN94ljGy/vxXSf0OvlF/aVm2XTE1kcsZiLz0t7aubaWOcuH/On2/waGSFLnfDHd3iOmeaVcJcmgqDEf3OQxyiKgHzFSdJmhgENBDTTvg/w7DUoL+lGaQb+2JL2gwDPCCPLDdNZgEROeCK3iFcHxpEWIo/U0+RQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dT3URZzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dT3URZzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56E8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789388433;
	bh=JV0vqa24GgKaiVelOn81LvzZ1e07HyF+cOWPCqD0hNg=;
	h=To:Subject:From:Date:From;
	b=dT3URZzi4ZPG9xW4U+8Uve2hBsZvhYNZS0gJZJeorClrewEOXhb7w+acow2atbcAZ
	 5VqpN30qCufY40I9GSY8fSLVslmZHmr4rvkjO7pfsWzLwydeC5TRyicCWrljrl6QE9
	 t7cf2J4AkEeMNAcmu7ogCfsdpN8hnhN6sAcfizmkQyWpBYN/IgUbDHTOfObVccJq1u
	 Ts1cTnVUK6fd99fXPrI2XeOkK3YhHRMNDhy1znTP+Z31OtweN5EMAkxH0LehAliMIS
	 1Lbk53s7zTMmeIt6zyMj9zSnox15g31jO2OVtBYaabQppgRM9qSxSXlJTG4SkSJjsz
	 ImWgVHv1PQQzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA967C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938843368.11321.4594944744392485260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18997580a4cf89c286953f29332ea09946d7a724fbd25d9fbf98b8fb027a192d
Date: Mon, 14 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789388433
