Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABFB17F7
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746298795; cv=none; b=X2+ICswqYlTIbIlvYwIbin0zWajP8qHH6pbIxX43E8/h5xGwLaeb1Ok1xy4ID+GA+dU+eIqksPulu+GzEOtqQQmNSpiSsgg+mhJbOs2wXo2Cer/2sLuGw6vplpTcBzHsMHldf/rxp2AyKPkZvHKJfS+pOBfkWPpJ9p7qKOhqK9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746298795; c=relaxed/simple;
	bh=taNAM0JfYGHP3CoosMH87mKhT8BADtqTPhcnaiX6mFc=;
	h=To:Subject:From:Message-Id:Date; b=chMJaCA7e/O7cviu4N9gqOA+Q+R6gAOhCdRASV6kJMOroRZAqRL8S2Y9TX9jwRLuKfr/ns711OD+klAev9pr0U7sZ55kpGbQf2fCluYqlZQ8ELZ7JetUps32fbCwiJmp57GVb3fFbFoJGGj1JrE7wD43C71q3LWGsWgsO1d5fbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrXpVDq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrXpVDq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDE6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746298793;
	bh=taNAM0JfYGHP3CoosMH87mKhT8BADtqTPhcnaiX6mFc=;
	h=To:Subject:From:Date:From;
	b=UrXpVDq3AjysFTZT4iTrGpQ0T3gMTuxehXMEv5FRJEolPbgL89MkWibnnEPCq9cKm
	 Qy7dUGL9tCg9PGM/JFtb0F+omHLWLopGqfR9zIRMnSofV1fNRb3y6V3lt8fEvLci5l
	 yULUZ0ZL3yxohgtnbCLEQN6UA1n9S0FM/ZXvf9VUMEAFIlfTUI7lgzb9wpP+aFiqvX
	 Cwwj/+pkt1czr0jE38BOdRbAiMoYFMvkoS5lOCtRcDqKft36lPrBh+jynmOffz0MLq
	 lOMj4coxBw83nxr5uyg9txTISasmswCaMnZXPwJCQr0q1XTsTwt3ubMVlxRo76qOiK
	 9l7jm3giEk85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFD7C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629879357.11500.13936350900765964104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6e34e77c0981923d606492fb3deccd389c0c44d04f802c765617d8142a81d4
Date: Sat, 03 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746298793
