Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BBD24169C
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744805394; cv=none; b=f8YP6mT6lWLWnTxx/Xnuu9ulYTaubj08fgm3uAlzP7KajVcJXl03uxRrGzixQ8ReTi+miINJLPT+aM3WSeI7rS9/lRiwhrTOREF436CBiKEd/x9AtIM7tfywfHDZtZmEVy6a1GU3DtCTznhima30yqshGnGTKaT6SGPgMC0HeRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744805394; c=relaxed/simple;
	bh=KT3oKmTjQaa3RS04OLMDrmdlJsIXSTL0tjYXzKj/kxg=;
	h=To:Subject:From:Message-Id:Date; b=aaBG8ACJInvytS3+GEqR6NivllTa4RfaoNfHJ4mz8cHonSZwOvQu9ObcvfNbQOTQw2tjxdAHlb6g7eG9I6izRFHwzBbNyBczmOp3TBQgLOL6AT3UL3Z0I41u6h6jPSB7X5WZMNeSwHDq6tQA6qDP3ol1mRDMaqjiLiI17fUDQUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVIlOB4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVIlOB4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33CBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744805393;
	bh=KT3oKmTjQaa3RS04OLMDrmdlJsIXSTL0tjYXzKj/kxg=;
	h=To:Subject:From:Date:From;
	b=YVIlOB4+i0GX5MJqOcIUIG9KmlmMsczYLB9lkueIOpTnEPFbZWEEyzjCkdZi67jz2
	 OP2ZZ5TcS5ModaDjm7M7C5+WOe4F2FpqhIrRt/r43sifY4YQJVB7wolzgJP9KgGxrw
	 ctEG5hts6PnUW6hdVc3g/K5rEUbUpQ+zygEqmpFnQHw0O1VgHxIAmBgFlNVdcO7Kh+
	 ZRVaELv+j0/8qvedpzPZ38XcHNnNUA2pYcCi30+SAiMMUR2VgyFnFxON/uSagKqLQ8
	 wLXbcFzEu2RrYBJoPgW9sMyN8lK0Mqw+Y44uAC4QGdggxgeBm19voFE8g4NZcHqhn6
	 Bt1+DK18o3Upw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B38C369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480539359.1155.10120151541035588776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfaaf42a7317bab7203ee529e7fa5493a8943b1c5419a12aa823f2fbe516862
Date: Wed, 16 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744805393
