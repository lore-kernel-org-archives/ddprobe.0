Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B25C34575A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770851094; cv=none; b=ImuCpllk2oFeocJtwD1x++9PAewC7PPKQlJmFqPkEiWqhRqHHdIvOYKvh98Da3hFSDJ5e6JxEFKRFiN7mzE7c1B1TOCOoX1yFgP/G+WMHPW5sDftlEpBMcmJ36vcVBqoWdK/sLNdhYaX+CPQnohWHbC4NJbzzyj5fA6GUq4IFDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770851094; c=relaxed/simple;
	bh=YNsqPVPLQqZnpkRShfhF3clDHQKzaZMBGve5KcfXeec=;
	h=To:Subject:From:Message-Id:Date; b=AWxgNDnfOuuEJGRii4NtVsrOitTehSunkwtJeiYuTA3R1eUCrW7sk3WPBIc1Bghny69Epcrg/fF9tHha4Q7skZL09ZbrQZhpMpedlPB7W8preRnDnliQqR/n8ivoUalCf6C5HIwAr6dkGxsWdMbDF3FsZBxIycdkDeosKplZleU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+Apqoa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+Apqoa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A865DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770851093;
	bh=YNsqPVPLQqZnpkRShfhF3clDHQKzaZMBGve5KcfXeec=;
	h=To:Subject:From:Date:From;
	b=X+Apqoa+nqcXdSMtsOSQPzRqVjd0OtxgMIott/L5Ms+33RSvg5loGoERbzudx2yBk
	 Ymn8JSQUgrvRwoP53ciPQJFrKM7olcCTxCQwRt9MBsvWt1PoDvcLJHgWO0VENB2whu
	 eqnyiAugNCUMgCxkaSIkrMIFc10KbGLgYYGJoA1xaa5UQ9jCG8Y1P2WQpHHhgnFv+3
	 L1UJ8X4DT9ZeDp4Y0kt5BWdHwab72EJ/rorNAR3h2Wq7cyjTKa9f03+oZxHEOL7hVF
	 88+I0NXD/6VbSKZbPQVP7yOfvjp+StXGJbyJDZz7WLkJ/uGB7U7ifHXrfjbm+u3mi5
	 CBnB5kPiVA6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E6BECD6D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085109360.19261.5127632849077770344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1581a2ba04a427e1675cc5c8cefeb630c664d795adf25615d01cf72462fab9f
Date: Wed, 11 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770851093
