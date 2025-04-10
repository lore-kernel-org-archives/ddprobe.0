Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7541D6DAA
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744300794; cv=none; b=iWhQIATo9vrfWFlMlU9M7U4DCKOmh+IA4J2gPLDpz9N/gJPSxHNGGhIlDuk/Ec0oDSiIu8CzGmadXHF/QdZY+pOoW2IrmVT7ORgFugJy2t48SAVGNA1CYdM72KSaAYUS6lvjHPoTnFddODdAM0vrCnsxcEcEjiGXCttQh4+1PqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744300794; c=relaxed/simple;
	bh=ZrEbj/L9JSir2vLkFoyRobpJKi6yjZgTJoXpGsZD2Wc=;
	h=To:Subject:From:Message-Id:Date; b=SXBhVSMrJzjx9JEpNHsgLv8Tf8YNZrKMpeJsdE6Pi5DBffyCeNUGXoP6XjB6Lnj1iWo74eDbxfaqrMnq1Hb5ajscCDP2uXyPvgpt0Vg5wSeCpwxBQ+Vm10nZVQAu5nYuNlJeEf+98rgWuM03CEyJ2SzZu+ZHLB6prSJ61iURCd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKn1AwxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKn1AwxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F0C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744300793;
	bh=ZrEbj/L9JSir2vLkFoyRobpJKi6yjZgTJoXpGsZD2Wc=;
	h=To:Subject:From:Date:From;
	b=tKn1AwxXj0J1N6n8dgVunIHvDqPpxo5maFWkCv68yy3Ubd7uxglJrPLM2nZ6DmuRB
	 NPBV/aOTV4Glf7pm/lQYB9vLbzKFS4vtPDkP9hBuWHWTXmU1wsd0bdElNQ+Gm5VhiO
	 RZ4aYQw0+aC4Ful37rQhp8cLizlss/CtUpOmBlESCLMKXjhhdOuQBYhDoh9CbVz3n8
	 MuU+5lWl1aXe0v89gmmmC38KtdxbF9XGFkK3H5x2cvNnDdaM1XHAvxr2EHoEZ9Vjyc
	 ujCF2bLg3WHtMmsaREQXnLkiY4tZM9fEXiDwKaXa0nBjxLoUCdsIfDqJpxxNeGwCBW
	 5DzwLN0k7YVDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4AC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430079360.10811.7145542083403118563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f190745741609b28b49a74a463205b7811fb4b031def924548ba96be53071aef
Date: Thu, 10 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744300793
