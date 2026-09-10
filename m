Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295AD343887
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789017634; cv=none; b=NyN77Vh02yqDKuW9Z9leIcYbLO2V0eOV24zjEz6l4QzOqiGohmykeWScpQMDiDABYyvxMpzYC4+zV0riwNMaz81b2SGKM9Ppe7Vv8I7ubOtqJZTSeDQgUqIRHLfTwnrhoYW6624sB4PQEgyzmZy9TZoZrMPrjxxZHPAQOE/LqPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789017634; c=relaxed/simple;
	bh=wPcOXLHuXOV2MNrJCH1QdpOVgnw1z3djUAc1r4lm+as=;
	h=To:Subject:From:Message-Id:Date; b=M2oFiRAMshcHnZJJnvpU7my3rZmjEXs6MbCLd8iBcLdsynpZKxh4bVkr8jqjN/YXQmDF9KKFxFX1hGqF+ibShLJfuZjHZ9BC+HQP/NE7ICjQA49I1nQneBgx4jnZc3/AHSlEEDjUshTmK8MZNGu4mP+i07WKLpb50Ro82+e1Gcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYQYBQ/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYQYBQ/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B25C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789017633;
	bh=wPcOXLHuXOV2MNrJCH1QdpOVgnw1z3djUAc1r4lm+as=;
	h=To:Subject:From:Date:From;
	b=qYQYBQ/6Sa5huvKCGykWV0DpAQ+tzwfMzQHtnQ6Sgrgb8Q088D1ZARuRh5Qa91mi2
	 yiPlQCHVOp6ykA2+O9FvL6Gya8kPJQZLQDbgMZvj1f/9PxVdaCpsi8Bw3yXgpOVbuv
	 u+aG6E1lTiKOsPvzrI7WJ+dpRXA3tmIryAVDOf5e8XZG2ptj9b/cSWCDdY9j9V8LYN
	 1B4j18luX70tcLxKlaTUXGtz0EEvU7PgMxHnE1qyqZyJn5UR7O73AUdtl6OKgtpaJt
	 m+4Rv6hBJPt+pPW14MD7EQCngXClPHjbhEb3o5bWiys8iNVqPTbeGp/s9qEBbQMab3
	 o1MtDAdiZKsjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF905C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901763368.17689.471275120156223318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12fd4186876d43f8dbb72b90dc286a8d532dac5a7be77271deae76c57e255da
Date: Thu, 10 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789017633
