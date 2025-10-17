Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBC92F12BD
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760714993; cv=none; b=NWWrT+Pf28cOwrt6V25AOpYIsnY+5jQuVBArXdjUaS33F9cVo81E89zxk9nAiDIFphNxxtZmnUMhlWzpTQgRe9P9081R3drj0ojkDsBaTh3ZLrk5RrexdzXEOvpN2WwO9+JsBcFav6DLdVceOstLwgIBdzfm7N4ha4vT1B1AURk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760714993; c=relaxed/simple;
	bh=ATjUVtj/OZ094GMc4xLy4x6jR2rQZ33pDAG/l8Oppi0=;
	h=To:Subject:From:Message-Id:Date; b=ZKbmWGwnG4znFZV2onh1Mt11swWyx3m8qanS5EWjG15oqHXv//bOHfbw6SVAtgQwtdjVykP9M7g83Fojeh3ubyyWWLFOvp/89yJgHVcWLs2GcGbaFDB2bRdvPzRSD0LgBMP7XoyKg8UwYpYIqPPdDHs35BwiSnorSlLgKxmrpAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTPnvsWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTPnvsWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EBAC4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760714993;
	bh=ATjUVtj/OZ094GMc4xLy4x6jR2rQZ33pDAG/l8Oppi0=;
	h=To:Subject:From:Date:From;
	b=uTPnvsWj6l1FCEzePmJOMwtTDK4tPADEkv++704Hsf1EveF8TBvgOzXqhfGOu6f80
	 hWclbdCIAWm/jlNUYMXrwmypQSaN9mR5btZDSS2zKY377sPeSYLPEnb6zjrCmoSJ27
	 jNAv7vl3RRxisQLtj3G0qJQfbYHBo5qpfmK0JfUL48ORUITmCv6zt30gBSU6NQT6Xu
	 2u7xCDyywf3//bLFJHKEri/wyiRekuUT/wjKfWtf5CJu3UY8/mpFVKBUCiq1dxeGDU
	 /Fp3ZxERrayaxxEBoKZz15hROgsd5ODoGULKhCB1tjmIGdDDEdFC9QgcpM3ppLtYyn
	 jlg7FurtkdFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95921CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071499358.12984.8206726802459268585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299d5cbf29e0e2aa46e1e70973655c1e953615997826996d75cea5c10ddcc808
Date: Fri, 17 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760714993
