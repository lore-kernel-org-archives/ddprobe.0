Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F3A2D7BF
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790300434; cv=none; b=h7UWCyjfBVOEtA1zTh5PO6gXpQh9OCoHVycgLfkpjY0Qv2dQTFFu6A3xMBeKhA/8QhNmZkRV4/cwpvlpzzPBG160xr3B0ry41NPMK70Ee+Z/iPHj4UdGT25wQCWlvOMdZ0u/9ByWnXPmmlvB8VJFaqtikOe9J3O72Zl60m5/Cm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790300434; c=relaxed/simple;
	bh=+k78jiuWO5FPR6ZtJmKdlJ8s2mHBErZw8eGx8ENG0b4=;
	h=To:Subject:From:Message-Id:Date; b=SFP6bgYj64cI+I+KGKO41piz94v7+kqw5Iw20aPIjWfVxU+zps+6jNnG1kQlALHjwOfNrk2v0CS/AaQVxyR0VE1cg2BSB5uXCZDwUjAwqAGjju0wwtjGf6MZFZbT/dAb8JZoxbY1Op/d2TNwSmamNRTNVDzArRDX2z5CL1vqUOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnM3BzuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnM3BzuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49DCC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790300433;
	bh=+k78jiuWO5FPR6ZtJmKdlJ8s2mHBErZw8eGx8ENG0b4=;
	h=To:Subject:From:Date:From;
	b=EnM3BzuRMk530x9tzHlydVtonNsscbOHJDTVolIYRm4yK3V9u4lCgSrqSJ8ebEHiI
	 U9HQJm1I96XBxv0QOmOXUZbUNeWzZNtejENYfyzoKYoAVixglSlv5+zKubPbBPSyIL
	 K3tgbKMiMxtQZkRWuyKxGUOhV2pZpMiNLmS6CXQARuCg9Iy+SrBCCu9SbGadFfiji1
	 NlnUrflPZzW8dQ6hAvB3vuBtDixB8fXLdHTesUazGaQGCFl32KaHIsqp0yq/2ep4cJ
	 hZ4cIdbAyNym3PJYD+gX3vtbMFkiT+K7T8fDbnoUweSMD3kIoTNFYkBuDyUuPZko9f
	 N9wq+kxuKlrfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1346C9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030043368.19566.14862861334983760561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1efa77dbe73d54d2f97107e05209697950710d83337976f1df0c0e6a7643a34
Date: Fri, 25 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790300433
