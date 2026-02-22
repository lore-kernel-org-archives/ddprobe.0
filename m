Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFAE286A4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771733094; cv=none; b=EzXXpHd3VDOMoWBzU5doT1td75Lx1F2zqhASI23Ag1mUi5iIhheJu66xejtTAFV6s8Ew+7DxpY8D8Rvq4kmHTQ2dZJjpkxC+uDXyq9V1UNYekzpOaNZf3BdM9nKDnLA0Z8Kzn2l7fSc680Mstps/arrNbPPV7grwpcSWPbRZ7Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771733094; c=relaxed/simple;
	bh=R71gLCC4DFwkT/329MIPG1kTrCRBUbFArfAn7hUJDbM=;
	h=To:Subject:From:Message-Id:Date; b=rHnbDmjXNEEh6s8Zwu4aNOTdQVWyUq3Xd93xM/HsFLhnR0jMIf4o5G4eYQ13J3ARpm5DVH7exz47VhRdXxN9nuiQZh3Fs3PJ9mWirwtiNskajTGe4MGBjg/df4zdUgIjf+s0V7lC64knrng1aR1nhlJSjv5RYM/RQlSMyeqbZqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jnj/cwKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jnj/cwKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE135C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771733093;
	bh=R71gLCC4DFwkT/329MIPG1kTrCRBUbFArfAn7hUJDbM=;
	h=To:Subject:From:Date:From;
	b=Jnj/cwKgC5baj4qWliZXbbVv6Qo8yWjfsGNKzlowXGgJuMeWGh3r5Prdb0X35g6Ar
	 dEMvuubRGRspcu3N843pmTYGKBiHnTJBQr71fgEaeuG5NR0/Id1AlYhHAQuoDob5nO
	 8RQINw7qxKhVOeKvFVrfGGxZ078znTmTQ7OEiLB1kHLeSKORYBnn4xNJOC0ubUC60i
	 h1vCCDAyjpP2jX9cLFNQshq81fi3NOfxzHPW2h+D/NqSTQcPhLp+GW7qpXcCRfGbfx
	 PzYDvK2ze8m6GA0vqYIoXWUSby61oUahFEU+RJBNs5vCehrIde5M+cwKeOHVBmtw4E
	 gBPGLkxd5QNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98310C5DF73
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173309358.6173.10020848617434484889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44af64b7c9bd6bd02f12031b059b8f0e426f5efa8d8fe7af79c2291ca29477a6
Date: Sun, 22 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771733093
