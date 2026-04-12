Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327E41A275
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775959054; cv=none; b=V9sCbE+YmpbCXF947/Z21yQextPdLKizVYrMz9DdaLodmDMRytharRyXJd5kYRyxAe/dFF5uT1/SQPx8679i6jqCNi5kVVCXgxmxnUC8wYYYkS2SzDdemhkm83w6xUazd/bTOq/MCs3DUdnmhKaGTDRTqR2OrwAWU1m9O0t6c3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775959054; c=relaxed/simple;
	bh=BI5oa3LocA7JmiHIpfH3tSUx8iDZ1vDiH6CFtvDrN9E=;
	h=To:Subject:From:Message-Id:Date; b=HMZ5/pFHdPijeAdFA59MZZgR24JxvWBklFRLAOlcweFkELOz9kFvyD5Iq/BR7ukIAg5j/nw8PO4nIHMYwE7cakruVeMMSB2EtvuZOXcYTkWCRartf6xssuUVw0Vrv0iq2ooyDqQOagS0x5uRHCJ7TJ43JmYQOfBFJ2P0u05yhrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NShTEb+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NShTEb+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD30FC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775959053;
	bh=BI5oa3LocA7JmiHIpfH3tSUx8iDZ1vDiH6CFtvDrN9E=;
	h=To:Subject:From:Date:From;
	b=NShTEb+mA7vSe8Gta2lqFrOz0x7nK5y9DiXVlB9HWgIirN3QiW3/AtklPbzHoBu2Z
	 IPEDuVdsmqhdepbPBi32Fc6yXjY82PaC83PbUciYNHi7lVSxTUiZVFipulxMxNUw8q
	 x7dXH6ZGcw5qjS/hQIoZGcujOW7fyJCT6d5h0O1eYPKQco1X4r7933xlWnuyIADUdx
	 3Xtl+GntQ/fy8H9umjxMPu3YOyllRLRzggopmQPnf5X7xWrMk+eF593hdNULUuQV1y
	 JWhSQEn3Z15td+DmpJNLttyQonNRtb1+VyG+h+5WXS/GB6OYccJClF1aSNeiDVmNAs
	 Nz2bgcDfPZwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF169F3ED67
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595905368.30000.7534564553448632320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec92c2a449cb1b951bf8e808f457c8a4fd73b07ba4fdc83a1bf8e095e64fce82
Date: Sun, 12 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775959053
