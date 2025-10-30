Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10911DDC5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761866994; cv=none; b=nysPTe6w75+SCSDVUKthq03OsL3lhjaKbYbBx458e+wewUJwZ7brog5+zEnUUvBGJSnuCd6eDkzuY8v6yS61vODHeyhzawOIgAz8A3nAwGgFJwvU0unDhu4FJUbhFC09qWnCqewGcspFDc8U+ashitfVDNzajHdfvFf7OXWlTu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761866994; c=relaxed/simple;
	bh=tJZGoYU6iVOAZzTxk4OG9U5cTlZPRGYg8eVkgM55M6c=;
	h=To:Subject:From:Message-Id:Date; b=ELkbOb3M05XgOrMMiTdQLw+nKB38ZQ86AAi0gQMx9MbDLh6wukw7x1s9Ddp7VjjNgKpkz7FZDbAnTFWW1terODDF6bG73bDuKxCPc3f8bSjDoJ09BhLKYneFz4XrFcRuNvo3U0+wVkbp4VAiadqeFjukRDIhMVwDyGPJQmdnE88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7Wz81AX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7Wz81AX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB498C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761866993;
	bh=tJZGoYU6iVOAZzTxk4OG9U5cTlZPRGYg8eVkgM55M6c=;
	h=To:Subject:From:Date:From;
	b=k7Wz81AXW2htJTDill41mfkkPDudNlxhfTZOxl/XZMLDqRQpzSXmi5E3xKtpJ03TF
	 lBMcY25Z/8ZP5gtpeusTM9cujvRyfku6JtXY2yE97qbYNAqiCr6X79BRey4qesa/kj
	 w79q04hwccY9Grtp1zjREhdbkJtRBDm6LDoUUhDroBjcX7AGt6ONkD5i5qB5vTi3L4
	 JNuV/I9cUmU2XAoBVFIrjr5qhFos0C9kpaamms3gwSuEFUHJN4wueKmFgUQ8FS0I5G
	 r+aMje9iOqQs3D0gxNzJuiOceQ6PozTkeCPVhGUnV08aJvALypub4YmLc2mzAVslWk
	 8oyBI9biX5AMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DE9CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186699359.21748.8387071366882724027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0522eb2943afb514cd1ddb7cd6476b9e4851e6a16bfea5f7597a1cdb74fe80ad
Date: Thu, 30 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761866993
