Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2F31B808
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789950634; cv=none; b=FaA07JGZr1m7ASCn9R7Tpxmo9TfkRPsvDf/0nO/+Cb2WQ5gcqt2jddbBxNiAZOPIqPjaWMaaQjWzuRPUzAyKvi2R/oLSGISuJ9RYWhmYxWUzL9AkSsZzvtR4QRrYqFkH7O3eCrZW2ZKCtbRxk3pG1bRR4Xn+sYpy0yRa0U3N7CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789950634; c=relaxed/simple;
	bh=cDskv0Wg8K8w4ptfRNJwURzPRMsa98nvMmNk0MPH59Q=;
	h=To:Subject:From:Message-Id:Date; b=bspjltyahuT1hriqSqgHEPuKc3uJLwCsWHw1U7QUlBEWmWFXLMd+gtRnqC2JwP9fqhAqmbyfm337Xw6PI9CtFiyRhdn9EyvnGyzRXgYlmhJAA4iG3OHO+KOjAeREmozi7l2jNs+hHRXsXteYvfWwYIMGS4P7JBID0R5RYHfADNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0xgBwTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0xgBwTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DA2C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789950633;
	bh=cDskv0Wg8K8w4ptfRNJwURzPRMsa98nvMmNk0MPH59Q=;
	h=To:Subject:From:Date:From;
	b=H0xgBwTW3it1kUz7pFPFivlZgY8Y/iiAlqHWdePabCU0t6be7bJlnG/nfbApMeZRU
	 dfcaFoP/7/VTCWm5JQT5XWQVDKrvY9BkeYH7GE/4RUFllZNSYE2CLzimY1Y/NVd9CR
	 H7WTS/pw7y7nVZJNcM02T6ggjrVODSALa29ZdWUW3xgCkpPqoOrHejXaSVXUtNt28Y
	 76PpTDRHCJ2ULXCO875fNDJ3ZWhgtpY/nnggNdtrGEWQt2zZnqGf1Xt5S1bZfetDHn
	 HkDS1ulGL222Fb8vbh/PuLNFt7tOjlqor2/r113Sun4EDabZzhIeD59UULMihv+r8q
	 ETgVJsJbI4Log==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1617C982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995063369.24381.4042324683505779324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a7698aaa92c12db3fdf2845965662cd64d4e8d61b5554f64e4740a3f382827
Date: Mon, 21 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789950633
