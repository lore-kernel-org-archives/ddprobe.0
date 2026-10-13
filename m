Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA0E4B8262
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791928234; cv=none; b=Slwo87FEfLLGktVp0dxWt15vBMmOZC5QEFZo4LqG9lrc/DdhXsR0eFTSVGkeulpjChioNhgcfNFSqctSy0rTTMOK11tUw+uGgv9d8752vPDhYZId7buSs+gDw46pjdUHXjc9Lqgki/Oy3gtnZ29hzJghT1x8uKUARg1Pmiq/40s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791928234; c=relaxed/simple;
	bh=LVHt/tGAdtF5L2i0AOKAaeGh7WUqrDMjFPIzz+zzYns=;
	h=To:Subject:From:Message-Id:Date; b=r5cquuxp4Vw1jfmQ5SMHlvUKRd9/GxlhmbHK058AUPHgZ0dlhfGSD37ae8uetEyhP9sn6AqYmBeijWYhMRyZSgAWdgCx2xX3cLCPEMLQ9re2VN0iZ1UFVZS39E2E9hsTqfeNgAYGtxCZVSYI+nUvGc78Mr9IS5FkHtFHALOew9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzJFOwHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzJFOwHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFAFC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791928233;
	bh=LVHt/tGAdtF5L2i0AOKAaeGh7WUqrDMjFPIzz+zzYns=;
	h=To:Subject:From:Date:From;
	b=IzJFOwHb6yOw/z8NS5VM7dTaw+TNcoMSNiSlhtjANJdOiP5ywdB986PsPRS0rr7g6
	 7ksKn/hTfLTjP7gDRh3Josc0eC0zgIcxdGEIttXD1l25uaE7OiKHSx1tzUp+Afw4t+
	 5O0F6F51DPzKZ/WGx1guid7q6iBAClnvGJ5S1cmqnTSifjNGhWbTYjrPCLwc8hCGQD
	 L1Pg79OqyRd/EBlv8q3Yr2z1pgI7xfidzjBxebS+ivFPmLdYzI1Mx1bdBoF/dUASno
	 P65MxBQ7IPwjDPLMDJgq1UFncwP3UX0k7nbtwWSZZVV6g/juGMhYgILJjcqUcC8O0L
	 7AmaIl1usyrfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF25CC6B15
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192823369.28840.7457004016424764055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201a66aa6fd3b168c3bdf475ad3076365ad3eef2545126e7bc8b0323b8c7d776
Date: Tue, 13 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791928233
