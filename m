Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1464C8F40
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749502194; cv=none; b=pXLHfILXTzM6rfKM8uOMC8LyRRI2V5kW8UDiJ87I9I0lgEj1lXWuGklM8e2EbhYp1C2RSV73sXxzdFz9X0pqVT4un7qtyVivtRAE748eFW3eP8XC3PZviWkpZ4KxN/jv75oJDXjaBcOBBiemL0H6zX5jItdL4poXhRxbcq2sdi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749502194; c=relaxed/simple;
	bh=H33oIBEpIrKFWeTc1fKe9+tUURDKez/wOgkatTFF8pI=;
	h=To:Subject:From:Message-Id:Date; b=SGgmKTWxAP0d8pWHKHT3CG5kBksQHIL7JtD9yyc/mHHnRFXxahS1CrQTw9z7wlW5+18vqn+dwPtb1N8eVnXj0kQE3HMqWNe4DPuI5gt+Rv8zqYqmwGqPTeDorcbc5Y9YTUpHtHywddjcfnoiIZbdRTurn714vuDY6ob2cSniZgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rq5+LUVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rq5+LUVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8391C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749502193;
	bh=H33oIBEpIrKFWeTc1fKe9+tUURDKez/wOgkatTFF8pI=;
	h=To:Subject:From:Date:From;
	b=rq5+LUVsbMnt0SdkPfokc2w1NL7dH+Gbfm3VUff7xeApGp2tU0ZOQZk2KIileEbl/
	 PQxRXrYUhki5ZPke6OwdVtRpVkpo2AOOTlD7gV8u8znvtJalezdmj28ylJWD0B8FuT
	 wAHf3lxKjIf8BWbPyJnF739onYeoPw3nc3AefFZ4TRrxVi1UqBOC3thrsbLF7MXfA0
	 9MmfOoGXxTdwzuKnrZ6KbzN/QBV1JslRUbkSBMVRFRf4uZ6pXtAj++UIVB2NhrVVlw
	 q30poiK3kDv3IHQAlfi6g4CritGG1o1IJN4nGtDWjfXraXA8kWb4dJ39/uemM9vK48
	 jgOjq/MPp5xbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B62C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950219358.12857.76658566712602043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d5988147384349b82a41d9b7dc58a40555ba77fd0f8afe7a5cf1444909249a
Date: Mon, 09 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749502193
