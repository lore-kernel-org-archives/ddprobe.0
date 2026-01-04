Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140BE2F0C5B
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767566634; cv=none; b=N78EvotNp72ZCKx0rtpNUZEIZEmUSvPfoym3OuHRzQnTdL+237UwqvXrqiT6W1sFKDQp7wbapIpVMrAlswsBH28UOuXqPk6cvfanFnCFvkkTR3kbz9n6nY8RcxktJngAtdpQp4GTzbNZqLHrkGdoTCRsNp0zDtQMHNgUU1H7aJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767566634; c=relaxed/simple;
	bh=6P1yKJ72lNiwJgXuCowjoiBPc45xUD6akbu4IuoACGs=;
	h=To:Subject:From:Message-Id:Date; b=eJDrMSgaAIC9kITXN04Wjs7ouxLtNamqVhvpWH017RJszUEEDxjtTYaLdmNSc9TbofScv1zI2RDVkNns3ESN07+E4JtEPwACF1qPwhXKaDZRlRjcP/BUF/jIt0bUmF6RLQjPxIXIyoIm90/vSFzgxxDe8bzCvWOajuFaPqsTDbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvhG4ZEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvhG4ZEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C62CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767566633;
	bh=6P1yKJ72lNiwJgXuCowjoiBPc45xUD6akbu4IuoACGs=;
	h=To:Subject:From:Date:From;
	b=RvhG4ZEsUAUgzBhCUq50+FXM/GHwEGKd1qxqlMCGaezN+vOc5Xyf9uZuQqodh9Z5f
	 GfH3wkx+jLtCbuA7qwG1U6oHFMW9gi4jhpMkijK8lXNS6raMqxFxJt1HlLoihAtTuC
	 +mC6L9zqbmmnhOiBWuMaZCC6xLqapdR8hBAiv4L1dcLXmhvxBydVlueE/ccYqhuobK
	 CEJmePKrFUKAj3/TXBZGXAM9NY5w8RyKuckwDAaeg/nTeNqTVtB4aGAEF7KAlB2tHp
	 PszywVYgTh4AW9slnR7hiqVS8vzazFUgVxE0GuNIBZWkpvTYlQAtTNe4alkkFgw4P/
	 JTmIO2D6pMtQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B6C2A070
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756663357.1815.2297941973556369198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7245e80780a7cd99266e65aae5581db98b4ead637df26f7cb53767a005746a6e
Date: Sun, 04 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767566633
