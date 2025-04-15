Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5033827EC7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744705794; cv=none; b=gntWOv8xvszYR99zbqV+iNWTGURLJB5joS4AYE6IUfWR0xagFqQNHl5AmugCVe/Qm/wqY7fiIAeH3w1BUnDlXtRmuSzf1nGpGfuztAVTBCBT4c/mId/zcfwWfPjEDjAsSEAqDNjd1eIV9X70PIiozWNu0A2XAjRSPaZQPQ5UXzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744705794; c=relaxed/simple;
	bh=jokWOr6cpAPLl/snZ5T/1bgxhzKoiwRD9HC+EDFEhiU=;
	h=To:Subject:From:Message-Id:Date; b=RXUlJV0XKD5iv/05hA/8xXjCKpkBdLkCgb/tFM/pgyU8F+81fRYwzxaTaidRbsVQ/TcqahYRorRB2ldboAdGS9rzC2dQBud63RMTc4uhAx0VvayhER4PmXSDN9oyMoMfsE3aV6srOpRUaNV88XIr8xOO+nO75c13f1Ct2Bc8k8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE4+Q9I4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE4+Q9I4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B233EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744705793;
	bh=jokWOr6cpAPLl/snZ5T/1bgxhzKoiwRD9HC+EDFEhiU=;
	h=To:Subject:From:Date:From;
	b=lE4+Q9I4RIvmeTyPZfsqbQ7jTtMw0r+lM312mOQQ5tfgialeNB8KKLCl70jH0WlIq
	 EOu2OVeYDS4yIrIo88skb8Vry9XG9VFHjjxKZCyNIKdVmFNvLI34OmKRneXj4t1yNY
	 t6OxXK+h4V+vTphch7DGKqatcOnyVLtrvM+KCvEf/lccQppqH3NCe9OSXEQEhsivHQ
	 55R+YjzYHSvLSWCNmMUviM77Zfu1jh36WkNHIVHe0ydSQCW3H9B3s4QSHXpHXoD38S
	 h1r/0nvvbR0/DTffBSAa68zOHWNQyekweECeob1UK1LV4otAID9ZMhRUkxvuipXYpP
	 DZ6aGGoUqFikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA3C369B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470579358.26525.14195417990602057783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e789c7ac434f897cac00a36b01ed9159ec56e120076651f687c2429a54a770e0
Date: Tue, 15 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744705793
