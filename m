Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19895374191
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773605694; cv=none; b=G7i5DGQTu6cDb548j9X/Z7/18IRvKAL31h1R0OOsSew7tBldzIkxnJFMsk5Bvp1+ibPT+YGh+xn4u+AoWdGkBZQRm8zfPlt8TU7QRL623rMNc7Wqs33TgsDBLXgC6llzloPVmH2dAO423y31VaEqQRBqt6yeuuRG5krNDOQCHXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773605694; c=relaxed/simple;
	bh=G2O+5BQw7apq/ZqXm5t7wyKew4R6hid7vdpsCXhNijU=;
	h=To:Subject:From:Message-Id:Date; b=EnTuc1zNRLnRJOpm/b8tZE0iUoKUD8RDstJYs2Rmn4/3AqdlgHTzT4sih77o6hQ+Lsw3kLSXtxbdTNoiuPoshZY8vZ+yEmEB6qpq+GeIJGHRDBFIoYHiH0yw4snULpOqued58aidYInOrCt4O46Oa4cP3jiwDndDal8QXBWugyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGWN2gm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGWN2gm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A10C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773605693;
	bh=G2O+5BQw7apq/ZqXm5t7wyKew4R6hid7vdpsCXhNijU=;
	h=To:Subject:From:Date:From;
	b=kGWN2gm6H1Gwd7+DmGHS5zMzMmTe0OdGOrG2lNKcytwmkDKCg1Ukp5spa44wHwhAt
	 oSpmgfx6PktpdGzfNqBzf63mhNPGzPIvSjXopQ7BVBwlOuCTzu5Iy6mSnyDK0gCfAW
	 c3boZVrlRqEl4c0zZLXc2Oj7W3LmgEa/qStK9Q6ufht97xw0EM/gQRlaFV7trIKRST
	 65kXcqsVta9SpIC5mQCujw1bWH3xf4w8aeM6pbb1U2jTO7HLT02GfukhyyEcii+VUi
	 ZM2ICJ7GhC/prmxFUMSQFIMGy3zpwKH4W5Y/63+yu/0TfuZcHAqQehq7ErZumpQ6b2
	 M8L2TnXqHcnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE0F30282
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360569357.13099.3976403943658005265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681226474b6e32d205dd06a4c2b59efda320ef900e7cdb6b7b33c40c2927af68
Date: Sun, 15 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773605693
