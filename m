Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFDD3D1CC6
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791496234; cv=none; b=OTmsByylwdLGU9mCVbvMNl6tM3KZ262wBFyJoBFrs8iXbuPa1K1w4p3WpqVUrVLCWN6HtVFKmI+GEBWymCuGQmZZDNTz556kIwc232U24iecT52qSeyOi5O3KTHxhH+N2NIf5mWi/y+FhiMzcAgK6j5HNrNHsCQWLve6/w4aJ04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791496234; c=relaxed/simple;
	bh=dgZPEBCsOYJqH/pNZxiCUZnlF3Dt8krCklhAMIksw8I=;
	h=To:Subject:From:Message-Id:Date; b=tn6DxKpl3J51KFp4Fz16mUUsBFHZVBXSxjAYxlocoWuoObLTBhALON490BGnBczn7o87zj9dYPoQz7OOLGEzwc/GJ/ON4PSPGYTKEvUxKlUnsEQ/5IzOfQ5ijdeBizTGojQQ04GqtMcIE8VhTYY+FaUE0fUthh1gSwii4KsplpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKd0QU4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKd0QU4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01D1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791496233;
	bh=dgZPEBCsOYJqH/pNZxiCUZnlF3Dt8krCklhAMIksw8I=;
	h=To:Subject:From:Date:From;
	b=AKd0QU4he85/0vU0jcF9MsC+2miWllgBmHL8LtjWH4qJR/UnnJZ5/HOlAcylZXCUj
	 hZ5qcc/quv4G2ryul7BavSMcSMCwoK9g+640S3L33uReqsjyA1sF/jFIS1IWCnJmDi
	 G5y0wX3War4SyiTOnakhTqVWfn53OQhBUiw5RL1FU15E2IkFDgiYRfI6x5bcvnUUqv
	 mPVr9sP2JU0hFMl/rNGSnuNdo2+xOkm/f1FAUyF3gYwTFo1nG0KIakc5mdr23pf8Ts
	 OatT/NPCHweE+5ALpXenHCwZxVRj96n5x47BoLlh/O5wYy20MWZGghViSIQo/gIJ/Y
	 2WITILNX2Su/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1DECA6017
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149623369.7975.7631276734841460012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe00c82a197ca8897a73b8313c86fbdfaf6dbff1c5aaca529ef08b52cb439f9
Date: Thu, 08 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791496233
