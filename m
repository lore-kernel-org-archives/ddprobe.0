Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2755C46C85A
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788351634; cv=none; b=N4xXyGcdtoCZm15oDGt3yHjs49K0x3+Fxjzjo2amymFwaP0hKZ6eXMyqnDLrljeCs+NT1iUWXmjf7L/K5lMP+JFEf3kuAcLf2xImPePklLfjYF3tkSiJS10TyUkxegEPZswXTSG94hZ2DZQ198JWnH8DzGGh07k8wtMlGGmDw/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788351634; c=relaxed/simple;
	bh=pgHDbMwhbp1Zs7QDELvx8KZ9s9ASCE2R2lBN3OYFOws=;
	h=To:Subject:From:Message-Id:Date; b=jBFJUhRVChqc0ed9qUUF1zklqV2sTx98JcDf26RK0Q6rv/Qp+b51GDn7HvTqZbrtTGA1hmf9/BQWQByT/dupTm7SMhQQnZ8M59oabO82GirIqhSz+/ANYC+sdG4X0QbKrOOpbAWB0t+3sD+vqSYJ+1pdthoALkbhqlabXB+PXIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ay5rE7GP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ay5rE7GP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2701C2BCFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788351633;
	bh=pgHDbMwhbp1Zs7QDELvx8KZ9s9ASCE2R2lBN3OYFOws=;
	h=To:Subject:From:Date:From;
	b=Ay5rE7GPXFumv+JMeqbj7Vsz6g+XcKwTS2KUE5Nc0CMT5fI4EFM9UtOw2rGprbcCc
	 rjZMCbDZ0B3GhNkXMInmq3VdO5nqG0cQPtFtY5867QMs6Vo8T/ehFZnXN0c9t9Id47
	 lldeLE6dyaZIelST07w0QUM+jHEKfmd4poFmSaBKSI3JHlTk8LoG/ZsZCMPCPhNrEi
	 1t8xt/9wXks52c1yNRQK/QEO8bG3SRdmrkyiEPgT3tSxuqclHbyGT9L+7a0tlkfgpu
	 PhyAkTpRJuGhAZGSr5yQpp3gQ0FFlzbNb+aR+7Kjx1w16t25hE9kYQv2ybrE2b4xAR
	 7oB9g5RoxqUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE03EC624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835163370.19450.2720096033085593145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de0b81ef127599f87a4b10ecc01fd59314432ec8ac820bb189b13127c987ada
Date: Wed, 02 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788351633
