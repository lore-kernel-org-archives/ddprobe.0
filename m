Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF734EAE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744120794; cv=none; b=ON1nojaNcYL1mCb/xs4ypULJndgC6C0eiL+CooXeBfmYvLeJSKn5nf/d8gY+6uPZrCkQxMwsOi6r11kVB1bWHBvJouE/8f1Y5oK8pp02L1v4hvgrVvnTUhl2n832/V7qazKMyOtP0PHPFu9XuMjPTQs2MRoYUVyyg9vE9sojU9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744120794; c=relaxed/simple;
	bh=7DCGBltyG9olbudy0bCKT9Lvq1MzC6zp7IOfUYeurXU=;
	h=To:Subject:From:Message-Id:Date; b=HGXfayUHWSk36BLnhgPhQPkdm7bKYaxuhamYTLQ0v1LK+yaOif7RTwpWdi7Otc3pJsP2Duy/jaZeuuxcGqyf2qwLbFNJcBZkUuPnGFajTNOyacE2hEbILFGSNsCttxMJxm8apBX2roptEO2jmt/SsZnaA1lz3Bu+DWKbf9tfgpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDEZbxoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDEZbxoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3CCC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744120793;
	bh=7DCGBltyG9olbudy0bCKT9Lvq1MzC6zp7IOfUYeurXU=;
	h=To:Subject:From:Date:From;
	b=cDEZbxoTBj2/VnIFzhpi9dYEuCeWMyDefbIKJtX5Ss7xTuGk/AIWVc5Jrc1uYLoAw
	 +ra7nNm9RSVej7WrAS2Qwj74EMBfSJoeUX1K31EFC93zw7K1JNMkMx2I1f0Kt+LRv3
	 AoY9G9JNGh5pPwYAUn0eTPbaE/D39W+qQwBLaMMeiYT5KBMFdTFaL3CF4IQOQnvSQO
	 pSVWq8q4kYiP/gwhLAN0bzf3mkGxFBtX2md80wGEOQ+E6NfuHVmA2CZZxyzW57DrgB
	 x5ufCgOr1/XTHTAoiuCSAU3Yx5yPx06rMMl+BL8M9VsR/ePcf4P2DNW3DEQGfwj88C
	 Jja7+kbZQVccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7F1C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412079362.8782.11883810954271103355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c376969453108f4dba50e41e65e66ef934170a31795910ca4f7c12d53c51e8
Date: Tue, 08 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744120793
