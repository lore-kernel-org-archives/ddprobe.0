Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349F53016E0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782601114; cv=none; b=D5lGpPESUIfoaQZqQw8RFDKzwEl6/Q5g8YSAHeJR/pn7FTMMasuuAjXrFyoMQrXC8AE+CKvfD1saNTd9+Bk7tNh8T/nwVWl3qMsfXLPanLRh3rAocyZvKfQQ3VKt7DB+xzYpHrzUyW+hnt5dXYSABCNdo0EfnjDPH4DGuCRkD1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782601114; c=relaxed/simple;
	bh=tYQa2fJUiJyQTdDXdyBak7O2pT6m8e+340HV/rAab3A=;
	h=To:Subject:From:Message-Id:Date; b=P0r0GKqsJtIASMgQxsTYQn5ET4hERQvyPnyxIiNWBcpdIxcFPGLZhNuZgSySByIIPI0OlKnDPOMz62CO22/1vhU5za6/k8Qdh4rnRXHpswwDb34GcyAtJ6hBPR6ELEvapPCknOIZPWpiunHXZIl9H1TY6GmuhiwWqoITEtZodEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3OjXPJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3OjXPJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E8FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782601113;
	bh=tYQa2fJUiJyQTdDXdyBak7O2pT6m8e+340HV/rAab3A=;
	h=To:Subject:From:Date:From;
	b=d3OjXPJ48dc0inQVOrt/1WfcgDFtpU5I/ugyMeENnHKOj/8YTtxipM3NDpor5lAxk
	 sxvdPf9bgW6fYbW6CABGY+ek34r01VFWKop3o/Ueo+oxU1OP9oJJimgHGLh8nEztOA
	 DhYG+hiWsBr2q01qfHUh2lfV0GvtpEwb/Bwk8FN6n/N7zoHZX3dXT3AyMnmZqzgZGw
	 Oxs9b4+ggsHsyHWi/0WqtlCuA6Fs9Mjq+EPPEwpECgOEjPLBcoHboaiN4AKqaPLU2N
	 aeFYaUJw9Nl25nAIPRfn+BOVVFhbVW//heuRvCs4awjiyiAtgvN5AW6Kxpxxz5RGLn
	 2rjHBXS+yzW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAC0C43327
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260111370.9024.3746144548148536914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed0d7eacbc93b5b71c82bba23d319ae98eb7957cd4328ea79bce4789739c614
Date: Sat, 27 Jun 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782601113
