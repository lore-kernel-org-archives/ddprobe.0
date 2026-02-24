Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BCD23ABB9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771902894; cv=none; b=glzwWgt2PyS3kgfMx/JQzr9ZR+8uGgY8xn8oTh3OWklzq/QvLSr07tbWXbo7XslAwxyYXEmjC/L2IJgTiLpY3OvGB56O2lA8X7hXDkHGDX3Gee4EAZyIAoalekpNRbZKyquHwIyj03gOeWgxGsZWvMpIOXCagNwzgDN5LMtAymM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771902894; c=relaxed/simple;
	bh=az48dwPbS/hS3deEtNyR1DjWAI3FxsUMMArswZ6x2Qk=;
	h=To:Subject:From:Message-Id:Date; b=lwwMNAkBh5Nhl4g0ROL7cLT4LSKuybduq57ACE9jPc8nS1v5ZLyRhG4lKfRAduaa+HL2Vsy8JgfbIXfGfq6b4WmXO68kRk2GM7hV2YsLA9N0XrYjdpZPQNb/ApkLw68eywknbjZxS8RMAk+KNi5Ge4DlHmEuBWNubdrpF01fweI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1Zqa436; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1Zqa436"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A209DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771902893;
	bh=az48dwPbS/hS3deEtNyR1DjWAI3FxsUMMArswZ6x2Qk=;
	h=To:Subject:From:Date:From;
	b=F1Zqa436Vy/ACauTC/E6SAn0Mn1eV0DApkSy9hqfYwGEXZQ95lmQi9tkPi4V5vv6e
	 w6pORKa4lWmH3tAEYg8F1MZV2PRyz2L84cdnvXgOtLVx767WCc3+dWQlLb4yzY0GCX
	 j9ezRTBh0ETJOwmJH8RdhWkitAqpKofDW3kTTOkx4xaS/QVVncz+4SRp/NCZe8RcIA
	 FDuAYUWOSTNhajlekKmsPs1jchsLeYYtMHjaN3q3Sc9yvxRL/oYRNdf5DEoCvet6gx
	 NR+u7GqYdF+ibddYyo1N+SSEB1ZLxMdiCWz+52HTT3S02GWHBXne3Unzxj62uvHCWT
	 PzQj9SFLC5fMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92223EFB7EE
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190289358.20104.6001247673190244661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0eba3cdb52d967789f9ee4f588a48078b33a0cefde55731bacaa71e0e4062c4
Date: Tue, 24 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771902893
