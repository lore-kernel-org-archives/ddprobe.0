Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0137C223336
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765032774; cv=none; b=aPTJvIarZDsOIOlB/JvmNN59x1DigjMz7axKBMeRrMt540yxw1EWB7GME5dFA6X0IlaBa2KfuYsvW2RaPcRroeiQl7flUv+CsTEDg18e5LBL/PIRfJliS9tIu6lR2cKdE0JB80AhGDL/DSb5+0LKxqvvHQnWUrspIaBu++2YJDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765032774; c=relaxed/simple;
	bh=LCNyRZB52yQzwbGGhk2dOtt3NfhtSDukDxi1kDdPDbo=;
	h=To:Subject:From:Message-Id:Date; b=jiKWyaxcBlAn7JGTRxEF0dRI5ydQjcNtwlUxNMw9oBzxlX4fJyQflVCoj+ZMfpWDSmWtP7yFzZtZda4zBJNHjRfi1eNIjbSECh+6U6G3VilFhz6bhNTVqX8xypaqQRlOhk8Lnb/1+VTp8OnvVmDMuBoTScP7f9tuxB7wukl9kPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMNJD2II; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMNJD2II"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A297CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765032773;
	bh=LCNyRZB52yQzwbGGhk2dOtt3NfhtSDukDxi1kDdPDbo=;
	h=To:Subject:From:Date:From;
	b=MMNJD2II6X9JEh2PnapsJHnqNf4hl2NEWmr/YdCVmeSI2cBvt3aqBCV+oT8f1Wp/l
	 CRkM1nwTgrLza3QGwLzR+mY5kq9Nvb4gjTDfLtKfn/42+PNVP2OsdfWpjFGxm6ldLG
	 sx5wz/rBzZyHz+hF7DwhfKJzPWP864FJEn84WEJXoYQhMJk799pSIoBCFvV0oplssB
	 1ChLcq/VahhGDkoMCp+uXBit7IF4GP6ZIVqIjzTB0VgEf05itd3lqEJlxT8GXDuFDw
	 TWSGIDfnHcktg13yOD+utkTCgFi/k7mruxCb5bc6gV0hc0UekZVAmTbcFdkBOIZrHk
	 fBqy/8qBLMlnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F84D339BC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503277358.4385.8313503224778365217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5d579340a15a5d1e97fad0474237b50976a6bb28441c6e3191bc35a79441ad
Date: Sat, 06 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765032773
