Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F34438AC65
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784642914; cv=none; b=eLnqpIIyGR+ImJVbC6LAZjpwpDvl+pYuJ+2GMevV2yq85k57/inapJ+14Jo+U4vw3B08vBB+NsNRoxAE5TJd4xk22csfhc6NofuWovsKgRCy0CriIjxWa9jDBgDUPlBl6nevMspJn5NqPjLNKMWzCu8hGwbaRTJjeXuG1nrrxPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784642914; c=relaxed/simple;
	bh=9V/pqn1h6BiS7gCMjijcJTGakrg79lu3RhiTJitNr9k=;
	h=To:Subject:From:Message-Id:Date; b=oFz139NpfRGHNhvtgh10BkGG65KqTnw5ZKYLIQE4fosWmN9XLHngVXBICM8D0ROozTSUkAS4X8nh1CwAar95lBpBVmz0g5tXRURJ+HRtVgmybRLebvrYZWzTcOODcwRfGIu/M4Mloc1BNU+muy8NsUjlourp2LbLw1tKWIMElhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pitrzmna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pitrzmna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9D3C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784642913;
	bh=9V/pqn1h6BiS7gCMjijcJTGakrg79lu3RhiTJitNr9k=;
	h=To:Subject:From:Date:From;
	b=Pitrzmna4VKLxXqCvzzZK3flBlAF1XQMQBU/H7VUmwUS3x5gQ8a2ubHctwClKO4F9
	 FN6W+2sLUWaUq8DX3EV2PKCHFxHbfzb39e9vWkvxaEJ/loCewqdf0B3n0KgWFVAGcg
	 cKTZKymKex+B899mXWx4H3B+jCeq/5+IUXRCSzykKCNAAS5S2FCKSL4/8V3v7Qnx1s
	 edTB8u3xCQwrPXA2tqGx/D+hi1CLnC2vIy9HG/IFqRVNNRi5fruO5FoGraFK1mqEu+
	 2CvVJZR9pGOgg0SXFEfhhgu54qe1cSpcPGYMaStVzsdN2BnGEXdqADUhwUALEzAYK4
	 0dScx9XSDaFrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA86CC44533
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464291368.1194.2027784711886280400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d93071e3e6d4c5a10f9f9090de550459c30b6c894ea6e204deda987f06ff4c3
Date: Tue, 21 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784642913
