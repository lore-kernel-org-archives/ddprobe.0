Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660E553BE
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716709463; cv=none; b=YeickolNFDcXWbbd4r6J/nYTskZkSXZogWkggGGCR0lEEtZi9xuQJupEt0qjCbAh3OCNlFjOAarjdrHLIqAwvw7p08pli5zr9/a2bPAW4OWoWDZvuO02TZotl9xVrbsQNAawFtrSEAPAGzsphQzRaijq8t1tPiVx6LOHZqgjYs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716709463; c=relaxed/simple;
	bh=2A3Fb7nrrC4Ia1o7nooWHcO3jmR1fXyn20zvGSGZX+w=;
	h=To:Subject:From:Message-Id:Date; b=ilC9LLcRN9ClyxFEIW5JRPUtE2yWuzhEwJYZXyTf1azMFba+r65cD9myNd8JFGx9jgzWBsuCR1uJF/qWV2FILUdwPZArSmCrXOsEDB4UDFs1aWOenIQbdh3T3zS2qAnRDHNZoKkqNueXbDAnPmWoHHi7l+4nlQ+IqWJD8dwx28Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vb0BlpTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vb0BlpTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB576C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716709462;
	bh=2A3Fb7nrrC4Ia1o7nooWHcO3jmR1fXyn20zvGSGZX+w=;
	h=To:Subject:From:Date:From;
	b=Vb0BlpTwZPew74bTyENvuxoWGG2hbKjy5IRjCzvWt4r/BALonSLvpp+iQuXZZ5nBr
	 w6K6GtQGIhyT5NQXdCstkbV1cJZf2gt3+9X7K4eWWfDo3+oU8fVQaxwUDanYr8E4ok
	 U7Tx8rQc8dMjERNQ81xH1feGF5U9PfJCC6HYZHsi465LbR14BSDSPpDZPfdQRHXE1A
	 O62Y2qZsouvPUBYLcdJknr5WSRz5LEB0BnxA5cqGJqJ5w5ZM2G+y9orKCqTV7kcNIM
	 4TqH49fqhb/3CZQ47Umj4m5cH4FUdZ25gvYfGvyMbQtNYMRRMfZVnGIJFLBZgT2TTC
	 WTl7DGxwl0QTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3107C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670946276.24160.16145608420136536761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc2452be3220d268a100864bd0c856119a2a782164fcba360b75110b48aa9d4
Date: Sun, 26 May 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716709462
