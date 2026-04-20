Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE7D2C326C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776662854; cv=none; b=pa9x6ujaL6S6lXgdZYlKgB9u5cPKuvfX6IgEb0T+trgvedqnd9dJqWd8V5xlVAs8QPbmcBg8k8XlLJAziL6IePfZk8zFDc3SHX1Ikhlbrq73rJ76LZa7B189efDTHBrzuZD8CXrmM0WuN0wiVuP/QtJUOrcs0z6Lefw3fO0w3aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776662854; c=relaxed/simple;
	bh=FKhuHaCFWqJHzMfm5FgG7a5Q7c3KOOn5JUvjLlm2wpM=;
	h=To:Subject:From:Message-Id:Date; b=DS/ntPHsc4nGhuTioURR1FNufBuQOeHtu4W+YI5ypto+FSlT8545Z7vQDnNierD7cL9eFNeubOhymmYVQAnfLoAY1ORJHzwGSMyKGAa7sWBnoTuwcnxBnUwpj89pnJIcwHvy7yX03fVKHn6QvYEdlzM7RtcAGvjo5FNN3170yUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JW27q/nG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JW27q/nG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEF3C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776662853;
	bh=FKhuHaCFWqJHzMfm5FgG7a5Q7c3KOOn5JUvjLlm2wpM=;
	h=To:Subject:From:Date:From;
	b=JW27q/nGOu4RcEY3G7wNOFVaBxeev6ozBhrKVFtwewj+AMMb3PmvJI/j9m7/L+NLy
	 cxlu1i8bPvFGta1KZCr6qU5xFoqlyoK7TokCmTXERFoHMn7TRO4mG6UqQ0dr/TCPdT
	 B8St6QKmS+Af3KewhAJMY62EFkAZtr/wvUVjXr1D/hvmvmsc3Gcgn6MsQ4Ahgpx+zk
	 pKsmfxmRw+OVtfwd3O/ucLcKaL1UWjU7sIeRJLgDW+FyiLItkgdzYKcTBi1CTYM4V8
	 X9NaREVMpr7HIppzk2wd2QR9141EIF51AIp+sHuE12Gh5ubsbUaOQgBkl/0I8uoIAL
	 X1rofUz7hXsSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD027EA71BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666285368.17425.16341936010848962481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18499a1156c78aba6ed14307eba06df73401abdc9a81a049481deb6d4803b8e
Date: Mon, 20 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776662853
