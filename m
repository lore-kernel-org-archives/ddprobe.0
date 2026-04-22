Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222894414
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776883654; cv=none; b=UzUwbncJx3HbAC0TO5g5vKnTVy3BGgDgmtZYeglk+fDorrF4ok5F8avOkIqWssqd5eT5mbx26kwLULo9BvWsBsTD4r7tEeJU133WbCKvrMe73b0HMtfTZDX4tob22OY9POkpFrEmG9DCNk46r7oNehvIlEuMa1Jj/OMTnWgKFHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776883654; c=relaxed/simple;
	bh=OfWFtdn35SnDmN2Pubd6694KLlUZpQqrt9Nf97Rf7YQ=;
	h=To:Subject:From:Message-Id:Date; b=DKxoEarPUu/cNsPeZQyR7+IaYsZ3/i8vRdTwZES6vaeVox/laZt4T9WE+VFY2Y+KuRWaerlH1VjTin7qckYJ+sQ9pYXzJoCmAnzm5y3rnRiq0Ymc327wUc3uH0rLQuYl9f9pfG0ndoA2N4tlVUBuW+1qY84kjZ9Fv8ex+Ion4x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFsp9pRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFsp9pRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB332C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776883653;
	bh=OfWFtdn35SnDmN2Pubd6694KLlUZpQqrt9Nf97Rf7YQ=;
	h=To:Subject:From:Date:From;
	b=CFsp9pRaEmD6/+iwzHgRtDLgoVdkUMrNV+Oj5GQcgnffm9Gn7pMzUK75QAvGfX1FL
	 6sBeFM6pRT9B1m/qILH2NEScfmpyahBSESu8rXWxXCX1Ed8oq9thjR0bthqeaccU9p
	 PrSKwgItZ6F5/v5XiA2oBlt7pIJI5yrW6GIdK7BFYQGx9pOEtjXcHp1MjZUPL3pM16
	 +v67PANExISSg915KdOfLfqgBtS97QQM+uLEWlBk0uBZ7fFMdZ59UKw67iAzzJl3aX
	 8jT+/dzB/gExPKiLquTKpzWEyjIPWL5cm1wpYJdRnjxVErOlpJVGh+4kscSFsafjac
	 zc3rVpgwfg5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A991CFA1FDC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688365368.23285.7746883581278662624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a00fb587a506f199ee5ff24058109ebf3dbb41bb5da9e2141f7632a4e0ea06b
Date: Wed, 22 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776883653
