Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A00308F0A
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773527094; cv=none; b=ctU2nj5Oyvy5MLAcRGFqpH+TogxIh5JdDFef4UBCumAo83T7R6VNUndfVfHqFEJjKIOptvy6JbwxsHbC1uPE0952Ct/QxnPfX3DTraohBqh10nQyeb2QR0S+BIJREiSOVAebfbwxbnAm5CQCN4yjomSRfsVY5rxkAxU/cMUDUM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773527094; c=relaxed/simple;
	bh=ZmIgEm09eDh4Gy41099ENA1MJIOLLFAet6g/tFYNE6M=;
	h=To:Subject:From:Message-Id:Date; b=S1POzRIpbspmtKkiiHeGR8SgF0j2t50tIycw3Tqi8c+h/xt33kJT2eDWYo5kckgQJ8L1+7Pz5U9NQrCT1tVjNJmyv+/6c9bCCnwTQm8klk2oZbWUKZ3MPRiY561Rw2EVZ7YqPUdajxnmkYsEpzQLsoDzxqlzzx5jNccyYfisjYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1/OSu2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1/OSu2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3155C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773527093;
	bh=ZmIgEm09eDh4Gy41099ENA1MJIOLLFAet6g/tFYNE6M=;
	h=To:Subject:From:Date:From;
	b=J1/OSu2fMkicmIuGr66KumEo7jThTQvlWMwqEB54KXOzPZjeRAYWQAS5MfBMAzjl2
	 ybwdmnw5dHAWbJXm7Y6Ed8fnKo+1iHm5uQnIcp0PRkKjYduIfmKIJivBrG6Z3f1I6E
	 yW/aGrOQ4XtZCSKhuBuZNN9VsBefmuyvPM3AxJi/GsihsNc280CUaLAibZyiwD/4Nk
	 JZv7tO8/fhf/sqXvhJj68SAQNFHcy+1Ocr9uQXH1BXp9TPKYh4oTi1k0kdP1FUbb8J
	 2NOxih3WBTNwQwAjFd3Cfqa4BnBhat0TM2I6DVUQW5LcylWgudPVgG/SHQ0o5+1Jjz
	 vPZywZnxyADPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D35710854B2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352709361.31530.726237503311588581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0101192d58b54ae773c4820f3ec0d7cfc43f3f0cfc9be66b49c5f524410551f0
Date: Sat, 14 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773527093
