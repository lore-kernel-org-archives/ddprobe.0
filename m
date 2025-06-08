Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289B41A83F8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749358795; cv=none; b=k/iht7MzjA9uxVoinkjo0HMmnddKuboc0/FTBjyA77+ZwQmw9ZHSHM4iwq17fFfUZttCt5IfFcsw0jaKqhn7l9gf3WumujAjhvdLcgvweUrnKtYhUykmPbfHJzYPO9FmT/0ddiG5Zs1nVs+swoLSRLc5l1Zk4SVw77IzYzVG92A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749358795; c=relaxed/simple;
	bh=x2EjWjN3GsG7qZWycuDI8pKsH2byClQo2W70SSFu7iM=;
	h=To:Subject:From:Message-Id:Date; b=r2v+m6UT3XDZiTOG6MaAv4vptxaNwK3/zI8KtweQuRuBhBpicptBSum2T5QHr9UNzgiNIxEqSx6uXaLRHbA234vBmj15UNXrb11UXaF2LoGdkM7LYItYeSFo73kIaU8RTduxj1Q8pDWQICh3ktrmvASErrZkfh94w19dMjprqYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUn+hx1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUn+hx1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E18C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749358793;
	bh=x2EjWjN3GsG7qZWycuDI8pKsH2byClQo2W70SSFu7iM=;
	h=To:Subject:From:Date:From;
	b=iUn+hx1wvWHunqupED8+TZrHa5Qk+NTm5P0mbDs8WJ5mRZdN6neXebhMJxbefD8vR
	 iz5Y7wRsqB05mTXj1FT2RCaJ3rfQe4W5ZqV157hyFG0vYgYobeqyw1Z91wcduTGOJF
	 Pl3hp+u0rGEUuoW6NL8G/PLcpI8gN5M3T8vI2P4GMA2YqHS4FOv9Hv7IKOVMK8yPDf
	 shPfsJ5UneSi4+mf4KOl+IKJKznjwOJRrASTJjCbEuasyxQA9Ox3Lme+nlTmy5c1Pt
	 wJiJS3QrTgFC+dZaTg4xRO0qJQMiaALbv8xhbn1JDoSYuw7JzzPrsYhK9zkhtI3m78
	 WLRz2t/D76tvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91731C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935879357.901.12366220164130410594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469d1cf52d05e6764943f5ccb9c2fabda63bdced79a23c4272cde6f4c9b918f0
Date: Sun, 08 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749358793
