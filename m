Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22452145346
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754521795; cv=none; b=pBfSWp98AaWio+Vd1nV/7Tc+FA0AEnl27Zud0g02yCkC6sreLz/DqCnig5TDr0Ggh7pHT15xBPV/yim04Opng3rXYbX1FJfq73Bx1JcHFSmanuFY3JmtNyMqZBgDvuvZ5PxztE9F2nqpFd+CyV+ns1PffRMcaeXgr6SOTFWQ4zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754521795; c=relaxed/simple;
	bh=hedadBXDeHY29LcvsjfvDM4ZdWLpm91SdijmdzKCoJA=;
	h=To:Subject:From:Message-Id:Date; b=IW9jPVDOE1/4GJq9OdPZcWHYTUb7RmcJPC5Z1OIGRJtFqNZR9cMbloeKwUEpnmxfvJV/B9oYXrjsRUc16F06tFnQzvX85iKhyVIYaeNOkOHJk2TaKh2JymGQCfc8dlY1g8Ec2fmwY86tSJMyjmVD5LzwGbL7NQS3J3BsgJgh1Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgP+Qr/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgP+Qr/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754521793;
	bh=hedadBXDeHY29LcvsjfvDM4ZdWLpm91SdijmdzKCoJA=;
	h=To:Subject:From:Date:From;
	b=BgP+Qr/uyPbZi0MrhasYaB+kMfyQ4jZ6q/NKPkwED2aAty64jaVgLWgMGWPpLemGJ
	 c3GXBqVzwazN4bdshu1q8vHPZfuxbqP4efT1GmBWzz0MJXaq9yKaSSYRCtvTZtJj9t
	 kTUq2eH1zpGO6Tbs/yxQfR0fbpcG4jRMeLmQmpaJZF8wBmWrOH0DQN+6lDEXMvKDkM
	 U3QHhPmuNqT/3dnmb/tH7xDvZUaHSVnF4jKVRexUX5dDCvtk+ifQjs6j8SiE7HRB6S
	 RcFyZxt2FM7XDSubLEyFgN9LrdS00o6KuWnl5IGZX57rpaetB+5OloGpadh3aEo+uU
	 szSF8pjQuY0xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF28C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452179358.24994.7839272331595800975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3da70f7b0536b7a9aa05ba7e29c93fe453d2fa7183fdbbdfd1b2202972433e
Date: Wed, 06 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754521793
