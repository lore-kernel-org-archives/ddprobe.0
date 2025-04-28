Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B9C134A8
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745800194; cv=none; b=iYfb32JTSUUxXWhdaLOSRhHQICWFrapj39fWLFKi+VBfr2wD1sPFhKDdmZN8zvHHlQpWx2e6nQ3qXNbFKX8r2F9YMpku/tzANwRQ1GpY8HmSevWAHK3saEBKQK+NdDIR3DGEe1PQd1AtPH0Yhbl7Z5i5SJoBLjGd9RPbKnNYmOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745800194; c=relaxed/simple;
	bh=5Td43uGTm0kq5SlsMRERDyoi4CjSweClati0niJWaQU=;
	h=To:Subject:From:Message-Id:Date; b=KrKZRljRN88ji5X0xa8+nof1vE3pV45dlAwXx4TnH0MnC1GMxDJI712vwUOmtP1zDhovOQ6fSPQaG4qqtz5pm7+3zmx40Mo7+CriNOvAGWsOUA/DvrLhk9ulqVGz76b7rzhnqtMaAUYRaNqbrxfV+XOuDkTkE20SLvRS7XEz55s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWFjBPHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWFjBPHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75F1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745800193;
	bh=5Td43uGTm0kq5SlsMRERDyoi4CjSweClati0niJWaQU=;
	h=To:Subject:From:Date:From;
	b=CWFjBPHT0taL9db/Rn+uwGeNwJmO84phsdnweh4NjA5d200hzHp48i9FANkn9VSfi
	 4Fk5dcORs3UgDArUJPf47sa6LpKVGex1extjbkVWPJs8g8c5MbhhnVUK9G/MPpQmp3
	 lS7PZi0U0CtH+INWmY5OLtE8IptsuMyH85yOjUcWdXTc6rhdCvmT4hRnfEBwSeL2HJ
	 A60PoKx3FxMSb4jSS55/hD2cN/3Hh5A4ey949HsuhGDqCSCYadUEnXDdb4sYLpPkvo
	 ZpOsKFaqysfjXNsNP2msT4tppiFZaDU64Zz/PmpZensh47m5iV7pEXAxP0USZ8uVXw
	 JnsjNsEoesJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92244C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580019357.15262.15397523079667182800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9400e9878b654009fab273c254c88dc6d49ac0f15db2f62324a2179bf1965922
Date: Mon, 28 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745800193
