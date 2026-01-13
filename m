Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DFF21B9F6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768265634; cv=none; b=rrlXGyiJ7qgaXNhiHnUN9P9Sf8ibkWuXe5yMx1o6EUHyicamaKT7HEyd97kJDjkMwnFyDBMdRnSzcAzcubAeZWsZQHbmAV23UcMakrbOTbF5FMyQbFrGvIRwY34IAXdL/gJP5tsDsjalRhaUsxHmWjOO8g/Fglw6wkhBhMWP9GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768265634; c=relaxed/simple;
	bh=Lc7YC2kfBKIknWbQE2+I8JHg7bPrzRLnS9X8a0mCLLo=;
	h=To:Subject:From:Message-Id:Date; b=i2aFqLswWtESFpaqXnHugHXT1+s9REWfWnaFgFzWj5PWvpjQ8BJ1crIOL8ObrI/8Lvq3G/BJNtv7EVGY485UjKPRAt1W86IsMERY/g9nH9O4qNVbaXYQC3TBX1Wt60uu5gDk7RcVR58yoR83s8ZVPsPmP83ayz6ZQlzZ3JOyobs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO61fCIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO61fCIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC9C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768265633;
	bh=Lc7YC2kfBKIknWbQE2+I8JHg7bPrzRLnS9X8a0mCLLo=;
	h=To:Subject:From:Date:From;
	b=rO61fCIXy1nx48w2QjAWbgWeV/lFt+gxPAdnVHWxpe/oO+vacQPZrZ43DOB/aiRan
	 cGbGn1bfMGsrqH+bWT2d+KXuE1d0cbR08wd425bK7VaBVlFYumXSgdZu57T305QLHn
	 B+dXZrB03/wYACR+mCUB8P+RWe3mHUVz9OkwTTZYJwBd/m/vBwEAHv1KGMlxurwkYx
	 sl4NQhOLDuPWEUqb8CfUihjfiYk8/WoUHM4Qto6YSd+uYPxkR2WaQvoIqNdePFawii
	 X+vyCLJNlm6R+DnnBzqIUIpTCFYpGvsNJ8xuTgO4nKhqmlbQwuNYYlCgaa1eUvw7K3
	 OnVRebKh9z4Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11BCF45DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826563357.3239.13755281243338831695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578067ac33ce2a1486d069a4677d8c1502d9fadb4dad074edaa786ac35b905be
Date: Tue, 13 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768265633
