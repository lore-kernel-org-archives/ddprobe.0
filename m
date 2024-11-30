Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5C92F2A
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732997754; cv=none; b=uWIBRHSklVzLMBuMZ4d0t2byjNWe9Z22o2zTP15dy8AbLP2oPIwJnbUNdiN7rQM4ZfYtgHNNmry+dleiQ60jYkwYRH2aVylDYTX/hq7HqQPA6MDQN1JJHz9Y0pzNn0pngx1BhKFS9TweCsZRCngZrdH0HgTqAj+qgn6PO0Too58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732997754; c=relaxed/simple;
	bh=kGgpqachu58wSIdjD8bPZYJrxpH00rsT4xTk5VcT1h0=;
	h=To:Subject:From:Message-Id:Date; b=W4VHRam9HsU6Om1xTF/ALFaSwgATyFmlFWNzT/FvpKB7k2lF+YsrOy8mzRKV+czo0+ZU4TRtZcUNV2y/F4mJsk6VoPwPpBPAl6QUBtMOO5A/PYmWU/aN5ojDTEs2OhUHHPGvrFgUWIdA/LdHPP4awwky5t65YQRGfwtaiVo/JGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmKSC2uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmKSC2uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D4FC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732997753;
	bh=kGgpqachu58wSIdjD8bPZYJrxpH00rsT4xTk5VcT1h0=;
	h=To:Subject:From:Date:From;
	b=HmKSC2uLa3a/1KTBiZMLrBKIXZVDXTIr+SX+dubAu2M3HtobNlIFcApJTN0U0ccM8
	 Smgby9GIZf/NG7iNOATDTlpSciM5BkFwjvPiXD29UD7LqY1bAlZGKhq9aTvliD6dy/
	 zGfmlQRHwDwUHWBPtKVaKQCsfOPDEE0DzTeP+nuWCU2gOqH5M4n+73gyaMeQiQJPMk
	 O5ooDgrcfYOYc4XJMLwFsWPRQ60ZV2NBC+x70C6/VICXhiRykmkof6T5VvM2OGnrKn
	 6Xxrs9v6pi+vbTlcF3ORgLnwb5n1hHPu71/fDo27+SIa3ew21Zl+2xmfB/deq1Lxrt
	 DZvM/l1WDaYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C6D7360D
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299775359.13722.4484146398457363189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50682d47ec7554d5fee531182bd69f0e650cb315f607ec8b02b942763429a1b6
Date: Sat, 30 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732997753
