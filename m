Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9EB1F94F
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789878034; cv=none; b=lhPehaQ9XiDNrEnQhX934AidXz4NH+vwFrWofa8DLmqQ8ThbN4Ioj3JnW1kDbWwtzXE6oNUVYhuRAOSFj7Ie1F/V2NsCS8RUIBawmd6wwbPsZohiAMUNr+52j88N95inxtUTVIwvslk86LALuyo9LsjktJbrWn+pC93XmHKnuME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789878034; c=relaxed/simple;
	bh=fBAShZETijPobYBII9h786bNSiVmCMC066sZ5NFUJ/w=;
	h=To:Subject:From:Message-Id:Date; b=fYpVopiYP8pDpIRT0AuTbUM6xkXuf+FKACFrOFgJHKESrVQ1Ps0KBP9FDdi4zM/UhwP5aavM0ZwkcOZqX7knDpPKEPQdYHS7o3mivpJSgm7VnzzJ2E7PAednJH7Szsu+eCfyl5R19gnCRWwqK852p1KQ47UJn5g/mdErW4cXzTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAwNh/CD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAwNh/CD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3901C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789878034;
	bh=fBAShZETijPobYBII9h786bNSiVmCMC066sZ5NFUJ/w=;
	h=To:Subject:From:Date:From;
	b=tAwNh/CDYKl3rrP0F284xTGl6Ch5ehqtbQuE4JCwf52xTJyW+y+s7+yz3SsRV3L4h
	 AG5P5Bb6Yq+6fAnxPVrmW8tL4Td9oUfmX8L6xxwKe27OwhMDCGW1pbhawVka57kmi+
	 T4r9wzWkMnqhd/Wt9u6ZrdOFDFRNZoWdCcaxi1TVDhsFUPAanfYLAoyqcWlh+4/2w9
	 2pduBr6YpOOCSdhkKODhEXq+YlpvjG0m717Mdhkv9dwTHhH/pr60ahwAoV5ZuHnND2
	 D0mQ0BAfrqDbuhmvb21FN+jtB+Kb/kDc6KJv3CI9IbkqZXWvgLN2/JIaSU/pkrLXPD
	 NvFLVHnpR4rtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31B1C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987803374.11709.7881183559175340295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004e0736934b69d99291f24217e25771a0346b3d0b8326cedc682bb636c09a2d
Date: Sun, 20 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789878033
