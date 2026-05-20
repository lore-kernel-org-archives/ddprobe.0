Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D002C11FE
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779306034; cv=none; b=nCXjrR/M6B4lC7osaAdENUdv4qchvXhxV2rwnnK+IOxIdWLjeQXEWGT+EZY06Td5abMQp/2AFxNpMBGdsnvH7HplNVYv3dcAU+zZT0qMpsDkDFCVjPTfRs07zdtM5LkwavgG6RTvzBNCwzMpLI8xMP5Yy1B0brUFiA1skX8huuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779306034; c=relaxed/simple;
	bh=xZjdzMuiYmMGYP3/zx7CR3yp+jTPhC8Mrlw9gPoOXFM=;
	h=To:Subject:From:Message-Id:Date; b=QUoc75twfCgd8Q0quZr4lvCOUZIrAN678G/MmYF/9lEO7uvzz8AzK7hCpokPhTcGbeZ2FXBbINsc17ePNfPHJzAY5dQJKG9MhfvnwAZ0StkuXuNQUeL7mQxJrMSqqpZ1hK8/GTdQEVtGyVjNebQKeXWmlKQ+qKZ9RtcKHWYxipM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0Qr/tZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0Qr/tZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87A4C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779306033;
	bh=xZjdzMuiYmMGYP3/zx7CR3yp+jTPhC8Mrlw9gPoOXFM=;
	h=To:Subject:From:Date:From;
	b=i0Qr/tZXLVz2vN+oxSBm2Mg3Nsw9XYVFP/bCiyWrue6MBIRAoD3N66fzFRFY3PYM6
	 Ou6wvkeO5rSaM7IwgZOVvsm9Ma8qndb383lRDYvAl+vio/Hl8YgW3wyV7rsPuzGvBx
	 3SWFNge8tRF2R/t0sTFjDHc5Kex8ODg3Z7WKjAhroSw+ynoRkaMY/FMEHrCk73jT44
	 i1BTmzJL3Jc69O72NDRF/8BSwdg/vT9b9/3334ZPmwb5Lh/uU0JgdPS+XPKOA2MR8A
	 s9AFYj+heAGJOEYzcUMcR/UPe/bbyc4LtI6Fcz3pSNkTzuu+tjXmHkkYx41Q/nc4XG
	 V+9SuFzsaHRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8605CD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930603374.14366.15815101406609232355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1970731c568bd0aef2c9602ee8fd17c2361b1e464cf8aa3719e5ba7db985e353
Date: Wed, 20 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779306033
