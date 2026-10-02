Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B449635676B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790928634; cv=none; b=KyuiOwulk2lvhHstDnlPpJy0XxCFaF3mXYGU2UK0cs1tlD+7A432P2+iLQnpauBOmlZuCMDf5KUqDlbEmSE3UGsSov7e/exaYh30qZPkJC4gGoLbNtXSa4Voilc39dZTOCQxz1/LRfPmU/W02aSz5scA/7QJ/1nkrvpUlkpDwGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790928634; c=relaxed/simple;
	bh=8vcnoQ/xG/TBJ869otEj6b5Z/UJ3aVotRCc9BcEkljo=;
	h=To:Subject:From:Message-Id:Date; b=t7ormX6AXbCSgcYiAjgUAuBLjrBKEjULgf/908jkfe7OPZuomybBaU+bV8DAf0qI8bJjcXBjeqzw8TovryUoZkhkCFDOooxjycye+BJW9uif+DIFWqe/0i5cwZvwTpIhMQLos/VSnK6K0s0Dw4U32CZ5CLg6mX/NelbvaOKp3Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upkxSHbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upkxSHbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD1FC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790928633;
	bh=8vcnoQ/xG/TBJ869otEj6b5Z/UJ3aVotRCc9BcEkljo=;
	h=To:Subject:From:Date:From;
	b=upkxSHbBYHBPs7g40Z0XoIEBe5sxTemUr2l3OGSiU5DqEBYzkOARMnSbJKxgxDLdc
	 pzAXhln1zn/C7a4aurmUGGCUMwQXqSoC8NuLStNicwNl96t1geJELQ1uaSCBi1E495
	 whsgy+HJtu3vfVgYGSGkZUhF/gffUgH2StABusGl2VrDPLgXzgc6GOCrfGb1LGybo5
	 Q7IZiIKa5Pi+0ReH/eUDVRs0GjxZX8Tmx4klPYdyWVKo1WH2MUffeSSJzzULERQcfC
	 mAoBMfy9lTEGqU9M0JBWB0kipQnRu12aqAEcR8bWcx7M7k0wiZR60miZeyDtgimTRH
	 FAifYVsi8B7yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA235CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092863368.25604.2930989301462109778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0a63e64f76a25c8376565cf05a795576387475e29fcae3e36c739da855fcd3
Date: Fri, 02 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790928633
