Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA003290D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785440434; cv=none; b=mxiI5OthNAGa3G3T7+pkaoZLnt4JY2Cdn0DR7AvMVRDflMZBBe1979y3ZxpaLrabXEs0PQYbF6E2LP77jwz2UH338EOB1ddM7pEoXQCJrCY4f9F4ZQoiw1B9MNqw0F//oKou3jU3N6BgSIm47mAMQuMpqXgD/azhmp0TmFm44kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785440434; c=relaxed/simple;
	bh=Ogx0y896i8erl63dI1NnPHH0nbig2HULSH5dGjPi0Vw=;
	h=To:Subject:From:Message-Id:Date; b=r3mKvkcuUq06iZgpI5OVfn0TKcll2XxxD6EIIb81SY/wQy/Li66gBZxb5NDnWQ34V/ELLdMBpJGr4/WVkvoiUW9WOc7/abisg1jI0lJbB2+aSAZpED+2sy2vX+mP1taIktXJL+SpaMRgzpY5aDlmDhrrsUzZM8iEz24si3wrjeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nqn/sQJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nqn/sQJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC449C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785440433;
	bh=Ogx0y896i8erl63dI1NnPHH0nbig2HULSH5dGjPi0Vw=;
	h=To:Subject:From:Date:From;
	b=Nqn/sQJgzAksgupGqPvcJdt7dt/sRsDT7wSkHjyLoA3jH0mbLEO/7nHM4epERyL6C
	 WQhTs/En3YAmWsMyEvjpZG9S9B+MW50mSEBiiAkNtlYX2AoiGHKhUMQpDNnrkWWNKn
	 UwxQESXHUUnt7E5KfRnW7T36Ubb6tkoE1JnLbhLn9Pp8UszBztNL2kRH0Gt4/VeCcK
	 U2WBY6qYtwbrj/bkG8scc/aplZcmKejMzPo2Ugwu9v1ZtndnDDIgiCpz2aYTsIhpEe
	 8G2CEPV67bIUuNyilODFGnJ+HD+YBIXUafScX0YqYgV/IEphnpxM8bQVGMbLwATigQ
	 WBpWt88EEqxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8795C5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544043368.31367.11577657953926117936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ebf7659e05beff4a406a9f9ee732696511683104d9a99a07e99dd7e944bd63
Date: Thu, 30 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785440433
