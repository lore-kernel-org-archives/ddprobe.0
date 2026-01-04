Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254E22857CD
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767525234; cv=none; b=M6Dm8Lgl9U0mhAfmsc9rWnxPtPUtAC/hm2Rne6a96hgtY2EQhwDA911MZgdXs7hEfu+Eaqyw8BkmC+fDSKBIzugpildP7HJ1g13MfYENXD/cXjuv2+HYezC0+qQ4+QQA6Kd8bi/v5gaI9WM+0N0NvmrfTLlx+ox6YBKdxoQaS5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767525234; c=relaxed/simple;
	bh=M2HA1GF2SurcckEJl243gj0Kez/RORmLMaCk5Yl/cDg=;
	h=To:Subject:From:Message-Id:Date; b=V/66DV1y9ceUgjkLl1GflLN8Aiiky+zC1a4kOWAin+I/cDBRAFaa3wIo9wQKLqEIKMAy/UMLFm8aXVyYhNC3BiQ82SNncSq9J9rcfhA8TmzvNwB0e2RWgceRkzGfNIYSL/jejKgVxB/SjdDGrixm4TrdnveeOKac15HgtNaWyu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCHevT8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCHevT8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42ACC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767525233;
	bh=M2HA1GF2SurcckEJl243gj0Kez/RORmLMaCk5Yl/cDg=;
	h=To:Subject:From:Date:From;
	b=YCHevT8aZyVZtqiIW2LT+c+0J4ofRzsDV7X7sVSgPBSUS3iqTdPelL5tRSlHFAG4a
	 We97X8l5BUb90pYsBeQV4k6wTA1Mi1ZKLEMmjr6p/Z9k+ywVPkdk7D0IJXMj/7aike
	 7UQyXmq+ymYGvUBDQaNfhz8v2j1s0NU701d2fuu6m7ZBKKc8MaMoPfOIJ8K/5O/5l3
	 AM++VPG847maBu6yK+hb7FsFhmDQ5QdEsu52b5O6jguhY8RsNOBTUPrN6dqXOotum2
	 VvLrqOuioy3AYWV71xqtnfs3kwzlv6X1IeU/m03G44JKuZFoa2wVs6Z/GZMDG1vCRf
	 I/Pwqa0C1R9bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92379C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752523357.18038.13968491711213371460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548d26d2adee7a6a8a043a534fd7afcdbe0ebaa39e17129e4d22705f754678c3
Date: Sun, 04 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767525233
