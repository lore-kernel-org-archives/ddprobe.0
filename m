Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2826A27FD76
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783783114; cv=none; b=gYJYQrBgA5UqdwxRkzmh5ATUV0XYfGAdgdy+GO3/c5x+NpXlpKADEFGFQ7xYyNarZStavuk/vURLM5o4z0hrxPMHlzlmrCuXP4FzbyQiPk+er24xX3QIlgVdLq3GiMrjP/kI6qsohprhcxvjE6vsEGOPbuymN1Z5gV1Ujiifqu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783783114; c=relaxed/simple;
	bh=RC9gZ7oVq0IfdOq2mhLFLMf4C4TwdnA+HBtxpZU/S10=;
	h=To:Subject:From:Message-Id:Date; b=A9N2ShPieuYn8swcSNnRaeFEgOZ3D+psVdaQP51LKu1rU7CYqVrCQiaKjYssHNNaOcpJjDfRnxbvrAOI36dGgHSIhLLQAiuIt22HzQuhPDMNVraF/WTy8ip/G2jVtrgwDfAdoix1ckWj06fkvJjMtfRS2Zcdmm/0b3LFxgKeA8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuPFiGGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuPFiGGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB52C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783783113;
	bh=RC9gZ7oVq0IfdOq2mhLFLMf4C4TwdnA+HBtxpZU/S10=;
	h=To:Subject:From:Date:From;
	b=nuPFiGGlhCV6Q9PNNwLSenpaB/UImZjnGAG2xBPNticT0OD3eTWUEMniQBlIKVJis
	 x/rBP3tdOxZycnK31kjkpqvDk7aPRzgG3FCuYLVjRgzbVPxa4ZADK1Fh94aFoscaNi
	 k5wKxGUNKKhqYhWSw07Kqhu/E80cA4NwWOrc+CFIP/l3r58CKF1D7JL3OWcv1vc6n2
	 yjMaOSYV404kDQWXjDqRhB6wJ6FCPA70UomqEpYzRMe2Sv5PCI2JLg92y1pGsLFp5Z
	 kieEUB6ZgUObJEvoKDLlUmmtnblv0xjGABPil86vhyaxR415QB7h/HqlIV/wmf92Q9
	 cAWEInQI7i0vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD765C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378311368.9894.8578506049050246451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbd76cbed07ba98ed3dbf8774a6a566f09f5602e76e7b76def47d277e32bfb3
Date: Sat, 11 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783783113
