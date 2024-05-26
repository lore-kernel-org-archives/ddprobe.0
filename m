Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9873F17C60
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716735263; cv=none; b=bMQbHyiADvyCSh37YoQA/Ew3sN+YF20kphAnE7B2RXjp7GrZLAdEC10UCpv/hhDkWs9QpZZ40NKAvfwD1G9++ZLJNtUQi8UjbSUAGK0OXCFB+Gy5Ds3cT4pwi/e3js6hteBX7heg6pnfFiZBRaSnypdMDq+i6c8OBF6nZgsa9IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716735263; c=relaxed/simple;
	bh=GKoEkrKymBfDQ42veOooi7qF5r/rkObbk4VAQWBnXPw=;
	h=To:Subject:From:Message-Id:Date; b=qNies9M+EElz3nFGpGETj47fa10AbFgtBPbgIK7US6kp7iNHDNgf/pyyFu3SByqzX/wYTOpP3udw9l3dauYbpCLkaO2V4uHmv3OhhDPRjhf2ORPA2Lr8ty8SYxOexR1Nygq8qq6+Wms25WIUMmob3UU8rseM6phiE77so2e5qA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+IvXxnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+IvXxnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8930C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716735262;
	bh=GKoEkrKymBfDQ42veOooi7qF5r/rkObbk4VAQWBnXPw=;
	h=To:Subject:From:Date:From;
	b=R+IvXxnYLptiH/EI7ipXq0PEcaEsr8Wxyq11qKpnKfVD64V8HpSzWfdQtRdiuKMcw
	 dTMRVFhkzzXNIHpLdGmyYi7xY8go38izEb9PvkS4+mS0QR9gk+9hAiJVDw0PavRKcP
	 0lnTe8xsQIiLRKYfmzRPattqTleNijelY9KsnpoQchyvbLNk/MrD9Fh1Krh3W2IKro
	 X2K8sgRU580QZNrpJWCba5w6HmvSnSWsQHjJZ++wh+DcaIxyV+WakV415dd2HCEoCZ
	 xwyB0sOQ7vh/Wn9NIMpKizeg5eJ+zVD33e1mZCE65Jh2FM7mmzOcbvYJ99bwhlVDx0
	 56MHw/lznUXlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1726C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673526282.27381.3601938717157043897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc76a3b35cacb1649435433acf71b256365f7c59cd92617d499d6e485028aed
Date: Sun, 26 May 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716735262
