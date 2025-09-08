Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9A1214A64
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757325594; cv=none; b=VcI8HcuezmR86sJQJfGoz379PRjjEaIoDD09THWJLdB9MjA5PFLK6RFWL4iemjxTu1Jt22qg/XjALsWN9Cd0Zzbe+j+ilcNyew4MP6No+tcrryI5MkVMDHJef6eW3mPATXEp84wecrK0n9dlYPL6Ccyf67PL6Q/pyh7hFgscAzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757325594; c=relaxed/simple;
	bh=hhOgGXVl5HMv0IRG+MygxyNQZYf2JnbOLZGnKgfnSHY=;
	h=To:Subject:From:Message-Id:Date; b=MYEcHni32TvRhHcWWs8HCiKJsElswwdg/ai6KJWgNHROtUhXCGlihJcCInxdDlWpjrwVxRXoAtTnG4Rl/r3PZTbKueFvQoXac2aO5206bpF123m0hP9c8bHRUI7CKkmIatoT+RPgV0x/GdRgs4p7hDEjppnxv/uRNM8GyIVmgic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDFApmfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDFApmfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A071AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757325593;
	bh=hhOgGXVl5HMv0IRG+MygxyNQZYf2JnbOLZGnKgfnSHY=;
	h=To:Subject:From:Date:From;
	b=UDFApmfgeBwqAkaGeufYz/sw4+cqY0HK8aDabqIDA/3tlw3qtKM4mpF097wP0LhYq
	 XL+mSV00zwXw1bMVOBa3ISUwdRm9NqmItSNBsZLNxM4b0W34s0A8EXQrzBYlBqGkQE
	 9iZoGl6OmoplPCchuPtsjaROiDS9IFlLGpYj97YqyWggQ9Ykh1wXPyJJfGFYJzluJ2
	 0Oza0UVCMyD5tqIj0MsysLrRx4ZGfxq/AYHk3DFof2c6a6VCdMOm/wFxWn8EYBp6Lr
	 /XYTCf6IQCPE1yrK6UtRov6fdbxVMS9MtJZcul7mVY0eKvr6wmOUBHf03MsAbX6Mau
	 4uCM0L+61O+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFCCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732559357.29957.16073100041953087918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809c9ddd2e54a768419c3d75df9a3b86ec5411302d595a60875ea64ccf4decc0
Date: Mon, 08 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757325593
