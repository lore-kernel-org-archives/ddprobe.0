Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2585C36D4FD
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764383574; cv=none; b=cho8BvQekAlBiQJYbocDMfEnb5W00RldLTzI97Nbxv+1gUQ4rZg1mRPfljxqBMk+i8DC35H9skPQTPYxg4flv7CrZVkY+cl5J7Ea+UoPHGAsAzQVOEyUelfZq7kO4nx891vF2ymxO+T7UOrenj5sKXZlcQ2GCIb2Vpl1O0vnatY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764383574; c=relaxed/simple;
	bh=T2BcMEe2dBsEpDBpeWaU2Ah5BKWPg10wmAji3zP19V0=;
	h=To:Subject:From:Message-Id:Date; b=PdsztvXjOBabvUQfMIlYTgZf96Omb41nk/Vo9svoLA9e7wvZoLOdhhGYgEtE74rmBuYjnm8zKtew2RF1c0f6HiXIACWK04h4P9M5xQjja/jPLcW3m4pvBeO3Xq8aUua+IGcSeaN1x3M3dhxtlqI4ikBSWXbmz9Rc90xCfEyOqio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggZ7iB0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggZ7iB0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9450C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764383573;
	bh=T2BcMEe2dBsEpDBpeWaU2Ah5BKWPg10wmAji3zP19V0=;
	h=To:Subject:From:Date:From;
	b=ggZ7iB0M5C6v68Zn3CpmWjsXI8patjPF4+Jzx+43+owvWKpnxxT6TEyISZxB37iQv
	 T0oAyUmgForQDD4UNilSSb1iqoTupcZph3ngphMoN0VsgQ5QOyEM8hUuoAjsKpBhmH
	 0p2lp1Xx6NxAFXarxXXEzBV3Hl3rsLnorohR+7SZB5U7hTpvz+bWjKo+z6yUZd5L0D
	 QFKdZYOVCZAuzegmqZDn7TeqzWbQEK2C/7SLurmSSuKgHMmNxLx4G4P6zcVrLbwcQh
	 eFJf+9ca33D+i8FWj4qbrBeW81DuU0bieEeHd/DlxY7TdgsMAJ/vlp8uno+BIwaMIu
	 QXvG9nONZ16zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6CD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438357358.26756.3829508024785035907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6733b4a6780a627f52e18628072fad3e992ffa4d033d547b903a6a21adb53fc
Date: Sat, 29 Nov 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764383573
