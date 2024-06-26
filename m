Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BA3181B80
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719442403; cv=none; b=f6aEa/0E3iIkA779mPtwUjqM5HKR9fngmP9gLo4i+tiuTgSs5tdXn9tSaHBAyPhqeRL7B1h/ilZ4AS0q6YUyPoM18c9ik0vESsvrFUcGJ5IdKyHHZR/QyGqbPPYEclEMZ1WvGQWLv9jICtoMOZ/ZAY4Zu+Lvb1ynVFc0sQnafmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719442403; c=relaxed/simple;
	bh=F9jSDOjdIskKVLWIrL+OvRdGOuyUrhuwrDjJnAsTyFU=;
	h=To:Subject:From:Message-Id:Date; b=Z3rCsznS6cTDuMNp/GYfLINlK220KG5r8GKdVjMumGHpIEts4FWOJeZV77MeRu4Zq5bZwP6ZUqymjIp6nTalnOup4iX8iQibXDaZtCRHYQGZebXIRPNeO4jeiOJ94ZeGoZ5YxN8yVhAm9rCAEgIarqVKk1rpAmRhNMiSD4+vNt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtZZdEdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtZZdEdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC303C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719442402;
	bh=F9jSDOjdIskKVLWIrL+OvRdGOuyUrhuwrDjJnAsTyFU=;
	h=To:Subject:From:Date:From;
	b=ZtZZdEdjajM4s51x4Hf4QR3TR6DuZntSdeYZesXyyW6OcKOZmZYOnmzxaXZovw18V
	 4JN/boKuZNFv+zuQGktkvVQR0mVdjNwol3RAW6GjPxvMmHYpSUkuiQuBVmouw/MYrc
	 OKsjwWrBRu27YBFYcmllBLeESNDLRRvL4HrolBRs+luMwLa46q7/7BapM19m+U7vB3
	 VqQXHPcvrI564NVkpbwaaFcSihnjUevEowbFv035kUhhNved4i5oluTg3Tgf3mPdDH
	 vRcUsJa6CC0ZJwtAVDINess5GKobyxBXkFv6riJVUaWXCs+NI8iPeIGZp6IUs5Prlp
	 IZTXa+WIypGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87D5C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944240281.31336.3385071234986449554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6373cca1ddada6fde557416bfa30d15803dcf41668d87d06a677a92b4cf68aa
Date: Wed, 26 Jun 2024 22:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719442402
