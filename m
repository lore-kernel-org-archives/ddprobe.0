Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E724EA396
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788798635; cv=none; b=RO0QaBpW/om/oDGGJlxSu/TF8qHoXy/xFuxNYVBrMpK5Eif9qkoDPUjURBbRFmF1sdnUw+MoL5LAunCG4PtMypBJ/H/1qizgRqwjkGvxkG7zqX3CzF7e8KwVeUCKG4UxhlDb5f/vdi3E/rKX42iDci9T9t6iIzoZmNh/P+tcUUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788798635; c=relaxed/simple;
	bh=lanNCsc6wzrd/63CECJB1Lk71ASB2NaKoyfmi32aTEM=;
	h=To:Subject:From:Message-Id:Date; b=QWfowdlaBAWz4qMeG7yJmW73i970Ec+1dVWXyJ3+Iw2XRJqkTNrD5cZGfTqo8COJYS26HRT7yX2McYVZ8PZ3JS4iQmGAf7PBWkfajXzAIdQS3IULlQBwH5+UyuVOWumpr+Zpi3K6X9dHFqjLoqoP9ov2U6aZ26Fktl0L5mknaVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SacwMfZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SacwMfZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E046AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788798633;
	bh=lanNCsc6wzrd/63CECJB1Lk71ASB2NaKoyfmi32aTEM=;
	h=To:Subject:From:Date:From;
	b=SacwMfZVXClvWl35lMeko4aHw4Bg28cOw6Wqyuw60Hecsq0wWZ7Y+B+pNL1lAqv1/
	 e7HxUpPuVZYFYJ2Pntlo6mzUkb8iShe5qCbgrdOuiOL4QSgIuyA11Xr0yC72AeCj/x
	 iBPI+eYA2C/yKovLNBEaXIcs7ztlGnb2x7pRNFRCJk46qajlV+hUaX+iah3LOP7vmI
	 czQuWKGX8yiwJbvQVKkdWFxvv8HSD5p/fi2u1nW6XMfm2VJSd69JDfRw7gL8Px/urX
	 AJYPUf2rLCwhCYaGGwy5BYXDeFnDwg7X3BX/0I0cF72tr9mXQ79n/kgNWdHX8Udz4K
	 m+ScaFheRhwJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2AEC79FA1
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879863374.3829.9001763370236331330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3732a2fabcebb8286e76d0ebeb31f61b2d4db8f51f47a396f269902cc95bb9
Date: Mon, 07 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788798633
