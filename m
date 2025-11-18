Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5CF30E84F
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763455914; cv=none; b=VxNqj2eMlXRM3Oce41WL7vWP/dexsbZdjeH08uY3euZ02NvhCkVYd8PrnL8AUBC9f//7yIzGslye/8EV3BAUy07dJ3/9uANz1pJuysEVr/TrnhzRLvH0P9X/n+qDspDjO0X/C4RaUlyFxnG4AfAGq/DHpgZVKBtM5CPTUP7iYN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763455914; c=relaxed/simple;
	bh=0OJzpL0iibTQ4kzleazeOtRmwoGOm7xP/lJwotiqELA=;
	h=To:Subject:From:Message-Id:Date; b=JHHql1+sCLWZgL6m/2bjSw8pF4yiqACW6NNTL1LJLRSDOyL1lKoU0DWXbNVvO9+P3z5oUubgJdA2VtEbckKtfNy7hox8reWITyfTbKPGeHAPJeZ/i++tSqCwO6YZ0lgv33JNSFjsTYIn6xxUEN8ZkClC8cPvGqXu3pLVv5bhC4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tR+buCG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tR+buCG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1FAE2C19423
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763455914;
	bh=0OJzpL0iibTQ4kzleazeOtRmwoGOm7xP/lJwotiqELA=;
	h=To:Subject:From:Date:From;
	b=tR+buCG3dOgQmX/sHXrkLBUgrNGqqsJL29RV7x0OB0ZDZ756WA3hoIExwI/sTL+8N
	 cdLXud8aOZQQidI2xj4d9m7fuBVipWiGE4WBMndvv9xJxFmDnyy9tpMZ2HPt0DoNNR
	 EETryVgEjN0v/EFEwpyioIkKb6pLfnVv0jZim2BJNpbPYe8ATD71JlqxeSn8mqNJZW
	 HUkuIdj2WZswtyI7VnB9wEMLzFEdasQD9JR4YafULK8OTdeGU0mvb7LroM0ctagkJm
	 RDo89XpHWxtYRNz/QotJRh/5BIatyozR7MiphL8ArRT0rWgBHSuOAWfCTNQsGjZmoi
	 QsFTntX0Y0sRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D1CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345591358.18286.4631003521418991185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dddef4ab913fde47f2155c557ae28ad78a6bc6d5646d316dc46e755650702a1
Date: Tue, 18 Nov 2025 08:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763455913
