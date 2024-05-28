Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BF9DF6B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716876263; cv=none; b=NO8z1dzTszJeThMBpD53oQxkgpkzmBcW2TcE4g2jTUnm9wi9bLc+UyT35VO0ZP1R3lGiGvnPWQVkxo81QF2t/9ScoQtfVkdCtqlE4JOZ99aOMTYfnj9MrMIBVWyxvr3DYFcvFiZveJnDSNtsVOBqzOkFsQ15MJttuT0WCiaNNdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716876263; c=relaxed/simple;
	bh=tMMvDYV3QlrTiehIMwjOfGi7Y+KgJZUS9SCIHMTgKb0=;
	h=To:Subject:From:Message-Id:Date; b=CrlQKFodjBEshv53QXKv29RJMlf3iMVotXcrV3iXMEMX3Eeu04fsLFlNwd/OOyd8uAgyqcyjRqHt4z8OYaXlFI3+QtmgHNoXCslZvbahsOiTqp6mAUL2aJvkgURyxtJcRTFyul1th0luyazXlbDLZOttqegxj+KaeuUzMjg7oyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPzjQu/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPzjQu/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEF2C32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716876262;
	bh=tMMvDYV3QlrTiehIMwjOfGi7Y+KgJZUS9SCIHMTgKb0=;
	h=To:Subject:From:Date:From;
	b=mPzjQu/WmovF0TEZVzKexoZImq6h+FSpLHMNGYonH3NRv+Mqv/td7fWO4MmrdFIit
	 qOIy0OGXbHLL3rocPQYxcihmuZXk/adb/3b/0x9KZWyAB5rG6vOeXEoQstvSglmQYi
	 NglAlGv+qHkQOw0xAg5oEki0e/VLJGTcuSx/0oVDhBprS8MHRd29Dyt2ROdslYCrji
	 nBY3cP7X5DHAONCAn8R+5zdOxY27nq0w7UgAOm9aNHrWPYpSMFt9orPWJIgR1aF3lm
	 xUTzBxjynmPVaiiX0Qgcl2H2Ieaa/a1U0ZSPj5m9Agc9KM5FGPHC5Cpf8f3Gz0GaQB
	 h8A16MAv85kyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72EDC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687626280.13471.11319471323697012323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90199e74d269448198e76dcfe830cec8fa0f0cd6699008dc6e5c13a504cda7fc
Date: Tue, 28 May 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716876262
