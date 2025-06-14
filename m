Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28767282E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749887994; cv=none; b=c/WevoR2iY74aWwsZz3xB3v5Dt8nM8KD+F9xSFqNKgHYA9blPnH3vZjc3AUBRo3WRGFNoro9F5/XchWVW9L2+S+F03YCp2oUvPgVBHUo67l+1TuuUsCf7vHQbrEJBFGhscbuNUjKnG4EUmq9rNmn9QZUPAhLdtUjHn99kLzvsOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749887994; c=relaxed/simple;
	bh=xK2P9KYfJO/foVGJ2Yr3dCiQL/MHLgcNto4spUpDvcM=;
	h=To:Subject:From:Message-Id:Date; b=mfk/s9AfxfqcKW2WdWUQ/gpyvGcEhXM2PZPJb03dixkF6OKZAYFYV+yPgvWRN3uROwIrw2AWh3u4MzknM0AclwQzGfz+n743K9EfCewtk1z8Tgd2QNOa5l/IMJw9+IWF2YZ3PFp+TWYfvBYhONQ0RV9MNz4T/wXjBUv7c1tPC7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oebg1edt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oebg1edt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17BFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749887993;
	bh=xK2P9KYfJO/foVGJ2Yr3dCiQL/MHLgcNto4spUpDvcM=;
	h=To:Subject:From:Date:From;
	b=Oebg1edtDk9cuBP520LMC6TJJmeQjqZ5sXCz8Nqkor9b8Jdv3M3rGv4fEm9bKY5TD
	 tnSUnEPdMhSBabc3V6+9nEELU+VX1YkcG/LsHPlY+KHgKNAEaiUtX2dKANEbbyxPJX
	 qDZtEBgtE+S+P7yNzfsqnuk4Dvne8nuuVTNVD3idqYmQ5aeaCLRU7RRU1wL0/ADt6S
	 MEC8TP61jwSsbP1UU+deqcgbfGghUHaZ1fxf5MdW2jSSTbTjEyGGKgnhYxOjDn1ukA
	 +RhsQMmqRZ0V0Dfh2n2N8PWxW16AKLrVr2NIoSkw7OKe9nztjm/lln0IO6g17Yjaua
	 lElMou9GgJE0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F4C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988799357.12375.2634584367511635721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8b3352bc3ba5a5c154f0912826f035a8105cfee7b2dbd33bd2556284385c1f
Date: Sat, 14 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749887993
