Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F691A9B53
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744019394; cv=none; b=mnCdMU8b+tecQ8Wr5RUbSderDcr23BLOFSWaiYP+eH6jlG7neLr3UH2R9Jf758u028c6Fq7QJp5z0uVSWAKxvISYIWv7VAwpDlNxT1JI5UJYUJf/VroW0Xqe3ZnieFV7l0ZMnQn+hT5RhDH8/fsdxTxQPD/OoRK1GI5l/SwtWXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744019394; c=relaxed/simple;
	bh=24HmPTdZQCJ4cyDnuLgzLibdjboA0wcBcxsDG9ENqwg=;
	h=To:Subject:From:Message-Id:Date; b=sGG9/tkavA0/vzPmlTOnmlpbdBB6Q+o8g3A7owTvPp/aJe739B0ToPQlwpW1qWnyT9g5wdJseIAtM127IuJCIA+X7sP4RnPANmpP/359Z45hslEDR29v+Hxh2pkuZ+hd4zQ0+HiTXdRJxfQLkvwnBYYPIuJ2ymTOo5qjywxPkEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7aRKOwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7aRKOwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC25C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744019393;
	bh=24HmPTdZQCJ4cyDnuLgzLibdjboA0wcBcxsDG9ENqwg=;
	h=To:Subject:From:Date:From;
	b=O7aRKOwqmwxBKTLB3RSYxRZvAbbu89r+ajkINmDXmFYQ86htiyxgJnoNJ60vwuSEC
	 5cq/dt5XSXoU86PLtyA0eRJpqk4B3Wb7XG5yrfEyp3CDnCPf7O1I/SbyG7OIq0FIcJ
	 rRkH++NO9e8uvFkcMCQtORBKW3pzocCxxMtlUdH0QrYEKSaB1iUEzxlHpks4RL/6xZ
	 hbr2lFAnP2kVtGQQuYJ5ktpOuHq5xFFcq3I7Irx/DRJ2fga6FSEuYOI8bZFukCVLGA
	 VN5pFVUY+fAg7tC36jr9a7AtGlFnHtCoXgWaVMecBvH1fS9biJkc9hq+EUN20OeIx/
	 tg8GSgM+GC8Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A685EC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401939367.30465.11195342675321820529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc26734bc6b2ebc6521ced314122f63d2137324bcebb87c76c28672cf8bc139
Date: Mon, 07 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744019393
