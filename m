Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556071862
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775947054; cv=none; b=IKfmxWH/gFtmfCyNyPUT3r7uN5Udlv0Y4ZA6z3ovGPPi2PN20bvUW7Nhc3MX9tGb0g6hhRMBoQZWOaaqCFa8LZI2eDEHkHZ38JZsRmhLjGqHbCOe0nqJbbx/Smd40eZXoWp4zY05wYeLVu+xQm7q4kJWiS8CR5sXiLuruxFROmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775947054; c=relaxed/simple;
	bh=4QMsHqyEe7neLbneFO2L0NX9HWr7IjtZ/NS+SEpZ3Ro=;
	h=To:Subject:From:Message-Id:Date; b=sa6BuRBD+2x008HqllIaFEAVfg3L35Azjo6NBnSbEhDLx560pa6pcpgQHp4CNyqeOovfS6DdLqdCeCzzGNph+KAw2FzaPscai282iQe9apQAN1sT4Hq57jFilnS5/JlUOxnMneJKkQNHoq13O7uwFQHyCgkpDb/uqHgcWsFGqh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAuBsGl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAuBsGl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA023C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775947053;
	bh=4QMsHqyEe7neLbneFO2L0NX9HWr7IjtZ/NS+SEpZ3Ro=;
	h=To:Subject:From:Date:From;
	b=FAuBsGl7ir6i0PRrcLSA17s6KH+rGykJu+ty10nOKGZAVWXu7jhWsQ4muF6AcLw+V
	 wqtm7oZ1KaDhoseC/Mgx2QNwTgTJgAq/CGwcuJnEBh3PXSW3tnK7i1iop6Nasv39DF
	 AenioCLiWNeJWPL5TE4zNkimwkc1nsHzob1K3TVbubvGnHUVtHBxN1tr0Xj2IchPAN
	 4W36wLvxPFL7+G8IGZby3wGezDJQdvc+I2Xee+t/khUnISGPLdysOEkRDqGhTwvpdL
	 0Vl4nY3P+zZ1gy+9lRUKuP1ZRs8XyHxLelNfB37qBJBLchwzetC4j+poh08BjDCHGJ
	 ZZd5HyhsdgRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0570F3ED67
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594705368.27068.1947062362385599774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d760a3cbfbeaadaf97bf432dc8f5f5d49c8038a2408afe717947912a4526dfc5
Date: Sat, 11 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775947053
