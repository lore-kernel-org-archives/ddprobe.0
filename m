Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231B930B51E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774634694; cv=none; b=hBwJBqIzSGQQIkULJim3BjXmeegzDcJJ5g8p1OqxAZ6LAL3IMR+vH81xUQCTEEJ+MG451EeChEpGGO93RjMoqDdfH1hIopdIbmeS+Wno/NZLb1aQW1DKaivWXArgKhSNKqm4tvX13D2j5JTtFkSdLA+2WphtBvwhytU8y+LPw3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774634694; c=relaxed/simple;
	bh=N3QsbxD7zxU8p99wshSPgEPj3z33yNxK+LiS4yn1nBA=;
	h=To:Subject:From:Message-Id:Date; b=WdBV1d+8qMl0n/0MXlPnTZRkIixqONJNtmOK/POq18Y+uv908PU75TkLA5I5ZLJl7RqDUJlG9goNWE5A5JvKeUNqKfbpdp1LKws8bl6G/zNMko2zDHpLk+pxaYjURlvdMg8XzG3/MVV+gICtoZgrLVLEuUy3tc5kg/U6aJogxEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5IE1maM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5IE1maM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5033C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774634693;
	bh=N3QsbxD7zxU8p99wshSPgEPj3z33yNxK+LiS4yn1nBA=;
	h=To:Subject:From:Date:From;
	b=n5IE1maMhvX9MTXilkMFIRNQktRxbf5ctO55JjSzVJ/7tapEWYnZZAvwt0Nl35qUe
	 haJu8hXPtnav/NQuYbC57n1jPA2KszzUg7sslEXcMpC2w9ufb7Q9wWsh+2J33p4R0a
	 Qs0I62Tofo6GM62tJeeS4+dWdnpWjloGciOrAWvef+4c8NkUkf8T+gPu4Ffg3ijtal
	 dzaZV52giayHtVrPK276efjcAnbMIE4V4qI4V9J/T3NxRk8XcqE+R68wgfnwhNge1y
	 DyUw8lRpwIQgSIFvZ93duCs6pyqJAVyQbvBz0FWvY+ypZMRBQnFUeSMbIYcPZpo+3W
	 wIowYppJM6TfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A177510F2865
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463469364.32705.6903169470753448498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df906d6e908918d5275709d4e4fbe7f5d26ac3fcc888ae234e841867663dbbbe
Date: Fri, 27 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774634693
