Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296923F99F5
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775042734; cv=none; b=O2ez5irFUuAVk/eOpmNsmVkDDTxMS+tyPMSQixUfuNs63IcPH4Dt/6f66SUmMW/Oo1aqczRszCMQNdwlZHiJG0uuWck7JELdSa7pvzIt0/PlSSFK1XpiIucttwkKt8h0mT10sSoyJP0JpeavdrxlL1PrTonQXe+nsmsHVEeV33s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775042734; c=relaxed/simple;
	bh=zyOwcHKhp7yIOvC71ZTdF0NRT6y9V4FhavsoOOXEPVU=;
	h=To:Subject:From:Message-Id:Date; b=OmK7PDVP3SHoEcJwnGI8T0diiCyd9x0YHqK3vAMdcOsz9ioqTNZLn+vk0T3wumSnbn7Ojy60s4jwEY/lfepcqvNHHoPBnfgqNLPYFjq+WIKndAn7aJMS1jpe8yhBTbgs8M0ASVKtj1voqpV/xhs3OcKBzJc7ROOiGJIQIFrT488=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7kD0sOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7kD0sOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEA7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775042733;
	bh=zyOwcHKhp7yIOvC71ZTdF0NRT6y9V4FhavsoOOXEPVU=;
	h=To:Subject:From:Date:From;
	b=E7kD0sOoJDkSzvo1cYV8xF+U/OuZZ1RTU/Yetc/XZvFwACGC8/Pf0Nod2TeQ3NBn7
	 IDR9w/1B/2qDT3+fssZxkgeIeKJdK2ky7MrE0MDAj3MAviadUOU13XNPIZyzFYNexw
	 jY1slEXUVQm4S6rkz2CfNY+L6BkzvJAuYWvYpZHkZH4+JnVjkTxu0vbKKjGLfxkpu7
	 cH7COZvQqMXXoMQjswwQlCHdZwLz4H/cUbAgXtHmJF1vIcV5bTOux5eRxUCvpDTehu
	 kB/5Z1fUCjK1zCkCs81L9lvBrUEuCIGJ98it1/gNIufvqZOr7/4O3CEQF1trK0mI7Q
	 5SCaTTD2g4MuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA9DD35171
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504273370.9278.13490563247589137686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa3086c42531173ee0774b0702af3426be9d6f2dd8c994fcde8027b9d76173e
Date: Wed, 01 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775042733
