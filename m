Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5A3181CE9
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718540903; cv=none; b=hbFN8EEq9kd/HGA3sqWy8KrkuegNPf3ps6VEq5HUoVn5JjrZLivK5Npo9GUcqBWCfgpBQBpkQyNlILjG1Zh6bylbIPvOeyb5litMhfWKklLHFEdsu5qQgXfAlFA3VBXGeU+kGMi5NY399ZHMP7P1NCaLOl6DCJ2V4CPYFOnSEyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718540903; c=relaxed/simple;
	bh=Stl54Mwus2qz4VsR+WnQQiBPD4qChrmomOlNmRuXpNI=;
	h=To:Subject:From:Message-Id:Date; b=GgYnAPNsSdRr5YC2obVoq8OOEp3U78t4c3GgLjhy6fnR0Y1XljIEg/xdyX+mi229dAr/fMDeB84tLXdP/EpNH4794UaO/A5eVmysNKjw9UT7txNtTFgzwb5d2qdgfrj4PdwFK07BOwHkcc1EsfdhyaJXALC5oiFJX8RlI4BtK5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK4NPb0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK4NPb0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C6C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718540902;
	bh=Stl54Mwus2qz4VsR+WnQQiBPD4qChrmomOlNmRuXpNI=;
	h=To:Subject:From:Date:From;
	b=VK4NPb0ZmGh1Esg6J/etBsiGz0YIlfRqr3uIUqPowwii7owC/OqX3mwXz6nYm7Uwf
	 qACEDWsqjv+azs/XvJj1hXMY0LDvDp3CS5iMfvAEvLJybKEP+N0KDKOMqtCiwXmYkx
	 BRDaMZ3KTSs1KqHlVRb+nFua92qxbuBQME+eoGF6AAh1eT/uOx9Ex1PpalY64xWrKS
	 FfhKHRvD19NETVQ/O2QBQ76ptMNBGetsuFCIvzIwCcKyrrQUCzevIjs6EXk/KZV5xV
	 3zoNqHMnOxih+Hh+ZJNE9tM0VSQRdaLuaE+mGiu5uVxQU9erU4MDjrwCPDGzc7/6p5
	 LsfCnc0b+oN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC019C27C79
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854090276.6295.14546045126040979627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a048990a536f82c7d4540bc3362e9c6eb204eb163ef4762180af7569789199a8
Date: Sun, 16 Jun 2024 12:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718540902
