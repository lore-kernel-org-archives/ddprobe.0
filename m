Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBDD1CEAA3
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757832594; cv=none; b=lOXRmFQ3e+dQ/lNYZbJb1+stKdTi8Z0GJJRgq3NSVjCi9szv2GW84Yxa53vSqkmvcDwllfXbvPL4x19R0qei+/FOqy10MU281NnltmcJqKAQk7fWIFmE3Q0AoPjTEmvdHzzek7nghxlr1s9MnYHiPD5i/Hx0viFOhkdQlxsXDhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757832594; c=relaxed/simple;
	bh=Z37cb+Sw6vgjZ/CzLEyxe3Lb/KuKoDXmElV4ekhrhyo=;
	h=To:Subject:From:Message-Id:Date; b=L9KG5BIIwx1qQR2su4XmvyyFsQXCEFqTMw03wCMUobCYCyyKZpOnEepcuuvm7kXwjyIn8Ubmcj65BZ57Q2eE21LHbLCy14TUGH4VL1yHz+Op4qhx4I2endqzHEuG1bRWywHA0MCVsCJNUm9aAKJ4T4E8WF6FajtYCfnxKJ/Kk1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUjlucK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUjlucK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BFC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757832593;
	bh=Z37cb+Sw6vgjZ/CzLEyxe3Lb/KuKoDXmElV4ekhrhyo=;
	h=To:Subject:From:Date:From;
	b=DUjlucK1JV34J/SJcHMOYyivQ2C7zC+XOPElxmrEmusI0to3yNAp5SJZNEhun0vUZ
	 s907+vgyWK0LSSaiepitK74wlp79lRa+U0ukpGTO6quY/gEXANKyZrydVVCEkqlYT/
	 UhPbcM3HHLMug+Q/e54svIEmq6yDh7+PYV9e8fYo57Td1lqZhKBrUa252rRWZlTIlt
	 6ZoynjxqbK4yi+bMlZNOnD5I7XNWLimg8/JV6GLzTJ5qOUDALfuZ/G7Ru6DcPi18E5
	 P/Z+BnD6sciq/6H4NivgC0jW/Rg1dSV7/kXj8/jVR5940H4mOA2Smg7uXbKdpFir4L
	 KxHa3RkMGsTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE9CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783259357.29395.17370318363609884116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7b66492c740ec914b00fd5fe521bb24406ed3871af1f4158235ed4bb07bfc0
Date: Sun, 14 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757832593
