Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D19022FF22
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781486794; cv=none; b=uzvw3rQt9QlD2n5I+QBX8Ot/9ciimMJ4QB0QiLy2qUbjMqv+GI0gyfN1+e8u8QQJOUnVNHptJdksDZ/PS2cc2HxGpUcxy4ZP64o4uCVetTFAMCJHqP0cxHgy4rCYeulJo/Zv+fiwI+sb0E32UNpl6fTXMKC3d3aBLdIr2EVABV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781486794; c=relaxed/simple;
	bh=lrjUjcf856s7KBph970kpZexYyEtOOZGTjubjNsqA5s=;
	h=To:Subject:From:Message-Id:Date; b=cSPWQqc6mKrXLI/7v/TU612VlsZe7Ghk6RziKPJbuR6Cv9JU5yAYFLJoPLDyzr0XZxfrduZ0qcB9cRhFABSNmV3gmlOr6ON0x+LZumRQ7l8OYJIhzV0UTShepaFHcvmuxzmJqH+T24Obuvso6RZlSFrdrdyIHHZffVPww+uc3nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRz5Ikag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRz5Ikag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9A8C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781486793;
	bh=lrjUjcf856s7KBph970kpZexYyEtOOZGTjubjNsqA5s=;
	h=To:Subject:From:Date:From;
	b=vRz5IkagtKQMfGTCzL1oqIOmhGWChNFakcFOG63G0FA7CLJiWqR361zStamQSShBh
	 YGPHi/iMpgNYtBUanZYxmWPEqMB0qBMm4rA4nftTiAtLwLz+Gdu3lEnDwUAwDqZ7FV
	 H+DXq2+hrBkwiZtvYkFgDTs9MaoKMxVjdPFDFjRhnVQBkUZKJ1gowm7KLzq0X69OsE
	 N3YY8XlwtgtiZTe/SmLOOMyI/6C0DZPkhBxQiA2C50tv3MMhTt05gpxB9NLjdiko8Z
	 7pgoJlMXc90jZmKpsLkBK4JZp8t8SSZhRVvJhWGikYjiaIF0hNt1s+z11VcCO4SboY
	 iJkiie4SYKsCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30A9CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148679370.10717.5375211992303705140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987176921976e4eae2dccd2a020ee57e7246d022eababa7b1c95eeb8ccb14d78
Date: Mon, 15 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781486793
