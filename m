Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA2D81724
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770965094; cv=none; b=sefQh6mz1B3ciGEW9It4ooOUZln1QoOz1WA+5/ep0xQ8xk0/qXTNRbysHdTgiQQ55Vryt2US+LGpEgKzStGJGWu20d5kKgWV+dpyYKDO2+ly9Ppb9VNOBK7lchc8b3GCr5NjaDrq8ctcI6dDNe6Xv+sszt0//OQ1jrDPTOGWTnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770965094; c=relaxed/simple;
	bh=N6yu2sXhRLK5ZfDDzlvORQEFt6xWRi34ZESDQ/0FXiY=;
	h=To:Subject:From:Message-Id:Date; b=X22komJowipsduW6vFJZBIuhfuq1xHT/5T5DVEqD5Kxm0XzGKliKlUYEQDEwVeC85qwsGci+PQyxUGcmM4bxLTnR+WKWrLVx4MPm5zIpu4sGN93fJCb3J1Xueoftqm7eX5SjrB18BKy3uds3bK0Dar+IneX8+xNijQg1B1OvTlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvLvNAny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvLvNAny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C212EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770965093;
	bh=N6yu2sXhRLK5ZfDDzlvORQEFt6xWRi34ZESDQ/0FXiY=;
	h=To:Subject:From:Date:From;
	b=fvLvNAnyniH2oRUtgigbfX60FZK9yrBfI9g4O5k3rQE8p8t/fdDCKJagU32OYmjYA
	 Duh4qF6M7Qxl7o6kfgeJoQRwWDJ7uS/B3qOlHPPb1gQ/jL2M2rs2z7Yxq3KsUatTdR
	 /F/6NKxRe0YPtxwRI/MfBiHut+ARBaPRXljOkSSW8XTUojFUw/FhZ0MCRTHz5HsbQG
	 KWnqSBDH/1GGsiHmIsvNgFYefF5eTtgknqcLWXEtFftKqtkBJQp7p0A4iZ6Znqy2Qy
	 4kyAHDzD7pG0wDCtlakN9GimnfJibEcUMjxRWUjUdARtVldbuz+delbyUCIXMQIjx3
	 wXcQ1yT3qJ2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F7AEF48CC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096509365.14032.11190987278008749398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2f5dc239063dbc4685d908217b2f2310257fc22b9145d49b300be27eb1e54b
Date: Fri, 13 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770965093
