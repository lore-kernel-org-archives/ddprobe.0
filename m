Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8A2273809
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769140434; cv=none; b=tJl+8i9FPnwE4ucfpGZFX5GMOrihpbc+Wry+Numr4+Xh8tQUvuc12g5Nu6UPGfxu5O2kiHppWmaQYEozOxrTLzQEe6HXVdJ92IRSSZCd0aveAYWXCUIYGmsQrWZhfnhyorryQt7Z7TtLUpCTuQr9KLX7235fTWkXvtO1AwmFweY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769140434; c=relaxed/simple;
	bh=O1KuEVvgQw7XsyEGyXY1sIaPOkBcWzL8Ozyaey5ACck=;
	h=To:Subject:From:Message-Id:Date; b=RmxOWV1DB6h4jCO56PhKDTPaHZcaeRLJRIrp2fz8no43xLsGIYKG/KDHqViU10zBFehEB2CI0yTkaJPsHiMl9K4MdVvK9eSKbx5ZZovF5rZfPMhgdPxieBKMujq7RbNSkrZ12xnYCI9MCU4U8iIgi+IJdoVPYdP4WSrmoC32wDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCI1c99i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCI1c99i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1337C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769140433;
	bh=O1KuEVvgQw7XsyEGyXY1sIaPOkBcWzL8Ozyaey5ACck=;
	h=To:Subject:From:Date:From;
	b=RCI1c99i4nIVFc0SQFpXd+485Gszb2lx01+S5wUrbxQH1QtuUNjSkEmQfNXzedOQQ
	 6tYqFA+7AblVb/qQwi+mKzKG5uLeJKG/CsAJ+zfumbs1jzkLF4Sm7x5z+EfhKj4dPG
	 uWwEGL1AGNtdWoOSq7Kuhpfnjo6A9WUTBcHm18vCu8lfScDdN9qBKNq0ICMZc24lFP
	 ojPRPUoorYPOiObO9zUnnHXwbEuAw2XycpHOgeqyTPom9Ohz8ETB5IDd81C/8+cyyw
	 93vPoXP6145yNPOUuZuzRIaWSYxhTg4qCt9+Aa7FILR7oS+u7+vbVvqip79NPd9vbZ
	 vCkq1rr0YjRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045AD6CFBB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914043358.16548.7252740696867535334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11443cc28f11e1215d2685d3b527a76565d1e9dc6ef95196f4b33bba4cbdc73c
Date: Fri, 23 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769140433
