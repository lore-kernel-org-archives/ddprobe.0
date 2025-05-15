Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F23872634
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747315795; cv=none; b=LDdatk95DkAicqnEVCUtAnCO2cgY42GgEYSAONlDJbFWL0RtLZXrg7HSAX1SfU6eHF0R8pvAj/X4G5O71pxRuhqNVe978RKVUKr1i6hPrJAKeziwUT4hvNKrwtkHeY1jjFuvAWiGnxz47R2q9Hrl0mEAH8HsD9KyqFNFOnWVs6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747315795; c=relaxed/simple;
	bh=S2JlhlRe6TemzRBtzP8ZdzpmDPA3OyAt6Zc0aaKisaQ=;
	h=To:Subject:From:Message-Id:Date; b=uRkWfinekrWv7G2mQ4YulGG/cuNE56bbZN11xw8lT5VRpwu2VrRd1bhcQb64XkHhnloQbX4M1tMVajOQltS0gwBMkmArBOhJic9xOwAsbNY9eL+hpE/Rof5dKzOfE7N0PSBZg+6v9cOyu+ikPMVHSaHQnDDRRI58LalJwDhVojg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkKUHVnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkKUHVnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747315793;
	bh=S2JlhlRe6TemzRBtzP8ZdzpmDPA3OyAt6Zc0aaKisaQ=;
	h=To:Subject:From:Date:From;
	b=ZkKUHVnYw+usxWebKrkV+8Udj6rI5oz8f1GTQI3j0BsB1/VP02wGifXHf0xmt+N4h
	 /mF5Z4IQayanvdaqOGE91WXmnEvOtb0/GQmdoj4o1oCPg3eWVmN7A4nDDePLxruQB/
	 KPTH3Y2NMsxhb+9SqKtfEYf22gp51fRyTM4ivJEsZVHmfyBP3yv5xwygFMN/XKAuPb
	 7tVviXYZbBn2qqooeFtu78EmaOBBUSpLluAHJd3Z0vZN5wziqwm93bhRuMXMFr3Sqg
	 rUTxE7YOfbvi1lsyot8u0uotiXq7+k//ZXWMsjtJgUsMpVuyIuGa26YIygLT6ef43J
	 5q7B/vbMOX4AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E5C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731579357.8366.10544569318522606811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc341c62fa2c612d6ad2b1faedac0e81a2f24cb096e363cb5fba8d73db2925ee
Date: Thu, 15 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747315793
