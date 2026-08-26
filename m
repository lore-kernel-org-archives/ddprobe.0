Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B0017D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787709634; cv=none; b=Xuy8qSGv6Go+0KAjHqlwwSUDwutFP0pAXKfDtl5yozl2hc7bCjbeId62AJCk0pFm3F8iQ9Dq0anbrKf6v4aCVnVc2ETAGka0MI2Da/qb1yN/RooKt23xK48KJo/LMgzCDwbvl744QpGHPR/hEsCc4IDYJewvYGYidtGAGLaMGeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787709634; c=relaxed/simple;
	bh=7eMVJMckwyQ51H/dZ6h/x6XrC778mi4eXnXfVwDVsPE=;
	h=To:Subject:From:Message-Id:Date; b=PM0TCf6ePKRzURnQjsVaCf8CmUMPuguAUUB68vjpNbhnR4mz8m5LkLid89sfN49rp9qpcW1cK2kxDtdWidI7v3fIzTepTcIF5WsDWSViFgN/wE58YpdHUwYRsKgR05TeqdaCndcoBiFv+2kNJ8kAYPxBIfnHBDw49Yflc4recfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBnKbOrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBnKbOrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA941C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787709633;
	bh=7eMVJMckwyQ51H/dZ6h/x6XrC778mi4eXnXfVwDVsPE=;
	h=To:Subject:From:Date:From;
	b=nBnKbOrdlWC3v1gJJUM+uR4cYVDOAHlwBl0R4MBotmZjRkGGDOr5qHOLHKnUgW9eg
	 BKovXd2teKJPzLPDHou/fau6NwLmTo722NUSleivNa4pXy8Xo8b4Xu+9+s7Gt379ab
	 MrIGMYZjD+x6Sv5LiaOiG3CxKVBH1u3Yzo/ihaZqnn9BDOF9B2iABnLaoCTujacyS0
	 rYf4rVqCJwkNqCD3PTGhJcwfaM2tZzmcP5LbpJmdhpS64oLI/IdC4UMwcehzekUG7C
	 3/cFXyNG/PkuJv9zSh48tbfCIHwvZUSTHdYi/oLVAMpOmXLLEJVhPEp7XjHMT+HTI3
	 oSVB6Y59IkdTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67DAC61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770963370.5094.13975272590927764309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6310edeb1aa4c06c8176926f647986546c6aa8ff91a781539f9c5e07296442
Date: Wed, 26 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787709633
