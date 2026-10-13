Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54147388396
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791859834; cv=none; b=rL7hMOGFeBC1YkzlCR6BFugU+vo9D2BYzSWJ6K/pDFz8ppFz7KTs96Lwzl6Cj5OPCBjrxaDaGouyWSsFezFiMI6aDA+svANS3tZlTnb9n/akp0VBvBTh0Ccgps1Pp9A4hb1V9axU4fq6guujHmoLHxZyi5xROROet/gN2nSXgDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791859834; c=relaxed/simple;
	bh=CoX1809dC+0Cl1pi+auC0qT1azpli6xVYm4XzZpjPYs=;
	h=To:Subject:From:Message-Id:Date; b=ogfVD2YxPOTTp24rwjDi+b4H+OXh4KBLHx8vOMUAewhYQJ0ApvRA46TREhNfGGl/6Nn7jb9bEtvSFPj1GoY1i8eiS6AagIngieJ3RehAlZq4Vf7HIwn0/FicKpvOSbbJ7zPR1tWjh+mNL1IeR4xVft1TvA5PUHUEJ6rWWmeaWfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1SRwpvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1SRwpvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3174C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791859833;
	bh=CoX1809dC+0Cl1pi+auC0qT1azpli6xVYm4XzZpjPYs=;
	h=To:Subject:From:Date:From;
	b=e1SRwpvT285nQR8B3eHOL92ld1PCqamsPJLIURpyJGgbZtwJCPJlLaimEE2j5Z3PB
	 8gbOrazqD7AMqnfkU5RdPvWj02mXqL2M/ycQCqy1dzm6OpkiZU1YeifqLpVWtddckv
	 ZyU0LZUdMhaF3iRR9ehd769Y2d44n4671AAW7Xb4nvccVNZBDbsFQ+6pYQcQTcXTQH
	 9ByiiroJLa1E1vTLZ1mImLqQvtuJPQ2z2V0iXq92Q4cGhtghjZ7RbrWdBJJ3IJPGpP
	 0OvlYPWXg+03BS4Z56DfH1CMrepoY/H5s86WO1SfswkFxTpcJZT+vHaU90gBL1eflw
	 AvX2nMFPspymQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC8CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185983369.27688.15222566058528931094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f749473a1556429aae5d50587e0ddd7e7986fabf6c7438cbacd157e243a3801a
Date: Tue, 13 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791859833
