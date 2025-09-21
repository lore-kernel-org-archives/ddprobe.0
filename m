Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BDD17555
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758460194; cv=none; b=s6JYaKJCSzzzISM1zvuTLC+ZV+5/LweHfuYMnI855jHV+Gx2Af7n98FHe8GDGZfAOsPvu0xqGmHlZEqiTBZspAr8KQhYOOlNzznK5LpZ+zArjxFttni0QQ2s+D2ZzOLEXn2nSm1bgbcu93T8E+4umLgZ5NApq7NcrU0L2b9JyUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758460194; c=relaxed/simple;
	bh=F8WJdV0AbEw0qFu/2dhGTUpMIGPzitBuzE1o2GQmayI=;
	h=To:Subject:From:Message-Id:Date; b=jnuSfy+GeKCtUm+rhzfvlJap+QNSKbKK2NtH2V8YLlYWI079jhTMDqya9b/Pu69d2OW9hd2axfsfQSSvNiv6m5sp+jhBf/pCQH7Ty2cYP9BaYlrK7KiP/b3W0EN7UY3R/xXpJW/B/5UzDJ5/G0rviSkYE8A+NIKo9g19foImHZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyEjskBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyEjskBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6200C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758460193;
	bh=F8WJdV0AbEw0qFu/2dhGTUpMIGPzitBuzE1o2GQmayI=;
	h=To:Subject:From:Date:From;
	b=dyEjskBuSyZJW32Ncnja2Z8QAI7AcMrjI8ygb07ANY4ugewTo0291YS9jT9nXQGt9
	 F6+5o9vNi8pP8tM0gdDFvuLuEzfzm+Y1UW2miFOHRZA89Gbz8jh+IwhzJXygcBbYrp
	 Hy75ZR8dz/Hh6lG6PUZhpZTMz2vkylQghpuwLgRDNXrMPun0q6khzMMlKQFHkzX/Ue
	 C0ksZgjOfWZLRCutiHfSI8ez4HXblVWTck7eOfilNoFNGhhnrpBLsWR1kOlQf0NUPU
	 iiMJwBxTllssx8sTjy0lhi/Ht9DfpMsROJNyQZDiqXOVLPpyBK6fQwsN8sqcjHZWqT
	 CnBxf9TxzJPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CDCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846019357.18639.11312892266013334467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de02000a06f7066cbddcf136f21c80faf36ed3509e091909d75b34db7f04bedb
Date: Sun, 21 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758460193
