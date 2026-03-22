Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D38224D6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774150494; cv=none; b=d1/LV+AnmV2ApH90Fjj/GYNrstkZNTrIdL8cTkSpclmn68e7yqSq1StYsNhLfjRdmt6Jwl8q6BzQou4jKn2849mxGT2C/cYqRMINuVa6WWGxTL+ql0slKghxSNYReBAmqwIRLLwBXlpEQ7rSfm4gbvX/IfOMht3utcDup8DndbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774150494; c=relaxed/simple;
	bh=VXTk6kdCktVzQWLw//eMa98/c6/0zQ+DxzPftRy7leo=;
	h=To:Subject:From:Message-Id:Date; b=UCO6bFcISFqM+bAw1hVZKl47wiETuNgUC2qRIAiCWxb03kD/8Zxy2iAhWOWzqhb6RiofBCV7mSOdjfat2T9SvDmSdpfFN8WiCacG4paYTvyet2gYvDuxcFfjaEEmEouwraOUdv5kcXGUySrM5csm8b/VzAPeadzLuD262jg0wTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG7ROqEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG7ROqEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74FFC2BC87
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774150493;
	bh=VXTk6kdCktVzQWLw//eMa98/c6/0zQ+DxzPftRy7leo=;
	h=To:Subject:From:Date:From;
	b=KG7ROqEQ61lTrfg4ikoC/O78SdofY+o9/yDb7g8qEBYvcoAnpnQ7WPsy8lsx7DuIC
	 ovS/go1tZVmYLZEGDKqGXP5q6NB6ua3nT/3dCRT/06Q+7VybGbJ7Js6JlJultzVOKH
	 HkHMq2rOMTH0ma2BfX4zc/KgwGsuCYonQOXEuvcRUjgp/ujYIkS1/WgWUDwCfgWn35
	 0fa7GMtHQlLNSQwmLntLLJkrJ86Fk1RWYgza2rgqNmlD6WkKRcNraTt9nsdt6g03ve
	 ViAYzZqhVay8nGOS6VW5MQmBHOzLZlCJRxjvUaWGyOI9xkGAQbt+v/fvl9j8QBIX8Y
	 2Grv9klVkowew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB3109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415049357.4553.14912859095242674739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445b7d35b729a188a6d7c02e30e1852db1415d0b52c5fc220c8d59a3b287e715
Date: Sun, 22 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774150493
