Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDAE1FBEA6
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757858994; cv=none; b=MWFfjI5z48I2rzkYDtaGKCXVmdX4HO1UhwWjKXwy680Ymz4bI+BeI5UHPrmojdy9C77yTJ8ZyFcb6KgEMl4EcDKT6UZrvO/F4ic/4M7H0NgPCviF+NKygRqDMd64B0edrS75d+JrYFFmVzvm6XTI9NbYYgHrpavqo90fVzaGDnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757858994; c=relaxed/simple;
	bh=HLOpXfQ4+K4Q4f5lx1rhB7f95VfkeZsPUFS3MmE013A=;
	h=To:Subject:From:Message-Id:Date; b=kdq8C8rOyPfdR0OyexGcjxyl5AnRw2IK4RH2DtwAUpKF8w1IoR7uRnOhBJsw2UPgM2u7jZmgRA0H80+t7avq3Ip/fxuT64xmgK8t7nexKXP/t1eV9RiUd3wQRd6wEfxa6NgcZVyY7WObEkz0He15xIJ7ipLAm80XwNTCqJP1sjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCz3HgFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCz3HgFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C50C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757858993;
	bh=HLOpXfQ4+K4Q4f5lx1rhB7f95VfkeZsPUFS3MmE013A=;
	h=To:Subject:From:Date:From;
	b=MCz3HgFC6FWJlZAHJjshvSHWGJMknlkEVyIO3IQy8191GUaoLiMp9AdHfjR6SGn5y
	 YW0fsoavWmkVI35bfveSiFYr+ReaGreV+qwUNndp9vYGXsW9Rbyf6v1Cy0w5ct0gnC
	 3iS+5CInWfCqlG2L3wn1k0tMAeayA0r3tTvgkvx76jEuXtEDYY7Rn3q0i9qIwFPoY+
	 3uc6Tf9rJzmsa1CWUX+sg2fDrKdYL63L1gVEdWyc2E2CKco8zzLHNrDYAHyHtpYs9R
	 Sy2kvi/tHTiy6qD9NWD7Wr6rlYZ0MUJwkMw1c1p6+QJDHKjcFk+nnGC51DbEK2xBXw
	 h9xr4OO9EXrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99383CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785899360.5454.11966452648341299729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572fa35e36273f119a03570286c3d97f0c24be370342227d9687b9693b218c38
Date: Sun, 14 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757858993
