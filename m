Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29721269D18
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777822654; cv=none; b=mR2L2jW05r384HgXxvSKpRmPl9x0+bk1mZ6uPkJPCn5L7BkBN0hLRxopb/H8w7VxlaUXtNF675wtsT8iFEH3igINvQJs3oofZ0oyupFsALPb6gc363VjBlwGsURd3VzOCknIfAjTPTQl6Nh83gTIsVhZADapVxcrjxq/2E3dhD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777822654; c=relaxed/simple;
	bh=aa++oIT5+jnD/z4y3QyVV9y7b0VYavmBsM7nyxbAcQc=;
	h=To:Subject:From:Message-Id:Date; b=OPhY4G97Xs6POetReb7l/xv3TtOEcDoQ/5OssEN2JpyRpgoVJJZE4JXIXF3pv080aCoIbWrIEauLnXf5z9w9n3xHXmhZuGfY2H7+4WeJyLHqJtaJjzzaLN2K9hnhNsiJRP97cia68ahq3PDB2CoJ9NTJ34kkhqv6kHLwGqxX9cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJJ3hW2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJJ3hW2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B954CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777822653;
	bh=aa++oIT5+jnD/z4y3QyVV9y7b0VYavmBsM7nyxbAcQc=;
	h=To:Subject:From:Date:From;
	b=vJJ3hW2gyU+eu+MPgEFhJXnfg2H+8GllgqUOzfDg8NI96umR4+6gf3jSEZJEu2I6y
	 DL6XbDdrFP9CF+UpZUu/c6BMCO/SRAly+GMNurL4q3brZYm82Ls0fUyRdZo4yjGH4A
	 fV9DnN81eXrD8tHSDxX+lP0iJUPlCg0Bm+/eWYkFm6rLvZhRsZGbc0juqA/ZDqWRwt
	 lB8yKk2aAfJBca0MmiEXWj2Ylondm+mHSWF674ffog7o00wMHvna206394T7baE94R
	 Buadio9WzOic4HnBElcwMocWgCE///kVL7N1yVywbfv0y3mQPzwCBCAkBPEufGAzpl
	 k3EtuBZEg0v5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EFDFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782265368.16492.13154371359833348004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3cbc63296f0763e0e1bcf2cb590c8c547a3cbb276caca563b406552273e518
Date: Sun, 03 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777822653
