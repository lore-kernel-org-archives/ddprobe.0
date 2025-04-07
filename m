Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62260209F33
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743988794; cv=none; b=dggyMbWe2XETZqxjHmELMWRMCcUFk2uwYO3vvm/ucdSRnAUInS9GyN+6EqW31iro9LLWxhuXbi8TEa2DXsx5Iod4xkf03uZjxFUF91uHgvlEW7k0rVOilpVtwrYf2RCKWWI4VwWnx9Htzo1m63A2t1W28Y1nOTINauWS+2Tf1h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743988794; c=relaxed/simple;
	bh=So9Pi3XUMN6hAlsMX0O4WLDhCVC4WWPx/pzY6+kVukc=;
	h=To:Subject:From:Message-Id:Date; b=s8PRA29tCEj5VUPuVfqD86ROqnJz+pRuNQp0U5E4i+HVLniqDGK+0Keuam8rAkEu3dgcztg3TGdIZqQzihU2LwG91uSkz0QrKeSo8C4sDouHXXE/XjzXb8kTOj56srNplw3waX0uQTgO3AO578mRwIRwGbY1e602zXRKXfSlmog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVU/irI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVU/irI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5EDC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743988793;
	bh=So9Pi3XUMN6hAlsMX0O4WLDhCVC4WWPx/pzY6+kVukc=;
	h=To:Subject:From:Date:From;
	b=KVU/irI8sqYERD4TXV0aY27/m2B4Gc1xMiSA5XQpJBOVKTsd1OB1PrDy/2uN9qCeZ
	 dGqdfjjBDSDuU8yTKun/zJS3czG6ZsXuwszKhlbxs5lpKe3ekREUjh/77joQK62382
	 CWVfZZGf/MmmNtOYTwDB/D4Q3SVDGEujXX4ufII6Evt44LpqJyxONXgJzpxAs55ncP
	 xWsy0VUbkvCs1mCx4Zvyw+ROgxLjYs/dUAaR5IcLHHJO5bp6E+L3bPaDYSyZfK8xgF
	 ZEKjscanpeZOzQ/72y/UKQfPFisP8I+jP7CKGOKUpUfc/HaBbKRKQ3yuYN4IiEAZwH
	 TN7EUluHQSsWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A470DC36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398879361.14777.6369559330964521725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1aad340f312421841cff137cf9e2184cddd9b06dd55e53bf73922480abbf8ba
Date: Mon, 07 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743988793
