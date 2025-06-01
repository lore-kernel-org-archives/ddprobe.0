Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4542435893
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748807995; cv=none; b=A8yCFP5g9JOHiP0ZJbB7oBPktpiZOhmh/6epoRkoHANo59rEt2mGBnIpHyz8JN0/K1IEk9DX/MGPyWv4VRU60Tu3bVki2rZD5NZUUOuhpAme+3CjBP+CA1aVhVX/yiF/1suo95uhLKDW9NefFaR1fO3jCdyrw7IWGm6L/7D6zRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748807995; c=relaxed/simple;
	bh=GjaPqGqpI+vmbsTuCzP7i7iJ5qOJGpqhASkni9qwWDA=;
	h=To:Subject:From:Message-Id:Date; b=ISNyWBBAHDeeeNcBkKjnP4BH0rmij5kmEFnffSr8pLjAd80OPY5oUxjjyF2yCykG1GK3WbpVuvOGZASqY2rgE1WYELBDrHjnBnihi6KsXLCbtOrzb16J8GmQ5dtW/2CvCGFeoAtCl+jY+Gc6Ofbw+79OV5ANEGNn5jORv38N9XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drbAxSWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drbAxSWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE95AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748807993;
	bh=GjaPqGqpI+vmbsTuCzP7i7iJ5qOJGpqhASkni9qwWDA=;
	h=To:Subject:From:Date:From;
	b=drbAxSWG5U/bcRDthBib4Z5gkNR1UE7rChTNlFsBTonrHq5JfKKtLbZOEPCVjZSMl
	 FgcRNt4Ej/qK63n6JWliyrtalUSkkn3BGWWFLvXVo3GlYm758vFsT3FPRiuhTjZSrx
	 tEMFOpu/mCotnnysOEvFPAcRE/Z7l1LUMBxoHLKQsKD8Rf6PQkevym64pFC+21dL7V
	 xos0Ckdt6DUFzP3H15HLFfYuU1u6r1ZzSJZ0W/VKA0lyoWGgj/S9w6FEMZtI4y1URM
	 aTudIzOUQh7YXUxDMnbUyuSLRpDoPtns4QSxReYl0N8HLC2rVXFDWDePftcrxeGE8v
	 C7Ur4U4HTAjxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96797C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880799358.1117.4860966638252473924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8ee19d26e3c59d96785036e7d8777d6df220a27ef9f7a8921622334ef75a32
Date: Sun, 01 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748807993
