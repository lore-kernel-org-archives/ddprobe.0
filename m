Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E76489882
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785924634; cv=none; b=NmcG4MjzDetOjABP/x6L2z+Z2f19DDP0l90/xhn+Ovfy+Oh50LeHsKohwjaB05GLxnyZWf6KpeUlF4Dn5uvl0j01A1HC8NBlXrh4RfWBEeuWl+4OzX7hUCJDKx0wqs7C2afht5Rg+s2046FZGnfptlC2npZUciU/QU6ef9XthL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785924634; c=relaxed/simple;
	bh=Es7aamvrRN0Ks09BW4+nLbJXC5vpmPWD2RX8svKNaBI=;
	h=To:Subject:From:Message-Id:Date; b=F+yyibIRxsuwfyoxNhjo/MHRIrh/ECAuq7euweVXdtOZ/C9pQNkcQuAQRY8GLI/4z3EXNiyStbIKJNPnicnmLLVS9fAsFzTdm4pnpnm3uNbWPk9xC+iP0uQTEFPwhu3zxFIjqIxXzohaxvNj/Kpc/b+l84AanPUE2c4vk/3/iRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVajj2MM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVajj2MM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D011BC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785924633;
	bh=Es7aamvrRN0Ks09BW4+nLbJXC5vpmPWD2RX8svKNaBI=;
	h=To:Subject:From:Date:From;
	b=KVajj2MMnCYaR+SxYbiIm4bs+B7faDbOxiqCA3RkgfAn5oWOgI4BdsBRZLjKPhKRj
	 /SwEjSZHJwPe+oBLpHo9MQjuZVQ3dc+itzjLwynUQXh9BrZ8hapU/cuhPlkuxkon8Q
	 6tq0+IWGElgOfDDgI/qb02XXY+tGGSwjOxmnHMVR+z+PAb+nK1pkSzjlWn4Uybki0p
	 +bxqPOC0h70EYS8Va2EKsF7CGwDN/rSyec+98Pl8f1oedir0J6SCdTth11igSZOqs4
	 oFfkJankfP47XES8kb3qvNBJ9pLX4JavRlykEoNTyNLJ8yqueFOnNPAJq7d+4sBUaT
	 kb5fyuBtXp4jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB69C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592463369.12757.11979014580105385667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c199c387c5206a44295fcd56709fc0227c9c60c57a1e870ca52251097747d16
Date: Wed, 05 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785924633
