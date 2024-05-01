Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C1A1B977
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714591943; cv=none; b=OEXiMjp2A5gQd6oQcAJchk/FGuFCB2oaQWmk+ZQEzeFIc4tVVr25UMI6ld1K4Cg+W5IoWmRBiBBn6Yc+gs/WdKUf5MpURRoBoENJtm0HvgXV635Gd+NbsJRMvl1cmhdZrpRGiZI/LptHl6JZEQda26hLFgTxNVZEzoDvWm0qHzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714591943; c=relaxed/simple;
	bh=8tWwy5xG6UTSnZD9MBo8PWs5VDvb6ltUAkwBKRhq7Kk=;
	h=To:Subject:From:Message-Id:Date; b=F39iImitJpy7ZJp4AcPUvLNsYXcxp2qI/PsHzC5O0cy/lF3ubiDY1iZnKXL6dBqoAvZzOCcnKRzWyNqAPoS+NT7dlqixm9gjmtRLgjWyupWfow0b506tUpyNo5IpRDYMJVZ6biAcjxaYeygKV5s/VX4oDtOLmeQRJTsUU6BquB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S39wY58u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S39wY58u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E385AC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714591942;
	bh=8tWwy5xG6UTSnZD9MBo8PWs5VDvb6ltUAkwBKRhq7Kk=;
	h=To:Subject:From:Date:From;
	b=S39wY58uAGRTmtYv8hjzhhoCL1k03Ik+PHVSGp22oQtRkyXp+m7bLEDp58lDMDHq0
	 Abm+dcyp/X1bb2QdlNkEtm6qhtL/pMOGlOjCVUTNmDHtON+f/3PqW2aYD1CmH+i7DF
	 15k5kHy0Vs5odWpveQs2oCz3ShbYlUJHLtCVcCFCRnVHNMHPn5U6RvPbBdCBqkjUgC
	 +Z/4UK8WTOULKQlAmHkFy+SNii+ZM1Q5d7o0Y0FoZRDwq8T3BZfehsFcvebXEX+TQ7
	 R73kEHATSexV2rsJxWSFpY8gE1gcXeRIoBfgZG+SytOiaPk/Dk+8VQFzdf2KbCKKEH
	 wO4xwwQ8FG4iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38A3C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459194279.20281.181610090163645888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60f8edcab44d68982fe68683fa87827e36e851f283d7b2ceccf1b7efe204fd4
Date: Wed, 01 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714591942
