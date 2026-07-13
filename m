Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF38351C3B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783918714; cv=none; b=hsSwRIzjZMdEpgIJNh/wDsAoExHdmQ1v/if/Iw7Jix0hEusMPVp2QCXhRwvlQtrNkKBW7Kbu2wCOVyprULlFDcd6S7j5GwTZLvwHdDCVRtxd2fFYcYp4LHohGVQ5M92FWJcN+vIDHPBq8qishc/THKy5xSy0HiBgSrmSLJqdbRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783918714; c=relaxed/simple;
	bh=MAMOkJJbxAukcPHH3YSIuCc6hAEdadqHJSLb68uZoGc=;
	h=To:Subject:From:Message-Id:Date; b=N22zA6wjjJrdUcaHJ6ZnlWHq5sYQ7VoMWbFr37nxjVXBnYyQKr3nL3HpJ1iVy25BxaDsmDTS9EXUPYEUx1geFwkK0/2RQi59DibHO8+UMpGAkAG4t9yLJOKzq7nDT4oNXHsmM2W0DnlKdaViFz0Ma950XfbagsebTp/aatYHY+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvMH21ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvMH21ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB778C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783918713;
	bh=MAMOkJJbxAukcPHH3YSIuCc6hAEdadqHJSLb68uZoGc=;
	h=To:Subject:From:Date:From;
	b=VvMH21ruxXI99AL1lPLf+039/WTYVcDX9nGTC/dCV1D5O86J/IKTPiwT5GS7KB+I6
	 sXrC9t+sbsbYwIdeq24f6GnfRWOfWUT6P0fdqyRjEqbwSdJ18zk/JDOQh1kwrA2nCV
	 3DM8KONSBhKpXAt73npYzZCJHfuxk+b+s9JJopcVDBmFeJFgitevGo/zXVu+0FMjpy
	 GooUzmZtPD82BAfYZonYK/Vq0t1s1d3vdQWI5twPjWm2Ig/BAZAw37ueP2YTKG9ydk
	 ZoT6h7bDqMjHbFRnIdPbfgFSELrKXrG7ShZG4ZqNwVaYDQMMEdX9xaKI7XrJjKduQh
	 Gf5+Ak9VnGzMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9407C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391871368.14870.11780214670721395452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b184750c91bc7a5ace106c80a3c3e943b06e5b0a04d26e26691f7f3560709b9
Date: Mon, 13 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783918713
