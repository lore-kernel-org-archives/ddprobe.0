Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1C41E7C25
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739973533; cv=none; b=c4fuhUBP7JXTMt57OCgTrBE6yepqx18rfHoqrp0C4TjqQ3ogLKLXwGmERsqXqqiVsCliKBvKbiJOJl3OS2r59D0Fd1tu8t9yg8UpZXEQl8KUyzigN9Drwi/qfh8/SfncmtgYnJGNVel/doqiZKvf/cNvjcwEK2fpKI1H7btVNZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739973533; c=relaxed/simple;
	bh=k4jSdTITKAfyh8c65A9/hYLf8TkaNBnJCUHmGfljzmA=;
	h=To:Subject:From:Message-Id:Date; b=gcOEfi0ohRIq5rjaA+bc/AwcgrnWOgjWLRW92wY3hIH27snlOIHZ6IgrpoKNMaCfVFjTeN3ktd6un8rs0juDUX0dxe7mqLaumlfn4HgzdZkzWR+pxD7wcQdFFFCFpsboiRLeAZoLRmW+q1HQh5MCxiqefiCD+tEZakygQvi116Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2NLtSSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2NLtSSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5760C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739973533;
	bh=k4jSdTITKAfyh8c65A9/hYLf8TkaNBnJCUHmGfljzmA=;
	h=To:Subject:From:Date:From;
	b=s2NLtSSV4Mw7idVnzWugsb+eMV5ij+uauIJOQeLI1g+8ZAOulMcEkyakZVdSd6hII
	 XiCndnCnELZo/aW18bT/TfBCDwLxiKnM7Mq1JZ9jQwnt1WOdvoTU3G3tVqvfZd9MUD
	 fWVnEQ7xNbrvKcReGEMZZ0CjUZEZXMAnTUrFXQY8qumTaSnuEbYHRFwcCW4NYgUS2L
	 nOZTfEpNRjmI9so493r+hQKtr9CALKNcBa4jcGjDUDato2x5nKPgVEPa3vHrPs3+pC
	 5KK5dOwmCL3T0lqz7f6XnYqHDyq5b9Vq7TA5B4g5MqQFxjefaZ8Ko97Jr7sm5nXkck
	 iazxoZvHsD4jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D40C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173997353364.1056.9021158692977148880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebf6ddde042ad6eaf75ff3ebe50c8bf6637651861082ea0b268ec93e6783aca
Date: Wed, 19 Feb 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739973533
