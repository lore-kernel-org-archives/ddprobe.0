Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F64C376FE
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712498297; cv=none; b=h39DoTVFLn99678FvWdd5chAonWw+E9qKHK1adIOgS2G6qv1Ef1dQYZNdU6qZrrSbsg6z3GDN0cuaVxPEfRVHP7Ns9aqpeh5tpw9eUkyTqP+2wvkbWwIziCNFvv7yWNEbePDLJRhfHIKLpI7ftjQUBDIKFolI+oi8dh+0w/G39g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712498297; c=relaxed/simple;
	bh=DOrYGUcNHzmLQUrDWFUS89VHeH1uSFu0c7yJS9gxa5o=;
	h=To:Subject:From:Message-Id:Date; b=NUmmwdERblBmeVYFmMBO7zMATXhRSi0Fa840swip8Os+PyX2s5KMxJXcKNjrgJpGYRYnGJ8SHoOJ/YUfDXUe3GKZzZEcVCoMyFLK4IrF0dBD5y4WPdAEW/Al0+xw2+d2XuQlsAnEgedWljAoPZV9OChSWXDcni7PaYsRfOpMmV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY9IcejZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY9IcejZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB8CC433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712498296;
	bh=DOrYGUcNHzmLQUrDWFUS89VHeH1uSFu0c7yJS9gxa5o=;
	h=To:Subject:From:Date:From;
	b=OY9IcejZjoxYVLlK30siTM0nGFqIOpCjE/XGfS+eZmT8VxK9l9+7VjIMKyoyAuQ2K
	 FBdJ5LfqaSlAKE+6AwWCOewv9ENeVoQU8EEdcocwe2anYBZmy09pGSX09NaCB2F03K
	 U0aT2DJC1cZHWRIKM+z5Nhqlc1at4EJE8P1k1XcUAhay2kl5hUovXLRGoT4XOHX4tW
	 RYzsKW1wOZ+e/L9T5/s0SUmEkMaDLKc4Aenj3EspWzyA06CuF/MpgK3I5PPAcHTq//
	 JO91RJd0YDllItLX0p++tvYouS0KxqcEascCY0XepTiuuItFipIpqSO++/fA6uebub
	 RL9/zPAEthO9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69318CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171249829640.24951.4662499785179025811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1319f1611c501e67928c0754c1618b617b334b247e8ec0947d98332dedfc354
Date: Sun, 07 Apr 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712498296
