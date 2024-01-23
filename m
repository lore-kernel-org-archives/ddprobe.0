Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106A550275
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705994297; cv=none; b=exJ4RmIuRHBZZin7I28+w8WF8ourUVpXgYqOO2ipWtm8aDwZ6VjHBt5z4IMhRMULBPYxsGCLKGInOB+corlkHWv9xLHVdPEVY+8YR5fLAk/3Gr1iuYGWhhYZYvDJbn3+uNlloU5sBSa3h12ACGgPP6hbvgv5+eiOBBCsvFRWa+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705994297; c=relaxed/simple;
	bh=hbjdh8+OrbexwEcGW+rKAikVSCBUDmLaYeOMVh6wAHo=;
	h=To:Subject:From:Message-Id:Date; b=muhcHLGKxEIutSOLCWYy8VwPp7jQKfwrRVZgHf+7ZK9JLEX9VJBavAPPUya/PjM8X4ePK85WMa/28tcHDjuIs2B68wz106SGauoEtULNHrK8/ZSxtlyKLLtNn8E0Iu5fKOEy7Vp3zRfU5vMxbX10g56IxWuv4cmnUWm2vaxM4/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TI/SVAtU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TI/SVAtU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BD8C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705994296;
	bh=hbjdh8+OrbexwEcGW+rKAikVSCBUDmLaYeOMVh6wAHo=;
	h=To:Subject:From:Date:From;
	b=TI/SVAtU+yuPDqQL9Rft0p2TqYPTQTyqL4bTTsZ4CCITBK9pVfbfQ51aCV8BKyhLG
	 Kx7fRUbZet0tWer3zxYLq/7XrWByqlI9qxmvdwfUowYTCMiuUEvXNuh6pZGOEndEIA
	 OlICwf55K8K5eV8hwC5+7XInms6OvT/ntI90O1L8JgSrQS995VE6goIBT1TCtueoor
	 wPhmMYTxHf1MuyRnAxNAZByNneBNVSX3uVoKMDg2Fiyr8MetaXIsTMW4GANqIavqMe
	 PsUY2VqjGpcX2P1EIBGAjy73Fx1cQNU4kckrx7Y3C3uutdIhxcKdQacEe2gkcRrsmG
	 /hZHlxmbEFkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC9AC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170599429637.24213.7630725338113739783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414932c6651cd98bdd5da7455fc376c7fcd6199cef0cf428c413f6d92513dfa8
Date: Tue, 23 Jan 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705994296
