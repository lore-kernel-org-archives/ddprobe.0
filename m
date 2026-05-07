Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328711B4257
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778123854; cv=none; b=YZxpkm5gOnJOjVpVf+yDClImQCdUu3ltq49AMv7+wsNBPCPh+iBLTXXvytNyChQRAwCdglQbBJCQ1FiFwdu0Qm90FdL5oYqDO0pAtCvmn2tG0f03gMeAKaO7yTjiI1pdrHcROtd3k9xmBDekEqCwMEXjNSvLON6nvBM7/d6ZE44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778123854; c=relaxed/simple;
	bh=/m8KGcjeOiwJ+u+oIVAzEQdUbRQLgjMDw2tPcwNLjt0=;
	h=To:Subject:From:Message-Id:Date; b=qjgGox2W1QS7zqLlpvR1izgKsy/xbdhW+5s6iI7zp5UzFBbFgPQf7q5DewYBKCTX2ZXBy7ioVPjon2z1qiZbvswVLBBEf5qVyMWHUkunoJNa2bj+o/4Pjy8y1eOIVJATpby4ZJJg4roD9bOe88xM0zdzGNNWQ+/CJvcoPPbCmmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hputrKp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hputrKp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD7BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778123853;
	bh=/m8KGcjeOiwJ+u+oIVAzEQdUbRQLgjMDw2tPcwNLjt0=;
	h=To:Subject:From:Date:From;
	b=hputrKp+SXdViaVw0mNgpT2aoZCqSwyX3nLd3M9MpEJEYk1zCong9NyDVfS+25omO
	 sGnuYasP57ST/ANKrhUdGPaAFMyNykeOH0GcBueYicp3O3lN6SWHB0XLCmlKa/IzY1
	 Wvcl124h0mWi3+cmBStv4JSAs36CjeIqaZ+mZyzHcfdofxz2pm9oAvzUS5rNzu28fK
	 3CJb4xBsOHCDfmGJhA7NZIAuH9inqMLX1dZgTAF8wQyfKx+WdLIpwyQzljEpSyk9Zw
	 qNMd/Yggc4Bo2tw6n1JNRuwhoVloP+hug/nWv8QGUSjzuPKPL/bD7Z+tEUyawOtGCm
	 mNcwjguxzAuug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CDCD3436
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812385369.16476.16647007595725246438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a799152fef90bfc2d5efa3715c8f078a3fd719d0c853e238af6dfe249bcc532
Date: Thu, 07 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778123853
