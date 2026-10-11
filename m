Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB8318FDDE
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791749434; cv=none; b=vDF8FDZrs8sHDEuPHksssOQDy8rARlcX+C7SswqPTl6pX7f2J2e2k34n5Y66UP89xNp3ADZzHDxrzeZWqvFcTiPc4u1FmBN99ZdWzE38ruOnHlBPmNmX7WjamhoW66EAKsB2f0FajMbwCxmykjYg9d65zdWaJaiJW7EPzskqigY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791749434; c=relaxed/simple;
	bh=Fm401bju9zV0KpSt9Jij7pWLPmAJ4skEiS7ySidccVA=;
	h=To:Subject:From:Message-Id:Date; b=kOIN0c/Quifto7cgQ8859hc3VZAQe/TmaikPFwTR3LzUaw/tcSDH15gvK6YHzLlrPp2KhZn995rVS75miN1BYOba2nK9xfJ7dIsxhhLRR4CeNX/qE7oKouP5yP0z3Pyx9C62r5ZYIoyioqE0pouoVwcEo3IS3Z9yrNy9O6uBTDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3HXGe8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3HXGe8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3820C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791749433;
	bh=Fm401bju9zV0KpSt9Jij7pWLPmAJ4skEiS7ySidccVA=;
	h=To:Subject:From:Date:From;
	b=I3HXGe8E1xJ4HdNA/zzUw8fryK3dwl9i3dWSq4UoDqy49FFLkne3W0QxmwJVtuB7y
	 O20LR4LR6OP/P/n52YZUHEcDase9hnr1qwNppIXgZiyKmyVTdj/PB5CkvfmD0VqfJl
	 g+lQmvaCmAUz420Jxt8BIp3hMEqzZXFuTBSUcgpeKhpqnF99oYeP7hKjGeRWJpVsVY
	 ZRZyFegQRSFBUC1Vzu0PeoAIM6hnW8YovqkIw5fgrd+wLRIImggKYTA67NMO9o2+vH
	 slp32o0e6RZ7W+g9oCUhpPghVtyTZA8glGNSKtLeeKJd7GKUkcgY7zSFbtmu14xoJl
	 KkSo+MRZc0zTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD898CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174943368.29363.770640757436598024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995a1a8ac83a97e0c43afd9d1ace344be0365d1d87431254a2b19e2b66992c3f
Date: Sun, 11 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791749433
