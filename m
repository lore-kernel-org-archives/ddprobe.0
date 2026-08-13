Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E8B30674D
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786582234; cv=none; b=tngnH+6lyryuP7dp+fDYDjIrmSdW9KtvPL6jcu+rs1PYotfyoV+pBnB/wsURj6o3n/Gig1g89n4A8Aq9ld6HJU7kfMH42hH7m4mVlutte7ldmuoXYsarSVPXnEDxvJVYBZcijWW1PXueL+b9BdiU/V7vlmLB2PQa9amOyIjyO5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786582234; c=relaxed/simple;
	bh=BDoKCIPtds00+IihH5c43uxtJ27aLM8Zuw4vt6T/uxs=;
	h=To:Subject:From:Message-Id:Date; b=tSpt68S3jtm77dC/TFolJ07YvCdeaybaJ9uNRQdt9wOddVwnn0ROVy3NuIe6ttQ8Zyk6+VcPiKJA7hZtyqIibXJFYxfW1fDrDxp/nWicMiTlUa15OaE2k8W76m0pgNkoBO7JhHXWioPAss8mz4g1GDm+iK83avkazSrAA6+mjoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIwRx6AP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIwRx6AP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85DCC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786582233;
	bh=BDoKCIPtds00+IihH5c43uxtJ27aLM8Zuw4vt6T/uxs=;
	h=To:Subject:From:Date:From;
	b=TIwRx6APokhQ0lOTm2LzbfB/4rwRWVMjKwtihRtAwRmJK+unSuYMqHSdU1xrVGaua
	 XRgerrcl+lKxV59BNt0CYxK4c6FuiNmyNwrDIHpVXtuE3kpXX3LM1aNlaaefe26+GS
	 pQsL1oQtsuKok4pnviMF3TxHSDXJVJ4gbHea0aaAZlD/n0WaTgfAStiIalPrdnYzbd
	 rO2JxOXFp9ZZBQnYPvzzr485wyDgKRJgC5oEoPDf8AMvCpstvJIkFLe2AJA0yLwPIZ
	 rDtl5M58rZGt6ZGvvNhXwrIR1pguq2g5H9EGq7eZ8AHdG6ISPf3Q9R4nA252Q4S/Qr
	 BgaMM2fyxrUmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4870C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658223370.13264.13617383550990496129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0f67cdb3c2610ddff07593b530ef476bde4c4d6a871608363b558780fb6d62
Date: Thu, 13 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786582233
