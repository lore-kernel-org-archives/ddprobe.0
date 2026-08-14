Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC81644C673
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786696234; cv=none; b=kyj/f6f/L9hD+DmBknTk11c7UzIfnj4b1TW1KDckCPeVHS8WSN9MIXvWbRIJsgq2Mza2Vl2bNEa0PHvyEhNmQLdwriPKWmeTnbbh30b2X7xdPSSPQWIlb3wGHDqZpHNKbRZVqyKdQDbt096NT4HPa/EsPjsXj2FEsO2NNo5N3CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786696234; c=relaxed/simple;
	bh=exRb7Ikd767SMYd2b//ux5GiSjgkDUqqAuTi+Lehx5Q=;
	h=To:Subject:From:Message-Id:Date; b=iUiGL4pDc+gk8cVfyAcS8XBuxqfMQBp010Cs6RtTg29dytBj/T5kCm06fmUczKggq0ZCSsxboiphaqrFG0bHhMxXaxlaPhkkzjMYsZ1ZVtdtaQMIPJhYTv+dSQuTfOr1l1FN31DilJagvKeUsNEGLhG0BP2GkVGzoWaeBONtzgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9wd2xOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9wd2xOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E79C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786696233;
	bh=exRb7Ikd767SMYd2b//ux5GiSjgkDUqqAuTi+Lehx5Q=;
	h=To:Subject:From:Date:From;
	b=S9wd2xOzfLQnm7MS7RJfVo6Aqrn4XgpRiBSDuDLS/nsmdA1Fz5ow7zGweRxJ0MGet
	 DkbHMIxOymQ/Im2dUn6indaviLbyAxUe/o3F8uO2tt1vjYgQO8EA+YuHEeFFQoZZck
	 4SzkdIsLiQ5OvmOkNTt5b2OOjUcMf49JvLXVnROnEaI2ZvYFhLaYvTVqGUVDKF2g/5
	 ERbXAtoz3JmRn5X9Ww0bQmmuZ+h42vOyRH5w4GUCtblKxo+mlAxnh1CByJ5vsHIXJc
	 2J4DHD0RlytxHDLm06znhqxVC8zRUhPsh7i1ZByJLvZ5WldZSSuUW+/XDVST91F0S8
	 CnxNHaRPSWZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86F4C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669623368.26527.3638956987624803064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397c921753795e7b34447255a247dc6ac66db7da66d3fb5b5b634b8539059637
Date: Fri, 14 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786696233
