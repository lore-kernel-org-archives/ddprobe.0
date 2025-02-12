Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4F12135A1
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739381334; cv=none; b=CSdCmd7tkZrX4dw+Jphp1sz+LOyv/1z3RdvH5mVm9CDP0htPpljSClF+lY/LpDq++j0U6bJzq+i5mihVC6cr77VrLx5341axn1RF+7kl/AA9iAY5pY7n2l/1U+Zo67eN6iJLJF+6W/aWp85Mmy5JUtP9hUWLF2IcwmBw/KcUtsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739381334; c=relaxed/simple;
	bh=EwLjd9YinuSBDlGNHiPI6G/Z0EIqf7H/0yVLH2n3ZmI=;
	h=To:Subject:From:Message-Id:Date; b=KnMJdbT19d0cZG23wOc1lCEQKUPmjUw7j9aQ351s9xKAq2zCiLM4fdwm0YKAU/jIjsESaCFmClqch8I6bSiNAwCFnmCV5hacb83JBwkc3uXFtnoUahpVOaSSLHb9lBqaivWRQJQmBR3nGZFP+yMvukIicszInBdpgSAqj4zJ10k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQ7BhAQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQ7BhAQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9123C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739381333;
	bh=EwLjd9YinuSBDlGNHiPI6G/Z0EIqf7H/0yVLH2n3ZmI=;
	h=To:Subject:From:Date:From;
	b=bQ7BhAQ2kaDbpN0/ICitAuKA1yVgrWjkfVcLCNlLgy9BCgoSttLgHFVbY+Xq0zhtM
	 08AeP+BJ1PrTJZaXR0G6xk2PFiMpIfi4p7ygdojCQrbDktb1PzHpffbl9bnHuFT5DW
	 Siz1dMuhXzrXWwtRMhroYSlAdIgoNGaP09IHFAwT7r5lDa/2i5iTQhHEgFQOadeznW
	 cxHhE5qJ48g3ZTa0TEsSXiVfaxsAvwNrXV9BEugWQvu8vinwjLgsLphKlCbpntKG4c
	 7rNuxdbOHV9f9RpbeCF5TQKZnFLX3ekZnHslFhNEYQKoOcYyhmIo3EqhSRXuah31Cv
	 VIFns3DqoxtQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96498C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173938133360.10109.13235250681701026666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa54dc36257c41741882541e67988c8420325170ddf8604aa0ac08430c005c1
Date: Wed, 12 Feb 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739381333
