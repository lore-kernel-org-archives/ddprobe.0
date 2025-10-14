Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1606B31A542
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760447394; cv=none; b=ifq7DxRNL9qNlbg+FFrWcmuHKSMbuwG/W5myQ04J0I0US2QQWy/gxrdJHKANFv5Pe5+VIkWL8yd3GX/q0aUorVTxSCWHoaa4Qdqt42PTErnF3p+g7cAFDjGWLdHr0VNzpHXtgF9uLdyPm7RZW8t+0LFKOGTZBaV8f60Plo9Zvbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760447394; c=relaxed/simple;
	bh=AtSlgkBOaGxpE1d1hEb6tF9dEe2eeWEPexrOPhedP+g=;
	h=To:Subject:From:Message-Id:Date; b=FltA1YZJgup6qYALcXePJCV8aXrYOCB+oewQLzc38hVWM9wkYpM6tgM6z2hudI3lw0NmTuXfaJg/bYW3c8zlUBaabhvdupEi4Qgh6ig3A03c0omWEavsBqDihhQo0jqhgk+FyzUmRlHOS+Y2nuKzBw55kBlaQF+1+fTXGvKwW9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyn8B+DY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyn8B+DY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7C0C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760447393;
	bh=AtSlgkBOaGxpE1d1hEb6tF9dEe2eeWEPexrOPhedP+g=;
	h=To:Subject:From:Date:From;
	b=pyn8B+DYX4u1nubZsKqELfT/DaVsqYzB0VRwcGwdy9jodc8xjmzPqYmalx8wGzwUM
	 2xEAHv5sPSO0jlRBCqbU7okik4APmCBpH2rzw1idiY1Q2lhgYappZp23MsSk/78zeG
	 6aNh6RXq8qj0PAGJhfdhUgi3Kk/2wHmEDKjEEEpUCMGUDlZyJ8Zb8AORekIl4gkHRF
	 YOgByb77UKHjiMJB/jRoFXSeenl1dP4YSpjfI/OakAiI51AXiOk6yHico2+cvgxsul
	 FashGA+1KMAmDtmDk2OZJEoZiS/Smf+A1jRdl0DqmYmR76Dao1HEiyYOOXACgxtC4f
	 YFAbbLEIUahpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC1CCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044739357.27054.8166912724335255219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a12f1b9a5a76cbad8c84fd72d2160ac5e7900770731355c4f018862f964f51
Date: Tue, 14 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760447393
