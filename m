Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED0D537E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759408794; cv=none; b=Y7ofBaXPPY1VLSzbgLr6TwSl2wqDDabc/oEmD0GcRvnggJA6OTDy/qavgHAQYi5vZjwvTc8LEEMw7Fe8UqLsoBn1wSbZ7gKAYlvrTSKZXfCSWWHA9PEagJJZCbdoZkonqYf1o2nysIcL85cU1c7uQBB1k/eq+epIJJdbI4aM53E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759408794; c=relaxed/simple;
	bh=CHtr7ejdSqEI1ltcNraFkNVovwzBIAzqUgGrzQYhk5I=;
	h=To:Subject:From:Message-Id:Date; b=ONPsR4k3scVp0OYhAwbqv8x6XUcHoRRUXbNbB5s0xXXumXoXALsL7ba4tcjYn/9XggsyojaFceel0ErBj1WISXKn9WdPSbtkp7v12ru+w2KPr6JLfS/9gprHNX3/sWtYoi/qIBJDlMNGIb8sOzHyto6BUvZ5onSJtePMChnIvQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfOiL681; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfOiL681"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A350CC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759408793;
	bh=CHtr7ejdSqEI1ltcNraFkNVovwzBIAzqUgGrzQYhk5I=;
	h=To:Subject:From:Date:From;
	b=VfOiL681+DTJFqsuECklz+ySeu6jfop+kdVZi2Te+RzhfRUsHQnMgY0kx5hNXd1nz
	 z4ep3GH5XD/Vu89KvRcf4Gxc0m66oRHR7Gda1WzyX4jTFodAHShpoe/Eh/3tYjjWzJ
	 U6vKsdGR9I/ReIZ3CKvpEHOlRbe40v1/UhYRW6QRL8EPSkvPinkd4GUfiADSHc1g4I
	 mf8V98zVHP0ucvKaA89Vdh+eQTbywtt1CadlmhcomqxjY6dZwgBoKR6dRngjO2V3PQ
	 SOhd8ZYb54ATUtIXLA+NkMJu5t2R1g4Z8Eef8jAfQgtjSUKY56q4MpzhfKfTI743a0
	 p42dw8Xf1mEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C53CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940879358.30487.13529849496086951931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e01ba47c153d40ce9a0635aa238355ab01f0ee6b79c4ca62de84eba042abc7f
Date: Thu, 02 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759408793
