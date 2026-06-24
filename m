Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D183002DD
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782316654; cv=none; b=HIkLbWgfZVlbjn2sx+QEFoqbdi9tFMg0GAANvo6c4wuouYWrrP2XTPmvjkKO7xp4DstSRHfxtDaJmjuGUsXNiNJe0JYJxLcPc56njX3UC1O17/xldG9+M+zqdQyhicLWVs3rP/PT0XCbbkwggMSqwCXSN5LRkZ6Mzn7XRMzyqGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782316654; c=relaxed/simple;
	bh=1Uga88nS8qdKT3QYize7clLa29A3VJF0LcRf7U96jR4=;
	h=To:Subject:From:Message-Id:Date; b=mNImI95nSKSewcsCZGo0yoi6KJMvkCXV/xd/w0XkTOLq16870XwOp6SoJU8l9/Ohij7u8pZwKT9IJrOEFhMK38JAjmeoPiUcsXTPuTjQPeO2zTN8EFLyPi31Bef5pXF8m4ZzWPL2ZAuGD/x1qq3W+GPGuvSPFJ3S9ObqYm37ueM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i03Zf5Sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i03Zf5Sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13EAC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782316653;
	bh=1Uga88nS8qdKT3QYize7clLa29A3VJF0LcRf7U96jR4=;
	h=To:Subject:From:Date:From;
	b=i03Zf5SxYuyOOZPtIH+WfKkrW+vHU75z/SYSpAIEAB1jhLOWhpuWlaKBk1u29iloN
	 r+R8kiYycpKZDmHuUEzvmz7bQwuR29iKNi5dlWVMqynTnewozBdrw3/7CseuG+vWYy
	 zGy9GIhGI+QiPvFlGDSbguYc+YZYwUQisYQovWxi+ao56T2v+jOXc574m2rGSONzVi
	 eCPTgLQjWczcTkwYD23RV8tyVY6th8Dfjc7ivRPIKFWBM/02zfgoOB2YnVEU15PGUQ
	 nTUlYGwq6oLg5n3ml68lDxq9/mmC1R8oILLbbRjvRrwu/3q/5uCLPU58ahG8yybWWy
	 jEKOMmhkKaAMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7563CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231665374.17427.10211692560393410899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a03bb83b306da816fddf116605086eee0c2bc5796d961f6d7fbc5230470f663
Date: Wed, 24 Jun 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782316653
