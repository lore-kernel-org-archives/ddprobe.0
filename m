Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEAD1FF61B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737120353; cv=none; b=d9bv60XIFK7NXSHFQQdYm6PfKMuzanLX6b/cctnzi1rCtMM7k4/v7NQHuJI4ATumTTBOUQ8w4q1ecNOs7DsuJyzvEOA8TB9HE2Mn7x8N8Lgu4X1PBknCX37Pv/98RcYJughJgqy3rGMXkyWBO8WyG2vcYh5Qpm3vZ5REvx9a5zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737120353; c=relaxed/simple;
	bh=vhZsxOwMgSazyj+QnzibvuXsjiXyS2pVv7Ka8KIdTvc=;
	h=To:Subject:From:Message-Id:Date; b=hwYAjEa0n48g3CQ3Yv+TNJH87od+NSyGSPJxyDowMeMCOsfrJuDhsAs91Y4/9nFquBhI9riSYg6gGnTD73BpniW603a9JnQUi89n9qlxh5TtGurHsZ8H4o6ijtCbexEk8q8BaJrBbigm5zqSdg5iwAK9atpxLWhIrkPuV6VUUrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ4uEpyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ4uEpyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4164C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737120353;
	bh=vhZsxOwMgSazyj+QnzibvuXsjiXyS2pVv7Ka8KIdTvc=;
	h=To:Subject:From:Date:From;
	b=FQ4uEpyY9Zu+SDvKErAiH5SNTPLDUpCwrYxRv9IdAyNwnWQ1q7vfpMXS00FmVc6Em
	 Z4Zc/dtdr49DS07jeY3SIPwL3M28ERVU1f439hNr5rYCk0exPTpMlnF4D5gnhPN/g0
	 8hdjtgQe4Y3iH1bXUGu5egO4FmnTQ0cL48RJlYuELD3soTkiqEsq0wi7jEZnTSUs/u
	 F8dLcUa+Y7XHDBuvUtX7P5qXGsMKMyIV3EDjGI46Kk9BmoZAN8mY8FRT9Tyq4VsMAn
	 fSUZfDjKgFipq5PZZakBrCqfvn8yuxwDgRQJkZpfZytxW2BtmUuzWTHgNXhxU03XBN
	 FyG1jQzPxu3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E4C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712035359.20332.10465565647333094168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150406073ad6ea1e5761a431a76a06231681334471b9dd861f50ba6a7a5427f8
Date: Fri, 17 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737120353
