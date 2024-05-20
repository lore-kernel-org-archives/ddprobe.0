Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F683A929
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716244943; cv=none; b=SFwvjX5dxwNFBIz6kcvghKVJ06b1nRuM6kO4ydqksYjemz5rPSSFxMlYJ2TBNJiwVC/5zCw/v9yZjhwOtje/5ByK7/OO5FnSsDGrMKSMSUvWu6ntC2azQwZjoknLx+oRKdgcxvsdckvQVv88Du5+TAsPJI+djC9IjPCIn1zHPwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716244943; c=relaxed/simple;
	bh=cIPKEFr4YkjusmKRS/B7FUWDVCGO4l/zly6BiJ9mjhk=;
	h=To:Subject:From:Message-Id:Date; b=FEc8tx28exE9dhBh3fqQZRKS3bp6j3K35iotxMNq4cxVJZTVztvDyuAr8/zc5uJeh/ahNnxtO9yubQOivRAju+y1wtqz8NZ3Xo3YstMTy+QxzSvLbjI2qc+dr0WG03l2eJb6W/HeXk2JrA58ZG3PdB7PN7+DO2GEIX3pezkQjO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ubmm/7UW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ubmm/7UW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEEBC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716244942;
	bh=cIPKEFr4YkjusmKRS/B7FUWDVCGO4l/zly6BiJ9mjhk=;
	h=To:Subject:From:Date:From;
	b=Ubmm/7UWfYRTgM+5Ht4g/eX8nPHh4GCq0+XAHnTImyr6MX1+OK+Uvx6hRlnC7EYX3
	 9AbeWLJik6Q/euIGN6160BEPM/4HfoM07n9c2jnJgheo01huUqOHLI8Krz5qP0ZE1f
	 BSVVbid2jr7bgqRw+6JBecJCxlcqrHndEQhOzuLefBKkas2H/xaTGtFSeQ8hs4DV55
	 Zvni2VI0E7E+SEpMQQxgDW2ybAzTtqCvI8mUyhhQhU5hjqIu62ESDaN/soh9HhIgM5
	 rnQ4fSsm/jZLRap59OF6dTyzczNas8DXnYQClajz+x3+nXSThT1yZfi8VkVm2cwIwA
	 WgItIGXdfVcyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AA2C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624494277.7345.6869324741746922733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef09a8bbd1dfdfea6002722c3f019485dcb82a8b2e5b0701e4adf5fe8f3df7b2
Date: Mon, 20 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716244942
