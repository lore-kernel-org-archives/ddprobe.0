Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E60026738D
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759530594; cv=none; b=tMcPP4B4sQaCaarmW/9ne2Say4On9nEpJ3vXFtikOC7U0DoXpRY0GkydSloFHAkX/Td3nj+bqPtz5CKuOavYII0KzP8AEt1+m17/tvnsbE/FV6QALldj4/1RW2FL5U3EiLPtICkoGaq5QVnGG5aH1QnG7+lI/r465FfaDkRVPZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759530594; c=relaxed/simple;
	bh=klnZi40EsEcAVMjt9MB7ns6N1Zsjtpx59xoLKroWIkg=;
	h=To:Subject:From:Message-Id:Date; b=FqCAaq0bEBH/0m1RBMgdHcc1crVZW3seIZnSv4C3mn+3ka9JXgN7v9P4C2K+mg8acU3LXJE0yGhFJGGRYtvk1pSzWfRbdC1nqfD5S/m2p4eHjMxGyntg+Le6WNyz1ivcbF2kXFcZRzQyfDlp31dckJRG6TTny98Fq7hdlR0e5t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ3BFFRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ3BFFRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41EDC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759530593;
	bh=klnZi40EsEcAVMjt9MB7ns6N1Zsjtpx59xoLKroWIkg=;
	h=To:Subject:From:Date:From;
	b=JZ3BFFRa70H4rvLOJwuVqV9itehGYbLjFBPiz84im3WUvxJxg384i7tD6BeR3sepQ
	 9IPNw9TsPGKjL7mJ1l28fDV0VIxZi7pYiPbdiiIVZgYt9atPpm5SLdu1Qr9HfrhCLh
	 SYyoYtKCMEyo3n5mFpO3FN17fRTF0yJhQco0DJu6dVhtmYmgabt4J9+WWQBhCNnAcD
	 A7O9D7J5CahLTnwfy8s+80efpq17ZfckJ350FXirt9T3wGTGY0sNHeUmSItTcus2bH
	 LaN5K0nUDVUyjONv9IOMLyIPvPAc2ztZm5+LAxQrvyUmYhAxsZAgpwZ7OnRsDCaPsg
	 JhlZhZ5mT4vHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA2CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953059357.15277.17753139911026630264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b977c867523c2aa7bd18a6004324815005029d456e720260f6975aaedc5dba2
Date: Fri, 03 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759530593
