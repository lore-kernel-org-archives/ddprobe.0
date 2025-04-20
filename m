Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423EEC147
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745152794; cv=none; b=JfzgKPOBlmALaWqG6xP4a8nyXQ1cGo2Nw/dMAzuyVUi5wfEsHgZv5Wf2eXwEf6Z9jVR76FqTqWnWzgqRnRvQkMmfGDa2vwgMXXW7xW2YBlUJagj+/RYIvUTvSlQeJc6A2nlaUGW/zv031/3yL4N92cSWOyg94sWR3amvdzvWNK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745152794; c=relaxed/simple;
	bh=eXUGp5KUPa5RuQdgwqgHjORHEODQQbMRnUd93sQWVpw=;
	h=To:Subject:From:Message-Id:Date; b=m+hiLCJ9NhFH2ApSZ5+SaA2FYeuE2aL2DZpNbTEOkx32Aem8+hZV8Lr9BfunOY/DmgUg6rUfF4BuDRJGrW8tjOWe4khNNIT2BWtGLWU9vUiOxVy4z6YvvZx1Rg3VqmbvFumNs7A92s7AR5brKyyKW/k0+U8tHQb4Rvl5UzYYTio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz8mtNeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz8mtNeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3450C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745152793;
	bh=eXUGp5KUPa5RuQdgwqgHjORHEODQQbMRnUd93sQWVpw=;
	h=To:Subject:From:Date:From;
	b=iz8mtNeQ+C3xP74uI8NVFOKZ6CE286nOSQeKPhVb5M6203DkXmw7q++3iehyPx9uI
	 4gVXNQNUvelfMd/KdNzfCbFQB4VJGueuwOELzfz65V/lHY4oYj33jSwEFNpGBPlFET
	 yIF6q2bNit5gdDk6oYiV4SSleVsDmW2mrwKSlfeB6fSMEfiFFI3cdkGemjTkydxHLf
	 3rSbsJCaDlfwLVEc60XFMAogJP0qmtB7RjWsT+jk4M/ZzArKQ8Go8GKn9f57L1JsWZ
	 FgvP/M7/9HyIW6XVRE7B8EovwsZgVxlkh5Xi8OmA6mbpwQ11NLGb72uZFgHg/A6SPX
	 4zV7MNsc3UKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACDFC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515279361.5866.6652498797222414013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b95e514602b1617aa8cad26c72c5a4858491731b9d4e180e8579fd9e9ec22fa
Date: Sun, 20 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745152793
