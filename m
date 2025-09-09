Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1474F264608
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757391594; cv=none; b=j5w/QL+/uZdf8enU8Z/EplNcgbd7VeLqqB9NtpaFt77i6ocu7qe3aKfDNMMwdX5DgdGs/rwY9RLY885gUuyvvFaqGUlHN/O5rOtrwojUgp1wLNlg7A1ceoJC7KdZSKyfcBcJm3wyTql43DMeTa/WubYAI+Zw5Q3XIXgnRwtHfXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757391594; c=relaxed/simple;
	bh=RnbiN4V31YB9opfF77/E5npREv26VYheWXwyjbLkZVk=;
	h=To:Subject:From:Message-Id:Date; b=sD7OP5PLcXQ5MVD5PnZv/jugvMrV9bw64tuOyTuP/U12q5ofYJ9hVDB6WGcHHlRwvBb11QCxbAQbn29mXAh71S7Pwe9ZMV9woXFk9pp8rsd+T8gGaQGmeJ8dzUObbx2A4Ea8bS/lWNGcrusb0s337RndtTPQwhXP+4kou74c4ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezfiAmoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezfiAmoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B7C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757391593;
	bh=RnbiN4V31YB9opfF77/E5npREv26VYheWXwyjbLkZVk=;
	h=To:Subject:From:Date:From;
	b=ezfiAmoDapYID5OrPpMBtbns2z6TTgxIoxEE3fONMjIPFZy/hF0tSTkYteEymJqh0
	 BTYsJEZxsZSvKejWo6Z6gDA67sYrBig6KxvRlWu0tmSArQTAJ3uUX/h3CLMXaVV6dL
	 wqq/n1ElsGeQNg4d61o+XUHv31fEQzXPPqtpqdYp/x4yA4ZByEXMQ6zliCa9yg26PH
	 7wwSScSz59PIydY/mCh/DT3Sns3xKW0etU3IlJRXvqyhHDnmtBs0fvB2cCKCtEvJ02
	 Gxh4r7qTRa9rEoS6lw6bR2smajUN2NU3BGXA0hVficFzivokm4ToOf5cd+99VKa4lq
	 UqY75cZ5KyZlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BBCAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739159358.13615.8053693691559416414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdce31dcff4bed91c9d20c0c58a5fc26abc618f09b3de7ce25038a01a8a4538
Date: Tue, 09 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757391593
