Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A85818950A
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723485354; cv=none; b=NE3hJX6Yu7rrTBcF+7Cjp8hm66XXA8zzsEmlhOjRctoZnUYHJyg5K15A53nS2JPdjyFXkvTdNS8U0Yfx0sF1yQvVNt4IAa+bjqB/3Wbu97Ge+eX5QsEYXiOkeMwMxFwyphRbPf/YbJYrpB8K2ZPfeS0Yi2NFmVzXrc5H4OsHZ0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723485354; c=relaxed/simple;
	bh=+KY3x0u7Lhtr3Wz+qOrB0BRbUdBC4MnbBXzKgdaCvRU=;
	h=To:Subject:From:Message-Id:Date; b=TPFkuqJWD+Gefs13R8OxZaC11VkkHnG3kT8+/TiElMcbhXRUwARWVbbrDUGzJjKPjZ4mejH5sI2b7l/Ak2Y0o7rk9BRnV1ZxxtIfg45ki5gKv6XOGbIgmLO8mDIIspHNTKSrxRPqaY+ZogoUJ6dCpgwvDiU979KwDmn82g7mIAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSAketfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSAketfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BBC32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723485353;
	bh=+KY3x0u7Lhtr3Wz+qOrB0BRbUdBC4MnbBXzKgdaCvRU=;
	h=To:Subject:From:Date:From;
	b=rSAketfaru+TFxyZOkcQeA5ur7hvSvho9MZkkKkbwShO3jJ25zbYosy4FJhslOOpq
	 DGHgvdst9xmwJeNaVb4o91a2chYUeSLvD0B9gCveHaO+IOKjsxZ3eEgwqe6eu7uhl6
	 Pd9WVHB5D3gHSY7rfQr73rHiroMV1SvM3ICWW2qxBBbhGlt9dSK9u6hJzAwKOwd/ub
	 IGieKLLQbJ3/4mi+mLm2nPAqdPUbW4nxDCCat2Cj5gK2xSdXqnXH+QIaeXJvSYyYDq
	 wf/pgo8Qo9rn6YM56r/IPRUU7/qMiO0GMfQoYzPEIIvVesZIU7Ou963Pr4QUI31bMp
	 dvxli/+BDIRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CEBC3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172348535361.6637.10615069032358526401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac22a15b774fe6a47578efd78792646750882402d5f2a40dcd762191a8c4238
Date: Mon, 12 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723485353
