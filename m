Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7A5367
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746397194; cv=none; b=W5Idq6lvbFs8pA/T4q2Xvkbt3C6USW3nn0KHI/+zWsSU/TOdBGHbrlRGsytW/fYapxlvav5lGSvpwr+XR8wIh73Yh8BaTjb55lFObiCXnvfoW7UbbNWHstP0/UOZ9tv+46H+kjeKWaVgudtRN7+lawBQeddhkBpf4iNfYGMUvs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746397194; c=relaxed/simple;
	bh=Vtwh1rFJEFqAjlZjeO5X/45suAj74wXqzY5sWPJuLY0=;
	h=To:Subject:From:Message-Id:Date; b=GOkj+gTUUUYLNJw0LPV9QD4Fs57vhTpEaUBvGfE+bMSYQS7k6qXh8viPU7Q5CA/EL4CZ18On3MPUAXYYLbyuR00dLpGJD5aTNG7bBpjBbpBk3K/sgsvn2JRWTTxUY1cXBdwMh72vBEdNPRhrxMlBGzfeyk7C2pGIdVGzQaP1bBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA8Q3Tx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA8Q3Tx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C7DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746397193;
	bh=Vtwh1rFJEFqAjlZjeO5X/45suAj74wXqzY5sWPJuLY0=;
	h=To:Subject:From:Date:From;
	b=IA8Q3Tx6cZsOdzfrVvMY5Pu5wf9BrsJzRxFB0EaKtAynoeUUDtwjkj4t9QpBfDxbc
	 Pn+tH8NkZU1GgfDTgZt5bZTh4xoK2zUPAc39HJxaVKcB8nKnMHX5ByK+ireZuaF6V8
	 L+8y2K3kA5I1rGqmIlqaGKIF/a4u1EvfAihzmkKLM1oaP9BadWE18PrbNpsBBejMiq
	 iIqxK373jdrmz7LbrBiNy+QmgPBKuK4FcvlQuki20kppFI3xSEnKMEGl6JfGC/xQPL
	 GQbg8yxGD9ug1JyXUoTy3U0mPCf3Rnun3v6MFcQQzpXWO2knhH/SCTzeYrrcdO0Mkj
	 GZLJBAtWCylkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95264C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639719358.1147.15413882765607420451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b334a5339b0ce4b2fd70ccbfe162265a68e5f4af655a1c995c24f60312e27b49
Date: Sun, 04 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746397193
