Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279151A5B92
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753073994; cv=none; b=JWAUOdowAzJP7/mo54iQ1Tm94mJI5WciaZ/0/5Yf3GVvYK16WYGqdxsHMxad1lkCIiqhS7XglW7eWfUjHmSFt/H4C8TInD9+0pQeALlnn6MHdkkze7s+kMV6iKBdKPumhmfQjjop0QTE2DwPjrEeDYD+DJxL+Fpne1XAj/z5lRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753073994; c=relaxed/simple;
	bh=q32jxrdj9CZTw1BY23hGhFPK6HD55s9HEm9PR3dhyKE=;
	h=To:Subject:From:Message-Id:Date; b=juanB0TWjY/9n9xuPnICDQZTFEA2DzJP/eh1mYXHJtMpswX6iff/yergHbo5quX74VuWYTGtJ5aJg7LKLW1qSq6j7/9QDGM9U4Xmansc2Lp1bSW4Ppg24ohtxZyOCqHvjYgxrDWJOJFxV2TkpKiDnwJ3AFAp92xGhL7wlyhvk2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbKD3HR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbKD3HR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D83AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753073993;
	bh=q32jxrdj9CZTw1BY23hGhFPK6HD55s9HEm9PR3dhyKE=;
	h=To:Subject:From:Date:From;
	b=fbKD3HR9b+0pq92HlGXrACSh192mZol7fzMy5hJmSDzOsyI9ITXJh4FkAM2BgdN3O
	 SwRW5HTHLraj6HD5GE4GjrKbMm25qljkZgIuur3aX0G8qpxfzznZNFAjcr+b6GuyVT
	 e5g9F8q1bmz1z3aXlp7YCgeX3mlQ8Gts2KnnkTjE0Ifm7bOFzs7PBR+Up1M/qcb/yT
	 tpGtJpkwiPOklzxf/cCUuVKztnagMh3LQisKMir/ggtWq5U8sex2KUO2LdFMKo1ZSO
	 pEMBoJaGYQ1b0BFzZm09Ciw0adGZ7YsJF8wUl+kZr4MqreHj2KgBY4j7DRTX+FEPxv
	 VO2pCLbohxFhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CEC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307399357.21257.7176820726639769280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c314bb9ed2a0e559911d078d040679284b2189ca7c297a66be4d568e4a07c79
Date: Mon, 21 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753073993
