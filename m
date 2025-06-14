Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1DD81C4A20
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749930594; cv=none; b=VjPwcgaAC+1eZOKzGQZnfc7dO+C6xQmsGcjWPfD6pBqY1/421dDLqE8XLf+RgW14J/GZvzlye48FU2IZwkxLvL5nb6HEsdt0WvZ2nDE0XPPnIxBf+BdMVBD8ks5v1LVcT6PJCmUKvYKlr28tOzO+Avg9203D/2fJ7PWa3S49JpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749930594; c=relaxed/simple;
	bh=AtQ6ozKkdi6lZ3uGNT8nuIEwQvyCWySqUc10If5R8Wo=;
	h=To:Subject:From:Message-Id:Date; b=VX5yawGO9QR8df61VbIRlPp4acA93B4VDkrZNdj79a5frfcJ/9rlLyPpYkhIghx3ftaRwtflEKcJWibeZrTFJBfm/tjgykeEj0LYQ+Lvb/YA7JEvZrlryi1fyap3ODwiFJz/MKB6YYCBSXsM1YbBc7XoKhlpfGFWe10Q+jtoS3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=No/zbXJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="No/zbXJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 230F4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749930594;
	bh=AtQ6ozKkdi6lZ3uGNT8nuIEwQvyCWySqUc10If5R8Wo=;
	h=To:Subject:From:Date:From;
	b=No/zbXJl2eVLdyBsKKfxl68bK7n4Jb7jHcMUQ483LahE59CMRFtph0ytFkUQYlLm4
	 yEyjjTQn1QapmEZhbYKsIdIPkxygmU+oDLBPZLjgVMVLDRRif3zlCldxAkmxYSAj6E
	 2kCQezMEZKJ9nStDSGpIIWBBSpmxBDugHQAs6yO+KPw4OtGGtdXh1oYyKtJbiZvvp2
	 sM87DDNDU6qKwLmLqmJEjbCEMMVCtTDMlCC5h/mQ8udUVErXuzjbcDiz7prEwyD5+Z
	 ADbLxrVD0MymW34hwSuSVxXoj0bAseZWytmTlwaoUTcydo85qEErXvSAbkxAQuV9y2
	 x9r37Kx5IKFOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0DB8C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993059381.10516.10611947851701783221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cd0f3f519f724c52a875c76a20a496fe84876c17c2a7279893569169a5da77
Date: Sat, 14 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749930593
