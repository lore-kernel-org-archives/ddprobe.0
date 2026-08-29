Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC4E355049
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787994034; cv=none; b=ZPe5MdHb5fAP42vyuhFZwGazNDQzLoSQtltAKqQCOzc0WzBwvgMtXMEfiBfyhThB2O9ZEz6491sdfl5ECeSWGUIm7IT9PJarw07rykrPNXAoJwtLCPS4ErQuah3xB0knMDttMOkb/icTzYsseDsLrzWpGe0LqiHuq1eVxrqXo/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787994034; c=relaxed/simple;
	bh=hsVSoEH8LL+9tyxRO1NYybBrEmRA64u6xrcL0n2QZXA=;
	h=To:Subject:From:Message-Id:Date; b=mW8+DLmsnMJLs8Iz2GUnfl1jK1/A3/Yk5bLH8QNWTXO7x06jDL0WtCh3s9yIEMdH5+K8vAn+OGDp2WU27dbGgQJq1fAdK5M5O8fz5h12Ky+9OFSKktPoC5c/Z7Lvj0a5p1XhnEuAt5Se/MhRCl2JLvEI4+TTHDWi5iz2O3pjzj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PU4mYuoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PU4mYuoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9A0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787994033;
	bh=hsVSoEH8LL+9tyxRO1NYybBrEmRA64u6xrcL0n2QZXA=;
	h=To:Subject:From:Date:From;
	b=PU4mYuoP2av132rFANnpCEujZ0tPK4WZaTu2Cy43suK3wVi3MYtYoJi7B7ZnvpAS2
	 9FJCRDX9xnUoNyUzbmHRsZmuaBEm9UKYgFLB4TJW3cxG5dnKQuh4avNCF5lKSrupLi
	 BIfOku/ytwheM0AB2gotOsaTX1m3jrquLv/K1GrJK35qqcgNQK23z973Ddci4fk3Pz
	 87VgVkTpXCbQUpr4vBhUitQbeLzPnS2kKQzVTOJ+K5cdAG6MmSe+7cy7bGB5hZcBbS
	 Y9u5s8w3HYC5T1s+goE/ZP/L28nxPF/bDNJlZ0DfY9iRbt7pnj4r9OLOIRYSzAOsg+
	 OAIoV/FGand+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A3C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799403368.4074.10764326374052162315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4919ca68fa2ab16292f936b398e57350c3007531fd0610e1a2c5aaeec60b29
Date: Sat, 29 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787994033
