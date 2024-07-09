Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4639A1B86ED
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720554983; cv=none; b=SecL7YXGEsh8E5Oobjsv0srCVzKEtVaJh8X4LgiOFfzhXcPfl+VM0x0r4e6k/SM/MbulyjK3E8cjTrkwKqFuxUxDuYHdgqpb7DF+FfTz1OJsZ1wayZOUgxlg5NUQAAXTd1B3f5Dv74DEdNWl4ciU7iZJfWRegy6B6fDlCFkw4r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720554983; c=relaxed/simple;
	bh=HKYL97DbKUEEkZRZ8v8VHB3Y/VVZCJa5nazdKOZGGIw=;
	h=To:Subject:From:Message-Id:Date; b=FBx2MVT4TiTOt5eqbagMDg6RSqTC5/Q0wr7P5/pjFKr+0DE+uRhBzD1+y3T5LbZtHlYFzkyNTTyuUkTZRP7WhrBEFKefvkZeOQ3yF6GrILzY4QitlCVjyOh2AeTmjjS0fo2+DLO4rcWdv+H3dRPhnowdg/w5Jk0udsehziWZZ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K83bcPP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K83bcPP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF292C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720554982;
	bh=HKYL97DbKUEEkZRZ8v8VHB3Y/VVZCJa5nazdKOZGGIw=;
	h=To:Subject:From:Date:From;
	b=K83bcPP5DhWOzpTNY5phE3SMamd/R5eF/KvyZPu4KUZ3KxahdWCJ0KvG1WI1Jzw+N
	 Co85n5udTqZmJAODn8nmSoyNzHFtli5dWRDuIG4juRo7MbB0uXLRZkz41qOSbUJJo5
	 GI2UfqcXwVytyYuCUFAfEdlQxsiKtcuk1RQtY9J8dVmdJELUmQVA2dbl4Ft3IxDkzH
	 Vl/LEA6yMwFw8OWD4rl1DtVyPRUze8j8Vp5l/N4C3brf03YKkkKezkp98Pde8r7pqf
	 Uw1DL2c/+YLYy4BUXBsQl3iI3NzxuSLzWlPalXZpO4a5sIwC8WnnN6MR2Wt+8OtiqU
	 7gHLnkUoaesBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02E9C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055498277.20381.9572373276646838605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a718dafa2839082cd3a34dc44fa0ab021f49c52bf60836fc96c79c96889b5c1
Date: Tue, 09 Jul 2024 19:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720554982
