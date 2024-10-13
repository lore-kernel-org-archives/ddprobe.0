Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AA580027
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728858354; cv=none; b=ZyDjiuxybGyVjQWuwZslZ58jUSKvl5bktK6H9B4zSXB7lp+RMaXsy6Xhrv8PBRoIDA/fBRHGym+ca5l+9smnZ49TEGKF3W3/XL1+yhXnvWJ30o5DGTE4HH1b9vLxvPdkW4air3DKPcEzZzoJGLiyKNiv0OC0p+Lt/ec6dj03SJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728858354; c=relaxed/simple;
	bh=DEYRVnxNdO2eAFVjkFMoPg55cqXP3YuifAaqNPITcTw=;
	h=To:Subject:From:Message-Id:Date; b=UiVVd64GQ996RO9kbqwOAtQgEsOhcynKOLTQgIn3uqOMUfN5UOMxgSfZYDx7JkX3xLGpkR4Fh5FIsD9WDWMl6D9ywsx9GZhadkUpDVoCdK93mnBo5bCFy/5OU2o20yKumv4vDlEIJw93tDMNDIDX1Gq2Zv72ZZvXtwRX0Vi8rwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyJqqhRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyJqqhRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6343C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728858353;
	bh=DEYRVnxNdO2eAFVjkFMoPg55cqXP3YuifAaqNPITcTw=;
	h=To:Subject:From:Date:From;
	b=YyJqqhRacqG3YAGBrMdDJ8B8qzPBApAfj9JFRQ/tyxzdL1xZRpDrgylm3HPSi6hBo
	 STUtjseWsj5ZCBxiJ7I7JcTfz2wPyOtjWb9Dl0oTHhHozKkOJ3uz9hUNXW8EGeZNhD
	 upf7ukHjVplm89HWsnmFiq60Z7IzZMfReodPI1yehJUoVliWuumzfow9NcPf+zIXzi
	 g7U1ngge4Drl7hR5HRbOqedrOQ0vAPS1FZgk+yKsDwZFJ/7iM9gQkCEbhg91RVFiNk
	 OMChybpIBcer5qpmEUWzY8TSKEAH5OmEPmzeSJ9dTMmlHcF3IzmAR5ByUqDTeUpwRx
	 FzJ/6ukLkA1rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CD5CF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885835360.7783.3394540769522594368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed171f85fe1b071bfb44a522cc01c2fc14f0b3527a6e9f7faffb9e70ff9dbb31
Date: Sun, 13 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728858353
