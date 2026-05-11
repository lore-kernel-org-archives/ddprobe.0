Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369AB2D7D27
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778478634; cv=none; b=QE2lowC6nfpsxjV2XEvOTg0ZyJwdce3jJePDhYGdDSP3iMQy52D30oe5avoyvWwI6pl/rps8pQN0O4tdOTPqyNnAqz3VBVx92OTwQPJFjoHn6YCOyIuZ84GjOQ46Lamb3ymkqFTXVBH2K7PeTPVZeXQrIhNyoa2ADBFm3KKWQYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778478634; c=relaxed/simple;
	bh=iDTCVDw0EJuSe15RVB/h7+NyQicPzFMJeFMWDYMaeKk=;
	h=To:Subject:From:Message-Id:Date; b=dhwT9oSzb4Uu0dZH24TCM+8JUnHVcNk9yY2MxvTJN/pCaFjIsG3nxog4BEZFyEw4Nr1nB/2sUNF6Nqf5Y5/M6y8CI3k/QaPTnDZn7730zL2Yq9LTnUNMy59KvdltmyZv5K6+r6J70IRx9+NA7x0vcdeuDFHktRd556Aga8bT1hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKZqkNR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKZqkNR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81A0C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778478633;
	bh=iDTCVDw0EJuSe15RVB/h7+NyQicPzFMJeFMWDYMaeKk=;
	h=To:Subject:From:Date:From;
	b=RKZqkNR334nAp1DPPbE70NF231vC0WJYTxJRenyr5lKxhNWsK2xq8vf4osMBHX6FS
	 BwG+sOETRvFZwZdrxx7+u9012qJJcMHufQQsEmIPdQk56++wTaMoNO5qo/roi6O3ti
	 zYq0U8zm5LdIOanWTPTXCcWIzNoy061KgRRcAedYiwotM+BIfpjUHEPCxAhl65OaLd
	 t/h1nrxJaWTZQounlyAFxc80l8Lmyr/j+kmzhDzPUSNeT8ZBcvQhSBCau73asEMEch
	 WitTZ9ZefJDq9aVsmwG0AjvLZxPYEouchW3A7EZyfLX1hrX8Wohb6P8wfO40vxtfXZ
	 6OIvdbV55UWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B563ACD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847863372.22814.5569494747239066291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ab44570df59b3704cfa77c3b1895c9f1bcf3103387b31af9cdd6a435484093
Date: Mon, 11 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778478633
