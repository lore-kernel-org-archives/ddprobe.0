Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C66128DD0
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753690194; cv=none; b=ONWTLucHx7aOvaGsWq1oqDrqvkAec1cAHr2VeeAESPgeXZczvrtZX3Xagr06oxNutxoImf1dzXpUBlMy5G9eDhwGj9gi4oBTvgySIfdwX/K7MqQAPCmhCLw5+p7C1kEK1T/uoOGHVremmkhdcHxnSqa/biag5Aix6uSkBr/WPkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753690194; c=relaxed/simple;
	bh=K2bsMJV3DMQxKaTEUoaxrFcY2T/Xt4/1k3HWIbyqDhU=;
	h=To:Subject:From:Message-Id:Date; b=VCg6pvALBDPciKNFgMl4819+UcjLVaJBMni5u+uzu8YRHQ5QVA8XkNWfFufppda3YI+6srwCkw0VKgGso8MuS037APWaR/xY0fjXXC3fnmcA5VhrrABAyidlJKe8BZWA6RyfgFJQ2wzBtZjrHvpH/Yo6HdqOap2Y98K5ZX6POIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5uPkTt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5uPkTt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E221C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753690193;
	bh=K2bsMJV3DMQxKaTEUoaxrFcY2T/Xt4/1k3HWIbyqDhU=;
	h=To:Subject:From:Date:From;
	b=n5uPkTt4Jl2stHDyHhhWmEYOXKmCvkigb8r9MIwAF92vnn2ittYZO4yVwL3w8Aenj
	 zTshE+SogtLrbGnGh2Am5d4bumIWW8XilY5U23KbDmF5wZapZBgJHkzsufs9QSvRw0
	 42dzVhVQvJaucEOap+qV31hET4rPUODlkbVTG0KaL/ffS8dMUsJkoxCW2KCNZw07Fq
	 RWm7xl440H3DkYNjuN7u4Ur/ByKQvWDHvpyXJYR+2/mYI5cE7aW6GwCeLc1NAgSzIe
	 6iTPBizPNg1DKvJtBDR6/cVqqdUZV6J7MFOeRcrR/C/OlFDIlrlf5JtDwtdnwlf+ho
	 4RhUmvAx6PC3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90252C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369019358.5763.4272522955126818847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c010a9195abcb1373fd009edc4fa7740bb7a4afffdce34fa83d940fb2edf19a4
Date: Mon, 28 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753690193
