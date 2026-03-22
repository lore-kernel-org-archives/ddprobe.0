Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBD423BD06
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774214094; cv=none; b=t23rkKEDld2obMOAyqzn4LrpwwDlOzuCwfLvbHvkYYUibZD9Flre3E6n5+p9+gSUhsQPX8SXEpip9vLMmDiYPJsfDpjZXKBiqFJRUJoGLcdflv/nXfGBLX+wcc1lfTpQlaaQmU3VVwywJ/jzxBTDIZ08jn34pqBktS9JfpElz0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774214094; c=relaxed/simple;
	bh=4quBqlIwI4gfkzMr6DjR+Wq0T4fPzvUAXqY2IP7iW9k=;
	h=To:Subject:From:Message-Id:Date; b=kQ6qdWGxcqgR1stKBXFx1m50AtNvU8RLf0f/ZD5mqiNXfdJ693X7AKYqHtnnldGeeySj/WhxqMBJPAxum/WDAtBBA049gx2/NPR45CWXl+JJqqhaLNmieF1PIoE0p7fpPke8gTURSBB1u6qi492qjyrd6kWDL0YOR/RIBMv1CL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6jfbFcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6jfbFcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE24C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774214093;
	bh=4quBqlIwI4gfkzMr6DjR+Wq0T4fPzvUAXqY2IP7iW9k=;
	h=To:Subject:From:Date:From;
	b=j6jfbFcyiOrBErOmjQ0rcK2YVDg3h+iZFLpWkq3NuEbjDxYIc3/uPdrUNcbf+s2DT
	 2qmFoW56vmZiFi5vk/uFbNFVk9lHRt5GP2Q9CRLn8t0NEMtFvF8ztyaFRTRMJcQrak
	 3EBwQOV07yIaiHkG4vKP5UGWpGI3L2ziq6Ui0o7M0w36qLDGk5Vaab6ERl54g3OQaK
	 w5x9PobuEtFBjw8j5KgB/vDGZ0NSzTCgIUFihmVFiSEqjW9rOhk0KhxxSi+Id/sKpH
	 KrSpeSSXe3M8JB9gjOMF1IfCixyA3+rBO96L4ZiVGuWLNS23Ailwjbm/zBnftXEtes
	 WXqohrhndJmQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A82D58CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421409359.28942.14736992165821179780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7099504cb22009617db29f3f8c38952b3d7d15d0dc9cd7833501c737f83db2bb
Date: Sun, 22 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774214093
