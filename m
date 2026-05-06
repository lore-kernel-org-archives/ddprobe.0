Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2187B21FF2E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778029654; cv=none; b=SFe5oL/zIkeYAFyIMu7URkhkftnjb0chkmW7teuCESWvO/3A3XPvi/BTaYNnff1wQZrHlvBoHHl4+xR7dJAEZxUi/duU04qqlWbIanmwAS+xtPs5lebKZsKnjdE6BZ6rWIeoIR2jZpiokNq1OKezjUId5qNnB0oNn9/dBseIDV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778029654; c=relaxed/simple;
	bh=0ZHZ0SVa6QmYZ5QwdAPe/S3QjN7IHyH7I7GmSL9qzhI=;
	h=To:Subject:From:Message-Id:Date; b=isgEKi5YYNdC/cNaHZIt5jIdSzwyIZHzRWSjoaqLYIv2dXy8k7MHqxK1Ci5zmC/cxvAv/AytvsrFO8BOO4XoJSdR0lr3cYzyzxF2yWQ3RHuGGn2O97ZyRIARfli0SZTt2Ci3kG42nYuTcVAkB8YA4ywmPSFe/bEXMZA4DOSCpac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFKAozGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFKAozGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C135CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778029653;
	bh=0ZHZ0SVa6QmYZ5QwdAPe/S3QjN7IHyH7I7GmSL9qzhI=;
	h=To:Subject:From:Date:From;
	b=VFKAozGD/4Lz579JBZn6ooK40qBe74kootOvtbLIyN8qrM5e40QuyhPNbGActKPPf
	 mJNAGWBkDJrct0M+eJRMXS0YC26CZwoi4I+UiLAMCvzJ4pMXdP+4VhCSJj+iGS/8Ld
	 WBj9d6X6pmdW+X9SeVIttuWuBAR+u+PIpw7t8A/T73GTrkOHnbZK1s+ihTk0Y0oozx
	 3rQ7vBm7MdDDCkwCq4PC6fO9RAf6H01OCgpVHK2Lc8T4qywMwtUSLLtmjO3uMtz/VS
	 ivOKIIX8HLx2A1041rIUK797FEM5nzRhzBf5dHkpdWieH9K4UR/T4kL4KC9tNQbTY7
	 mCCklaH2AxFnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B012DCD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802965368.14806.15785454509167676525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99af5b12629b4d08e2821ae52cab6fe64330ac2d381a6ffacd68bf9a15099d10
Date: Wed, 06 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778029653
