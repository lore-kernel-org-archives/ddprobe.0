Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B73B3033D8
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788570634; cv=none; b=dCDW1o42U4D+K67YkSuGX4BxtKxbsGCsmn9EDsSeq0MuIr8WT2Fm9Sk4BI+vfnJePhuqoSQupMWVZJklMgA4EF8bJ70oRc19s43ziGUnzTn5XKoXheIH6rlCHiI8Rc2J0oiG9IXlQvxTMboZi7ItP4w2+gPf0VcahiWnKXLcHjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788570634; c=relaxed/simple;
	bh=DnKO7uZCD/bLzpSVn28ieaKnmnFEW9/ou7wPfVfJ15Q=;
	h=To:Subject:From:Message-Id:Date; b=IgXwhL9qqx8ogA5Z6iyLY8sDiZqVVNNpSzTtj//NhwZqo9b2KbYmLpX4+tzM/GCge4NFRdnC5TxNfYgJVtMWbTsZxtB3imiksC43prYC8e3Bh6qF40/QCvtQnDPGmvMBFpTObfSMrlaLYsXROspV/5h9sNuq2noceGIM3W7WAEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCCVe4ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCCVe4ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CDBC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788570633;
	bh=DnKO7uZCD/bLzpSVn28ieaKnmnFEW9/ou7wPfVfJ15Q=;
	h=To:Subject:From:Date:From;
	b=RCCVe4oxFfs9OfxY3ewBjPWtrpA/ll3EKX0CRRKUcbyd5bk9yYQ0vOhlaPO7KrOKu
	 +ccoMpD8NuBOra/sPt6kGrPoNsEP63Df16ySwZZ9rrgCxOQ4kn8cEKYJZDl5u/4TIh
	 T+bdD53rRGhGEjQwDwMTZH/P6Au8fOZUHiUKdfHIaxdKWQOdfI+982c5d44K++1UdY
	 s/5d3C/WLF9/QuxRjvdMlYA74kMEi+w4jorK5QUntZyUkfKVHaJ5WonNextqX/9QaR
	 02RyiUbFuqXh0PfpP57tEcude804zcV3LQSM1OI3JhnuVtdhY2yse4BgplykoT/ZQG
	 9OCj9TZRqxD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0596C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857063373.28796.15478611907681342149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22c6a58351768fa3d890ef616913132e0e8d59377db9f42f41951ed248faef6
Date: Sat, 05 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788570633
