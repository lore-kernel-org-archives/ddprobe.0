Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD3417BA9
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735671354; cv=none; b=sqFD8+/DTPdli8YqUQBWT6v0oHCrhM17cwzd8030d5DIGOk2tspeMpVUNDAg4XmMSVDH0JQNEkgr44ttGRT5yjsTxFVTyezDuiVNXMOsZmRVvL3+MMoNH0uCHaXdB9FXNOitrz4Y2/zBNn+XQq+LR34maZMPmr62c6F2wevJI/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735671354; c=relaxed/simple;
	bh=DXUxsKqWlvnF6NRpMzVbgVo1HzlmmcwLZy9LmGB60vM=;
	h=To:Subject:From:Message-Id:Date; b=oEncetqm4o0Fhx6KYh3OYxUUON9y0vx7h08NG4dw5C1ml0bSM5FQjMAsaa6aGnkrW9tQuf6FIFTvm4+u1HJ5VK0lBCwQo91TeHRME+YEwdVMdNAGAmUZEcCJL0jobms/FIbGQ2kUURQYwkWJkcuMRA7xlDlMCxbwwWzhBCp+lDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHVJYYMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHVJYYMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7439C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735671353;
	bh=DXUxsKqWlvnF6NRpMzVbgVo1HzlmmcwLZy9LmGB60vM=;
	h=To:Subject:From:Date:From;
	b=RHVJYYMDZqruOfmzbTsInBIb5VbSKT+Ks/CUtKe730s9NwBk2gCF1nmhq+oc7kWUQ
	 tw9k1J2D3zUjmiVXuBzLFfutUgxvJYc2VFcLISkXJ+a+Q+Mma8/s0C+HTrmTGcuBVN
	 Ew7zzMA7CprEtyE3GNKdmtfSJsopr5zK8E4Wl4sHn+p7p6aFpayTma76aXnIuwNcpC
	 hxqtswPbDdiskipcSxyLtxPBeW+VZ0ygI3LbV+tL4Bhv7e9y1lOyChjI568B2rU4r8
	 SNTs1M14HLJD5BiXfZEnd8QrEnHSAgLIMw6w63ePiMBi8OWscAAFT9m9fivl8opesW
	 SDKM4DjwNrQxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924EDE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173567135358.11194.18115789022512163251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5181a910e56827bd80894a7273dbdf8f8d740b3a145edff93a69f98108e64c5b
Date: Tue, 31 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735671353
