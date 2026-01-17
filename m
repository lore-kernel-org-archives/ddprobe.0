Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1922F2BB17
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768611834; cv=none; b=GA/S4TaOCHVY69ism3sLu+m4BKkbb1FlFmu7KVMsV3P2ODI3Fq2w00RGlab98NUUfAbE9tYjq1upTXWSKHULA9NSwcIMuS8NZZUML9d9g2nKYMWCBtvs03PE7UP/bpJ5fJR4Q9th764qOqFNYkdF4G4nO5/9RA4e29yqOg6HRB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768611834; c=relaxed/simple;
	bh=NfEdzxATtcmYwWkeWP77D+TJCrNPP/6a4p+To5igcII=;
	h=To:Subject:From:Message-Id:Date; b=DAhjkjsaCr6fnKXCY5ZI343MMl/crj0SohxafXmD7wqBS7WruPhHVIQGgDJl33FJp8ZvcRi4x25O1MQJicoOr49vaMdDw8r5aKtOCpGK2irnvWdlEQLPZaM00zp04zyz0ht/1XvF2pjnbdvArdYoFCPcVmHIBxPCsihsHcnafnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmRjaZ8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmRjaZ8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D6AC116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768611833;
	bh=NfEdzxATtcmYwWkeWP77D+TJCrNPP/6a4p+To5igcII=;
	h=To:Subject:From:Date:From;
	b=GmRjaZ8ywH+mIcF4opdp2fiSx9K3OddJlWTmb2yt8Fe5MB6EjnrSwndiOjCLw5ET9
	 NEJI1oDeodnhMvABFYMH5aSpkfxGkc0juWHixiFV57sjW4zCpjlwud4rXYgdSfaqoe
	 nounhmV2wl17FnQlgvfkO6M6jjq/BCDcNtu2ptxwzwZ0ckRzGghsEEw6YyMWe8jMUB
	 tWxE1L4suncZEASJ5v0jOQYk3DRqGPjG/YLEDThm7fV5gm5Zl4T4bSS/C9N/TXV4Ux
	 F362HHeFRy3E8noWp6RihPITRvWQA8jRLYl3MMwV8fAJbwYZYWLdLfMvVYwJEGPWZP
	 g5XUr4M8ywyJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B0C9830D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861183359.13993.2096796929078302905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b37c90b9f7ca1eb12d0dde2025c47b994f95894962917bd30e174efe3506459
Date: Sat, 17 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768611833
