Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A4C1547F5
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745042394; cv=none; b=FGJyJ6CxlNjevBCojnDsn9jd/2lRMoApgMX1EI1pzQ44sCaUAn5AeDTRihaQLxjF5W8ISClP1reNYSqWlEU9d7NfeLXtvUiGECNFkUd7ssaQodzooxCKUEZ1+mTiCu9tCnQJK8cXb3SJ0RNcJTV1HeuTdGKuBP8vkJgeiXP5jjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745042394; c=relaxed/simple;
	bh=zbN9fMJOYr7anh1lGM4/XleNzoLyZWcu+AGtZ+5WD1M=;
	h=To:Subject:From:Message-Id:Date; b=FPAO08i+l4pfBbbH6GC/NPYA69RmH/Uz4pIh2lLu7MPmRO19fGyAXzXzTBlDWEfQrBSHWYYEMRsdg1yqiHUw8JhH9Bfz3xIDpBCCxWzoNKw/Gv719THaAykZErt+AIRBK1ie04ZToaCBA+OIPTuLmCBd/p0F7gmt1YjgUIRrKB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiNCbxTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiNCbxTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD8BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745042393;
	bh=zbN9fMJOYr7anh1lGM4/XleNzoLyZWcu+AGtZ+5WD1M=;
	h=To:Subject:From:Date:From;
	b=DiNCbxTwf02Y67Xtr5STOdcHVLuTAweuqjGvalPtoj9U4RzC2BhmDg4z8VWIS/WHY
	 taA2nYCXzWhkXBNj09mbrYAcG+aeD0PBsyVIZorBPiH94jXNDPvjRN58+Wj/UpCTdc
	 xmN6s717btD+vzZSIUU2byQV4GmUbgfw52t5FUuHQYfxLpgaeN0u1q7cLRFUhk+aAT
	 rgDXkKkg5ospDdmPIAKwbzozXgIpZmmpKC1XkUi3dC86g2k6dBYPQsvmsgOiBf+ia6
	 sSeapRXaABquDWpZScd67Ft6qlYxerXC8gfyPe6vXY2/NlvC1+KGpRa5H2Py9zzSVk
	 tScYdyBnvOG/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C50C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504239358.15914.9794731514586121543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6afe8b67e5aaf5e4ef214163be4510eb42b985725c8b9500c1621068efbb6d
Date: Sat, 19 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745042393
