Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CD32DFA34
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744700394; cv=none; b=Rft8ydAykc/Eywp1B5sHCbzJgefK+eIRwTTj0gNmTRA0tPhzhfudgLGGP579WA4EW7lLq/lgkPZSxhAVHxj0h3Sl3SEW5RCW1wPXVV38YUdus9MsRd0PwqGiVGmuWEa4nQpnDNB51ziEYjadz8GmOPtJ5OyQpyLyO30GXWmOd/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744700394; c=relaxed/simple;
	bh=5RBYiyHQRjO1Efb42LlIhrMtwQvGsoTj234Q4h07BaE=;
	h=To:Subject:From:Message-Id:Date; b=FpGAo4Wo0OslsJaOnoltc2soq3hKFN3LTdD7GfYUPIa9rbQdncOyad1Ux253VSjJbc75wVgvq7t2CFXi2ljyDeM48Z5T8y8AO9pA9kEyU65d9GJMJUyNNAhvxsWloj0B/0tmvkzXJFpN2/aTlpr5gylxnQbb6J4+oFmwBH2SzeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eidrbywo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eidrbywo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A764EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744700393;
	bh=5RBYiyHQRjO1Efb42LlIhrMtwQvGsoTj234Q4h07BaE=;
	h=To:Subject:From:Date:From;
	b=EidrbywoxQplsXh4GsrIQhFxvmZSuRko9kmtOtUNaxxfmEaLeuuDjhme6VE7bBrzB
	 3VEuyUEsOuiZIw5GsJluwOeKDSa9S08Z8lFb5mJynT2AkUPdBOaHq5erOHYxeR9a5Z
	 81O1Wo7dxxzG+ra3rm9fVDx6timgXtSfjVOFsQjeP2GJWtHqmjd0KVoXKCFqkqDu52
	 WQ0Ld2KJoXjsqCU4rXSgywQl1dYFxFbngjPmO5zqZ/Cv/1OBzwF54IPqrXWGdu1MGk
	 3St36cVP1gADGIWMefs0x27Y4uzBc3F/795GfbdLThgFsa8bRXNYKi+YDoKcSc4RwB
	 k+d3Ja1YTR+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984A5C369B9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470039361.30965.11713472631287211924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74c8e649be4bcc54b076e31b73c8d427106beb05d95000bb7d9e688696658bd
Date: Tue, 15 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744700393
