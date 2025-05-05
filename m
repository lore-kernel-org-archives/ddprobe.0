Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8191862
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746422394; cv=none; b=dMr+F54hd4Cv09mwTGv6u/b0nmSx4ADushEC/bzOjp5LNisUKgyYaMjwz//RQ2gV0yq2cvVOXwkYtQ5Puyf8D/JKnXiSYSNsXgjZ5588eFoU7Z4MhbBHmAp0IODeCcRkJPsIO43Sx1fQWtj20rp7A4aq4gWHgn+3QnYX9CMRQiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746422394; c=relaxed/simple;
	bh=vLDnQw0BL6U7T6EqYWa9KpkRTdBEYYehfeyplvfPETM=;
	h=To:Subject:From:Message-Id:Date; b=qalwesiA02uqKE+l+BuRD4eTv17AIH8Ft1QLzpdtvdaO2Zucb51BesNmztd1OTizW/Hrc4UM3zrd0YUfBzrJ7jE4BQQI/4zGnVDPEup5hHCBhYQ1GHYy7+XZ+61jXUKaEmXC8+8xaZAF6xqrSCYTw04lZqdjGTvTHqHV/FDSkrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQzMeeBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQzMeeBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC245C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746422393;
	bh=vLDnQw0BL6U7T6EqYWa9KpkRTdBEYYehfeyplvfPETM=;
	h=To:Subject:From:Date:From;
	b=nQzMeeBxm0V3Maw0qRZAi7sZ01yR047KqvghCpcoNl/a5iCO/n9J413G2ckmbzsVu
	 zaryxPczkrFT2v6cp3ETRKimGr7BKQCQQhbgM3oPAPCcP4wUDf/jVkeOvKhn3E9ZJH
	 s6ouAuKSM9pRj4SdYc70lnYtjzPXqzgk0YInqDuvgxRoGBXzA1LrWIR/DuNbxR8wC+
	 bVkJ+gIh/vmLUqzVsTbK04dSvRBfyPuLE+efasfL2BffnlxGuy1cX/7ODDlzQuE/C1
	 xaRxGwpkaIibBFml3SoRmEYzM3oOBVB2NJpG6PA+liyOwTHcgPJMiL/TEbUcQlmZ8A
	 EDcWIEsdcrSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E4AC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642239357.1010.9192155059447635425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d17b82a84aa6a1c5d262809956f613ed18cc023c6c1e87e7e8a802caf766b3
Date: Mon, 05 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746422393
