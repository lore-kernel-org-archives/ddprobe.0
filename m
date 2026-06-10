Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127294183B7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781103936; cv=none; b=dU0pricW2HV4u0i+ehvPE84ezI0pET91ggzp+cGCKmDKgEOiNPDfNI6oYIihK/cn4SXjD4VJ7uvWdjwmHXB7EmTTfRYrTrSWK2chvYMU+r9stzd1hyzzHXua7X7Bx8q9Q7WyQtfh0uEvOA1vs2/fT4Kq0VD5sqjXAPgQ2EJZcEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781103936; c=relaxed/simple;
	bh=VSn50yndXRCB+vjxDYZk+M5W6+mIbQOIt1Nhn/SImFo=;
	h=To:Subject:From:Message-Id:Date; b=e4OvZXt5IoYSxZbRh6ZgEMq44At1lIUUwVA/UfDMBL5NpD8sfz1hdnvsUi4E1Mm3PCi9hkroKfslGuYLkwsaIxs6R5cmuHPlpcbpuUh1B1N3Ei5K1KaleS8/Fjok3hUUKUAPaZaJcvVKHZOBKmBkc2swXp66/7eNcXg0qep5FA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZx/ytZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZx/ytZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97F69C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781103935;
	bh=VSn50yndXRCB+vjxDYZk+M5W6+mIbQOIt1Nhn/SImFo=;
	h=To:Subject:From:Date:From;
	b=OZx/ytZ6ajlu7pyK+IAcm3r3doiNgeKHy4YBXcCtRpLER9G3c4luuMVBTJ8b5KIMs
	 AdJTGiPsumTtxlezPenOEcBNjIRTqDPS7UDJ8BC7Dn2mKHxsbjXwtkgKcS2ijZ+SBM
	 OhDVLrkh80H9aFkqCjHiZh8RlOdeHdPHZCA0Ff135p72na6ShGo56Ij+CflcVNl1o1
	 ZohM4wzjbktlyLs0oetzDT5W6dO2Az4vYpx3ym+9DH9OFMw4awI4LPnvEgiWvpEfmZ
	 MsZEQ/x+bT5wFWPNDE6PqMKbDvBgi3gMZcTnUitmDUxD06lScXpQqyrXAtN+d8U/Bo
	 VEaFMKu6x+Xrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5663DCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:05:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110393425.21331.17494960289096264762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b996ea37c1077e1bfbab97c1708651458719e7bfdc50c01a174070106656d9ff
Date: Wed, 10 Jun 2026 15:05:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781103934
