Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEF9125B9
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733181354; cv=none; b=or4YxJb5FkOyqIjKgB3lasRwYLMn8zwKruPGtMleXRjLGF5IDhamNQxlLwz82sH9/38sAnMyZg6ZQV0ZZdDkTcWq1sv2IQAKDGBvoVnCBOHDdwPULJvPpZTDsZ+i9FPAu6kUcuWHTlTLMNttbsiCQrxlnhABas33wfnuswLXIIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733181354; c=relaxed/simple;
	bh=MKO9uZS4W2PE+zVqM43W8WriEtQhmvY6A17LaApRG+E=;
	h=To:Subject:From:Message-Id:Date; b=BwqcoeuRcxGuPElNHRVz3WE1rEwkOzbeSXCS33CKuQMBCm4dhi90rD6jpm2EDN/UfHv00dAta0Mmkqg7fDKSKZz4ofmIsS2UhqD19ExCw/BLCVR1AvK/XqmJmCKD8hxWM2FrcH+0HU98ZsXJ53U1r+8RQAliRXSpIecFJTe2ZM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCbwvKNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCbwvKNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFB8C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733181353;
	bh=MKO9uZS4W2PE+zVqM43W8WriEtQhmvY6A17LaApRG+E=;
	h=To:Subject:From:Date:From;
	b=BCbwvKNw0szJWIn/bouukIQvYYVzPLW2m/HYfgoW77oCMq8b97slbl/CUsBXZhbba
	 yNI8J71pyhiqD5vVIqV2i5KdY5vQK3RGjFg3WdC2mjRMUz5B//JSRBSUcl6BzMvmHG
	 KIEhpJvKvRWeoSuVWbCTkrjVdSG8xHVxh4+hQjVDv1vaa4lMmXs88Q38gH5Nh1d9W/
	 V7nXFKU5ekaArMezunxtj+dEJt97Ie/1QJYXeknH+W/q7sMD8VLFgWHgF9rf92vstZ
	 Uk6BlTJ0z6RNNT1gcMrbUUZ/6SW/nmh8H13+le59cm27qvotUyILY4OqFfc9cggAuI
	 sSmW+o078PDtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C27E69E9B
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318135362.20145.16003095894777910938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57c091cf0c08d05e223d78e88e63d5669c5f418e2ca288e55c5ecc93d7ae195
Date: Mon, 02 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733181353
