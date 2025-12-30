Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292A72135AD
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767099835; cv=none; b=CJfT8mh57R61jzcxCnaFKNZa6dPHdmjEG/4q4xxW4HSg02ZoS1v8jn5QKHIKREqY9dXZ8HFC5BF402JUpr95gP14N9prkRXY8xziGQwHmk3tP61OJetkX/rzJ0D6LMh8f9Ic8756xKMHqOVC9sEX9YvzemBGV8VvNl8n7C48EyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767099835; c=relaxed/simple;
	bh=B58iwqUldA/NIHZ54av7osg3BbEPHyuQGY1vdM0rFgc=;
	h=To:Subject:From:Message-Id:Date; b=dJMdf4I2cFoADJx9X6L7H2nXCKKWOtR74v6PHtIYX7tRisPDxteN63nzTbzKwC0tMOQguvBumMgvDUqGkxxwe6FuWS4nUlzzIDVWh69rI91BqlgMsS2naqeQn5MgrwB+F4vMT6wIlWg5o3BHbzD2cph9/JwXOfUZjfdWmgEHv4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBCT133g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBCT133g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6ABC116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767099833;
	bh=B58iwqUldA/NIHZ54av7osg3BbEPHyuQGY1vdM0rFgc=;
	h=To:Subject:From:Date:From;
	b=TBCT133gR9eoNQ3dkv5VuESPQl6HSDBL+HoUNsCSxjnZaZFJv0XPSfjvjwHWFe6aR
	 J8xFDbONtp9SGwsaCvaQaex4k2+2AjAg7B3KcUJ8PtzeSjYBwtO8v0LoNBXFUHW0tD
	 G+O9Z59CLRXVR9v8nP2Htvj4jXtrPZwqXb2fjfY42u76zvCKvsKRwyNgXKTA+WrNtT
	 G6RMJduTFgTBgynw5t3mHKGIRgoqpvz5bCbjJh8SYcb0AWu4bMTTBC/O95D4HsYOnp
	 Cg4T3uAsgQWGmwamnfYXxBofAE3y+TERAiSDvJg23xaviuZ1bwI9iKC2nhlBL7O5yn
	 HzRt2K3M3akcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF41E95A8D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709983357.6797.1089602052135027834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a768dc9002dce55049458d3a4849c83ac4528822b288fd86228a0510c8bcf8d
Date: Tue, 30 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767099833
