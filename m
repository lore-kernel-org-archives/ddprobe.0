Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716D831E834
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788106834; cv=none; b=LquC8qZ9dIfqrcmhxZTgsHcCJLQyFsppUhHAYKPwVnPPd/Gx7BCSR5WFk2fnWhemURiMe4mKcdihhtugccTXqKpunPx7FhHGPv/pqJ47xkizUMtFLQlboyffEIPl3wA6ovAzGnMCbBt+JZNp+H6xTCKpTKlWN72UI1pSbnAaw+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788106834; c=relaxed/simple;
	bh=LfQN+oFIDxOwwsXjETbwhQh+WXwrfGx47jnkHr1ZwnY=;
	h=To:Subject:From:Message-Id:Date; b=fvp8kljuTblBeiE4z3N+UUKL2XA5ajTx96xZBEFbvSY1u5P8Oum8+C6h+JBv8Woghv9Vx6xZ4HltOD1OcOj2OoW+G0FCv40yPEDli5CCYPhnovZLE8X3nZDYtsI1SumS37Xnq/sE8/Y7RqlmTlRHR2Sh8XeO+ESf7eqqwUIns/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpZdPZgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpZdPZgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AABC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788106833;
	bh=LfQN+oFIDxOwwsXjETbwhQh+WXwrfGx47jnkHr1ZwnY=;
	h=To:Subject:From:Date:From;
	b=jpZdPZgTF8uqt46/DcNcOkQF6kD96IUxmmkuCCWtnoJk/veDSLwO0ZZavvl//h7yM
	 xQ5w4fB2GLfmReqhB04QSycXMN9Ena654TJ05bpAfR8b3ToLV0KsAxb3JqkOhmthpn
	 wRgHL8hBzf+tD/S2uUMEPf4EjiCHNNRGO5BdKlqzTprpKmV0ygN/hCRLFPpRnWGR9E
	 Vdjo7wCqkuBzvvOtpfMnXE9hnc7DjM5rHDszpcH5saBIPx6q3P2CGsaQ1f8l59SiR7
	 1mWrqZnS8sFlHZQzRJSAwy2lZyVuXVTG9VW7tdqC2KatQSVv/9uKgB619I05PpJAqh
	 AH8E0LikdYA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE076C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810683368.12488.16769746663666443126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41175fb43f551986670929206d5eb7059e53fbfdeadbcc9d389bc4373ba940a
Date: Sun, 30 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788106833
