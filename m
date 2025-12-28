Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324F61D5CC9
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766896434; cv=none; b=gL93TNFOhTJ65vGnTf+/F2oZ429shj77h4CU45QB1YFOeRavfGVssY7dfMkRDP5CrqNIrx8BQnkGVmufOUHHKpmC9BtxGO1e63ha9Ng72//cNWJHuRd1387uFhg7ITdYvQ9vC3A4A+KCa8Pgc45T2VJX4efWW0gPA/V8tayLTYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766896434; c=relaxed/simple;
	bh=zh8UYHccvM6QVnIvkh4JuhgI93OnWGf7/NbheOvqPqY=;
	h=To:Subject:From:Message-Id:Date; b=Nxt2kPuyF4YvbNkVzh0UDRqfDqlzjoGf2Nvl8Q8GZfNj7lghLm8i1cXkDaKQvsDuM2iDp5xCcixB/enSl4381kwag8tk7HzGBi1LqmQs87WhOJCc1nhWCm/T/GAG78eUSjsXkdnTpNU/kHYiT0dc7e0Uw8UwwByK55d8SQa0Xf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj5EGyT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj5EGyT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE636C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766896433;
	bh=zh8UYHccvM6QVnIvkh4JuhgI93OnWGf7/NbheOvqPqY=;
	h=To:Subject:From:Date:From;
	b=oj5EGyT/DSRP741U2pk2/l55R9ZqLrC+ngTlwG2vzLii3UAFbzY9GUIaQBUGxX21K
	 bpAD97WWWIzqYzzr22wAQN93ug/XMayQruH6Gx+Uijjo594K688atHaK4VMRFZYkVx
	 Th10Gjr3iPl76ki79gnabuPc0J8hhWO+ZWAs4k79extBLrRIj+AOl1hJY0HBn6rval
	 hBZqTdn+llKOCMBzqA+RrlQNJCmIIr3gpuLCdsHulV38UH/NSwQ1/XnCEv0il10sGT
	 Rk9hSxhjAjh+GMJjg6eVaNOWay3jiO3LUJCk3n4qxL6m92DFYiatM15ewrOc1qqUcO
	 aWxCvwQv6Il9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C2BD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689643359.18006.8343980260796375858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a35a2dabe8b590d89e9388900c937d4521480c47cb031e8a7101a0ec6e02f4
Date: Sun, 28 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766896433
