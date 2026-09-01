Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A83C3DC4C4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788292834; cv=none; b=m7pkEhT9z9V8knuSJ4jW9X0EtEO7OdY4eW+ZkuO5rrn83eGhy88ujcIODUm/BTgGBYu78A1EvwjYGh0+b2DpywMcs/6BD0v/2Xgz6GO0w7HaBpjV+mfi5rWW8V44oOkTzWgrzVvoipWW0MEdmXos1tl5Ie1Lz5z69uIDyIC+ngg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788292834; c=relaxed/simple;
	bh=335yKdkyvGbrVweTJ7UiQ7/ZVmymb7uqySHnpdyRuYs=;
	h=To:Subject:From:Message-Id:Date; b=eNF/3YpwUh47DaqRj5/WM7DDzRltLCzdM7L330uth1UXVwGbKifFSvu9HoFNv7LL1gCIiCOmnYYQpPawnKw31XlPDqe4vNiymbC7Fl14iSMGjqAv7XobTXBIXQAI8iiHHq+GPRn+AA81pIFnG1lIKjBouQeo51Njtbc4hBg1alg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAi59qGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAi59qGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FE5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788292833;
	bh=335yKdkyvGbrVweTJ7UiQ7/ZVmymb7uqySHnpdyRuYs=;
	h=To:Subject:From:Date:From;
	b=qAi59qGShmR3yOk63fB2lOMEQsYinZ9RV2TaPjJVx5u5Yubg6aOOYaJLOfV+t83Cn
	 YqPij6fFZ5o8azvCM1u1pe8hGXwMxd4R59HClGksIJLMM1AakxafQj5or2UU3WgYWU
	 zZOpQzNFIvv5PQqbkwy8edtS4Ar7y25L67ckTYMQNusuVcfYE5zoo4kDIg7P3mlsOS
	 m6BOvt04qTrnQVZJ1cj8xUZK+cs2G4NZ7i5c452EVThKt3XJEZ/J3i8noYbd4/ZryJ
	 YCxB22wyMlnQZQOruGUOSO42DG35l/0vm9kpqdltIepfttI+w/v+rSaa6zOK9DUrcy
	 nPaf2tHquSwFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCB5C624D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829283369.3824.4269148877659947304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c65bb009f67396aa72771031067eb12907dfc546ce6a1f3a5ee1fde15a79ad6
Date: Tue, 01 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788292833
