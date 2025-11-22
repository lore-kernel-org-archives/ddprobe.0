Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE2872617
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763851914; cv=none; b=sF2RUuXzelYB1xFrVzeP1urk2pn4P4JjSgtU/D71jm3AkopvAl9USmzSzU+HY2fPum7dd7+MK0NLlZzLbEKCPqo6DCap29FFIUJ3iZXo5x+cVUg45sV6hzBXiIaF82188tixqY2bBQfKKjlBG3BGszcAPEwjcH06YGdmTKOfN74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763851914; c=relaxed/simple;
	bh=8k+wxoGKFRLQ2RsA+30+xMDmQD4Yf2D2/eaWhfdLbcE=;
	h=To:Subject:From:Message-Id:Date; b=PtravbS8ukqhTIdpnXK08KkKE/cvh71kNVehw1r8pR60S/8HR/br7x1o1Q5FxfY3DaC8AqlDROpX3tp4+wQIc0yKwLXxc7O7gfVnS5PmAP2uGeCpbDPVzPg+z1teT3zgou6RMIOxZoIxRsAiU0smQYovPblmhYBivFlphP4B5LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reKk/cWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reKk/cWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DEDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763851913;
	bh=8k+wxoGKFRLQ2RsA+30+xMDmQD4Yf2D2/eaWhfdLbcE=;
	h=To:Subject:From:Date:From;
	b=reKk/cWops5ZJ+597vBQ7Auv+5xTo868eIId424TO9FXqv6dVUXy5SamRUs6qMl3F
	 Ap1APda6KDs/KIkLkkuht4JzwEcqRgyibKEaZKjPY+OSYk8lP5dDPTtqWVle2m/NWB
	 Bv1wpkHsV0f23GUKDUqNvYvHmgKbHoVEKS08XLswERiv5rdFd2/NrvoIe3x6OFDYeU
	 6KCD0ZnbiS67KDl0J/tyo1zeosyRr3TWZ5zR5bt13Pa38d9O172gh9JHpNUH06HTU0
	 QJb5vbodjnGRmb8CeXbzSEG5WLMp5Ww/BuEeO4tFz8/XhX/EA1eMSc7GqB3c/x1e8d
	 tc3DdX4A5CGMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FFDCFD2F9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385191358.3004.6901492519773826812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d7ede502be55d0467b48c6a336ee9ada0da1815dcf76a5e6af6b0de00e0b8d
Date: Sat, 22 Nov 2025 22:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763851913
