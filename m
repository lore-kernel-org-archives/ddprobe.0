Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1683830E852
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762174794; cv=none; b=tcjRtR4q0IrHrvc4vy99xgHB0n7n/Wrb/DYGj78wpZmXqw8trGdGElOlCYzHklVTTSaY7Y1h4Qc2dteHlxYUBJ22/9FsgjWor5MopDHy/lrOmceecPE+frHAIEBMPX4DjG3LvNo+d8oYEyvtW3Ig1VBw+/8WF+JzGKRMyOW+L0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762174794; c=relaxed/simple;
	bh=GEPdputhCAKll15FsSll/DMz2BHHADkNFo5ytFsyZXc=;
	h=To:Subject:From:Message-Id:Date; b=Fv31YcqXrNL9PyaM5P1GbfOST7t5KuIylPBtYMuj3kVzRS9uCFmDnaqN3tsChc6bP4jCZzfRC8WVwtIsPYaeJbtD0sXAY1VSnnCYaXIBgYclWv1a9bCUKqFH00k2lD4YSM6iDYotdQtipUmQdpnQAJ960kB2VYJDS70i0Tb+Idc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqDirFAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqDirFAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F5C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762174793;
	bh=GEPdputhCAKll15FsSll/DMz2BHHADkNFo5ytFsyZXc=;
	h=To:Subject:From:Date:From;
	b=WqDirFAxYcp88FJayhzaq3OQ/sPOCC3tYOVB2Z8vA2qaKSi3YN1JL3pYL9MeyrAjS
	 YGQS/w2FSm8Dt7P/XJ+4X1i26f9hQkaqn3ocovkWADdXddUN8eK9PtATt1qrwLKOeq
	 Wl507FCgSOnGXSFRdc+obPDpyVSIikr9v2R7hUw6Svtc0INEWK/qrOE5l54fcNle58
	 qbjY8opU7RLtSZrnIAY74ZWDwRQ7TX7mEHGEXDX0foYPNTrYldSOvGhCICStRqkx5y
	 7nDlNDoJtOampGDHuISyl8lmB90/oWR+UwFz/1oHEtoPubhAy88mOjRelEC9fWsVaK
	 XwVmsEHAdyCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ADBCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217479358.16699.18122889194248833152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d83256251921f2b1939bdaf6ce43193c6f9652c77d12e7469b2f53bbeeec958
Date: Mon, 03 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762174793
