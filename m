Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58382145B3F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790992234; cv=none; b=RtK9iYsWJQijuU36xOWaIo4fncNlioYyqpkaguz79H7+dfiR7cVFKNe0BQYFRpHQ13wcBCToyipFIKtNyB8C1ZAwOyqg8hxzSgQtJvNcZNiEYlj2ve7yMBok267f77oI3louRGCLV/KFeUHYpcua9Lu9N2YmbHdoI8VlJNRJ2uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790992234; c=relaxed/simple;
	bh=+d7A1gLupt3yrYn8xdtj7JUuggQL80S/R/avirXIAMM=;
	h=To:Subject:From:Message-Id:Date; b=myobVcC7RbMIgoHBB8uCKezuRqEc87Ohf+DjCEugisy/hISnZ9OpGM7pu+SjOxcWJR9+CWEkmwNF7RZwRn9unU7kSIqml+JxOqIMDltX6kVFf1q5dgG4n3vmtn5ywtCdWUBeC8lFc6VIU81wQk8XT+/yltCGewqeIcK6bFD6fdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKe9kkA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKe9kkA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3235C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790992233;
	bh=+d7A1gLupt3yrYn8xdtj7JUuggQL80S/R/avirXIAMM=;
	h=To:Subject:From:Date:From;
	b=RKe9kkA6XVuWMn9P9oI3e9B/HxVreJi9N3m1QzmxNaoFRtMsDuOyazlAEFLsud9eZ
	 yjVRo5f5Xg7Tp1QrgzTJcgYeucTrBdfY6eG9ABE5dDZCmbJ2o00bGP9217wCh7q7kd
	 PU+ThPQuSPN2JoBmMWJsAh9KKi+OGtIyoogTiU2Y4JIvLeAORrL4aSeEMixRj560Mz
	 ChmLWb49nVN/PCbAse+6mg29KFOdr2f/uH/CwEZAknaRJlKhs3RL23rrPrpCTrp2Hg
	 moc3QHm0IR4nHOxnp1+cXhkFSGA+JOTfObOiGUOY3hS6e0dq366IfFn5aubmbMnc8B
	 S574kATDLzTJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10ACA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099223368.25097.4999741786490086766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466005a5c60e81ac7c8f7813ab420c90db38483c5b24e6659dfb769aa277a3d0
Date: Sat, 03 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790992233
