Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC3C43D50D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787045434; cv=none; b=p/IZFTKFJyl1PLLUecPFoPEgnP4nopJhBdroDc7AhLIVy/DAOI+ftmJwwg9pGK64otAOFdp17oMGmjUZih0zEAg3Qu3e/4oTOnimDXM6NjdxHsuxcz+4wEzQh4pSzzmMDPwZAaNzU59S2Hgy1Q+2CZKU0WAyh6YIcOUUVvqLQ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787045434; c=relaxed/simple;
	bh=W6nYs4Ax94HGirO8fjcpr21yueDa8azqA9fcyiqNkwA=;
	h=To:Subject:From:Message-Id:Date; b=anNIB8fMgoHdm70ERaecnBNF8nn8f6xM4Yf7HyTTPyfKcWidOiNO+3sbZUak3coIIp+qhkj4LfywcMrtmEn1D2sYm54cu42cWcVQWDw+3ugxaGrgpQJ/Xe3Ep/ODH1Te9Jno6Sskp+gvA4TcFjyRZBtV7xQx08jEC3hSm6nlGlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikg9Ci7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikg9Ci7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D023EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787045433;
	bh=W6nYs4Ax94HGirO8fjcpr21yueDa8azqA9fcyiqNkwA=;
	h=To:Subject:From:Date:From;
	b=ikg9Ci7Van2pwnuKseR1MaGeQMpsCqshxcCljSM3rcCf8/Du+W7tSvXOJbwnr+nPq
	 bnx9F84soa1Xx5XrGUWpXXiGFgyoNkN1jMYmyjur6k4K79wAUYGB3HpgIj8bYzfrwq
	 XSnwhDsnPXX1rVHku9iYAmAd9VdNW1ncdGZUW2+uJh3h3c27hb4Gp7xWdJWU3n5lW9
	 Ry272Ysa+GOAQdM3EE5pqQPFtFHb+P3ycr07xHXwRQJfV+AZpyObVP2T41n7UBzHW6
	 eO/i/awSHMP3X81JSAUKJDsxG19JzIvClEBBnyYJoRpNPtzo9X3M4+05wmQDhizKra
	 2XWkEdOn0LIdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC31C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704543369.2300.12256322310175475646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c77c1044598ac7f90cbf1dc4a70f7862f327301cb3b4e36f6cf091d34d24a3
Date: Tue, 18 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787045433
