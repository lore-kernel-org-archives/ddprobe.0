Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2435520B212
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764956574; cv=none; b=vFxjsH7rsajLCVuKAbm08Kr+WFTJ5urwulPA231D2pFggwfvwVZRiW8LDmk8wmFg9c8jbkf1TWzQvRH46K2DOA5I6ttkHwKY8VbDdVnoW8mntKMUUfdObmwH6SpCS5RB0yUX6iiGdKuDmqSpZb35Wopv3gA+v+Ull56gYr6qtTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764956574; c=relaxed/simple;
	bh=2XvDlpZsq5jkVJhac56zPIUPSwqb8Uj+5/BaKLRGbbw=;
	h=To:Subject:From:Message-Id:Date; b=edEyfUPgo+pVoUShjFHT63rECcrN8kjVxh6lAsyM/DckWnbTGYQcoJqhhK/1L+IKpGPB8LO/GZnKNEPYI+o99sOw2RrNb8y6w2CVhjehDYZD47SIyIxKKQB/chsxcFJW8NRzvCiSqyglCPTVKY6/6dq9DwnCSzT4X7H1qkTOJc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NclGKt+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NclGKt+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98E7C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764956573;
	bh=2XvDlpZsq5jkVJhac56zPIUPSwqb8Uj+5/BaKLRGbbw=;
	h=To:Subject:From:Date:From;
	b=NclGKt+m6m1nUGj5UZJN6foFOBvFOc9htnO6gsHLtkTkpywCktkILeblg4R2AEMzm
	 bqQKzPlJZgA4xx960x1HwCwIQfJZazl/G4Cia9CDanb99XdIGCmdjZfj1oJbgvhfac
	 D82Xb/E2AsTuPE0ZoZSt8UbYx5MlEAHGF6MjteKQPeqdiDSeCla6YTDlpnF7rjQSt6
	 tQ02bQb55vD4902nqI3Y20DgFd9KTtCfHr2UxQr9hP25a0vEn0BMs+n+DnipeH2XeU
	 BxIyPUtx91Z3zjemL40Rmof72uyACa4qGqZPlwDDsdK2lcuahJCY8ztCyU97IUfhRP
	 DOuErtu8GtHuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2738D339A2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495657363.9269.2200063996755608024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e0d2897b3dcd40344c2157116076b54f26be47b406d9423309fb83d5aa6b88
Date: Fri, 05 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764956573
