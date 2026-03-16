Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A34239B97D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773670494; cv=none; b=ZuJ4gikg10nWWc7zmyEVc6uv9fjt2dmbBFi9hNaaH8pr0BzwGcjOeeseg8pkD2mSXsK6eCE14i5W5zhH/6AqivzT0DUwbSOF8KhfWmOLQFx6eXu1QSxTszMNPaRAoPc/lpfzSQoUJU3ss9+riGpxTQOgJW0gl5TLo/390QtJu84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773670494; c=relaxed/simple;
	bh=aR+hv8B1RTVFmLRxk9lxKbyi7HHbeR8tfP1t7kwBCzA=;
	h=To:Subject:From:Message-Id:Date; b=pRM1lzTxvy6APJ5iOxlwoc6tSjsemUOEsR/hq2WRevMVwr4UIz9a3Okq8nSmkUxzGvo51at2QEoOCHZA/0KfyPCoA9V565FIxb5PfVDH9/0BZzVSEEAX4CPnX5jOrBX6OTeu8gCV9F61yXqyJnePjReyC7hEMonfklegOR5hojM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAJDU0vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAJDU0vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6261C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773670493;
	bh=aR+hv8B1RTVFmLRxk9lxKbyi7HHbeR8tfP1t7kwBCzA=;
	h=To:Subject:From:Date:From;
	b=KAJDU0vMv4HO8Hb0CE7/SQKEo+/8r3fjvdEBa70v/WOay93yuSh5v5AQGnzEZnV8d
	 dwThZEfeqHC0F56EYHPtoTS3YSDfQcqaZGv3sHWIFt+vtH7GzwG4ptJF6G7XcDBbIU
	 ImOamQsQ8BMwySNVy9eCBtvo0Cgw67Wy8oINc5/njVlWbn1r+vFwudv5rqDoWQUVGo
	 LTLfsegDEnnr1Xax/NabXQa+wlffE6dXhrLBKVZmT10VlXaLAqK8h4HcCG8b+WFKHq
	 8Wr2Pp3KKctluiWQjsD5tS3+zlsgvfI5kkarh+bfNfx2NIRnelLzf8DAfqU1L+ZAx9
	 PDisNlwH3CBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BBFF506D7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367049359.1804.17057206793814471246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a14f547f87330aaf1bee417a0e283aa965392b76ec01cf3d59590d265abace
Date: Mon, 16 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773670493
