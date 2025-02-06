Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A702209F3F
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738841754; cv=none; b=VLtdSK/WMnMGOoipSuhQcAFqnuxj+CywJ5W7Z+FuljBWyy7eZW6qTlDQ2m+ATOa/5/FTDedqtPilWapxE6sAD0pmBkqaSgeWVJ5rE1JH3yOH5K/mpY98PoGXNstoFFt0F5fRbRX29zXCIQvVIc7qAg1y2QxEG5RlHlqfSAY4gJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738841754; c=relaxed/simple;
	bh=oPgxgG36Plb6yNsE2dvtkL4xhe/0VcdTTi7DOmWXWMY=;
	h=To:Subject:From:Message-Id:Date; b=Cu9ry3Fhm82KJ9kaQyX5bTwGymrdHPDEly5mjIpLEtjwILNOZgnYJAxckqKakQKDov1jLzLLQx/RbKGj/q4kvLBgn96S7Vh+oWvYdOmtWgbZZRn4QeICE/Pzy2JxH+tr5K61ncrPueon55eQrBmef9YmXL2Ryk1JQrNlXt+LQa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKITxbeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKITxbeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE16C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738841753;
	bh=oPgxgG36Plb6yNsE2dvtkL4xhe/0VcdTTi7DOmWXWMY=;
	h=To:Subject:From:Date:From;
	b=RKITxbeM0sgTpNhWsa0mjBO+pDw1daEg5dRCXux803BHR5RpGwXwwMyh6dUHlwVyh
	 efjIqB/2OXa0qqi168H0ytPskooQGzRSdMm2f17bKJHtZvifWEAPI+bkE2kHfvBT7c
	 TC2QhGRM0uCDvqpLcNlqezFYTqqrpupy3+4wJCu/zgMA2nCbYHW4uxhB1HQRvBUWGk
	 CBFl5FD1Flu7Z2Tw5kDDMJrP6ab37A97b/dwyeSRoJNdMKXUvj0R6ilXH9ZuI46Bk7
	 PnBBY5lgbs57rSoOkXEm1I/XR/jtF+qVOO2xESxBsuloEo/Zqs3ziV+fi1HBE+atlM
	 rpF3eOq+bBNNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9795BC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884175361.8175.10955685937802741812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32500967d1c59170d07b0189bc60d5fb462810f0c2d9bc9a758a5b92455f507a
Date: Thu, 06 Feb 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738841753
