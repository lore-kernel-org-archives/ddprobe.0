Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6EB238C03
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757356794; cv=none; b=DjegFTPeNdbR5jXx168k90Hz3s5k6rEscYHeN1W5ft6bSf+Wy5e5PEnMTBsncpHAiSW6994dNJT6wF9n7GBoH3XYFiAJAktfpUXjAEgDIuOe+ZwIud9xVS2KYOjEvLjs8EgNNTrVpzcFBeKQOWOa9NSKOV6XKd5n87w53M5HFBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757356794; c=relaxed/simple;
	bh=I7433f2jesgNJpTHDrrUCwIwTn5iZnVzsx641h5/Hl0=;
	h=To:Subject:From:Message-Id:Date; b=C2SdkAFZLeI4D2UhRRjDKZ7WqG4N2bJhaEbP8ZDP10lGoiihq06CYbrnkQnVK1qbpvHum2IRUWa2fec++ie53lKGTxune2M53KPENlNe/zxxt+475EKDJkfx7DxrNB99pqlqMmAB45dSsKAEY7ChIQzeOnkJ1skPXs//LTw7ldA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtsipY0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtsipY0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CBAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757356793;
	bh=I7433f2jesgNJpTHDrrUCwIwTn5iZnVzsx641h5/Hl0=;
	h=To:Subject:From:Date:From;
	b=mtsipY0k3csOY1Q9GE6SQPsb1lXoyUWqsR058I/bDfU9KQ5n3/c+CQUdp/eAfrAiy
	 N655ST2zg7UuWPvohTqZ1dzlj+OOEAGplBr5fx1WtJbNrJvfywoFf18E4VVfLWeuZl
	 RLpu39h7n8OTlNziA99Oni/K50KZrbXZy96cU7Z7edHGH8pCLcw9PhVHMKNXuuRQtC
	 Mku+sE5lAU18jiviLxOXLxt/FFzCB9ECjfnvVXREBW9OxRsDvs/8FoQkbFp40zR8AR
	 +UAZ6ThkpBmwPkAi4TcKmGBpzlkLOAdZyvl8XZ1DJUTE5b0TDAI5X8ATB66Xkg50CF
	 JrHfLNd86ZcBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C61CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735679365.12613.18376560315344197762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ec24ad3df75a17d5b8f1c354ee4cbe9fa3b255a7fded8dabab1978cdc09f95
Date: Mon, 08 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757356793
