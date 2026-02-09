Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A403C1F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770601434; cv=none; b=S6VxqaKPdR61RvbovxG7cyErRYiaFcGV8RVo/G3DqEsubtytVQQKegSO0kFZ8X0FAA0OuiQkymne9LpAc0p5EMR8hyku81pJjkGoXq5r3TQ+EGISeS4glLRpF8YNRWeLehgdV1wxekbowQW3zgrw+c1NtXyne2hvbwVXnR6Jrpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770601434; c=relaxed/simple;
	bh=rCn6H+ZdOp1CWGPVTnQQyt7KDjXXjwvQuXHDPYlZr8Q=;
	h=To:Subject:From:Message-Id:Date; b=THtSGD9DqgW7dY1oDTUlgveQCQufVcnurqxlYo//tQzN+VZHXLntUyUCzj2fTvFwIGcsIc+94Hs2zTamIkL/8Y/3vm3jR9Ha22Mjj2lLgP6a5Dp1TXWiQCXopEBnraEmmJeIlaV7si0wINEkgIWl4gbRmFLENeW3Tc9gGFcU7LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtFkqe2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtFkqe2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD10AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770601433;
	bh=rCn6H+ZdOp1CWGPVTnQQyt7KDjXXjwvQuXHDPYlZr8Q=;
	h=To:Subject:From:Date:From;
	b=EtFkqe2PVzIgoyLclfJjsKo+QUe2HyDXZ7pUufTcYlyucCIsCEhzDo5OXHwfcEsjD
	 FY51roJqcxfZIJHu9b8CX2qdK6yUAzTDQI10LZoM6vMoFk0Iny6rzH6psARO4JeS6F
	 Aldm/jUDn4EhWPBJzkOzM9grDNAXAlglWEHEGqe9zi9XKTABSFyOjJs+jbDW3DKknO
	 DWwKpWrIErUnROa4SWt4YKaJ4UEdjx16HpxYWv+/7J649WMLZ728IJssb1VYt4uQp7
	 f2LfraRJDiPKGz2gZ5lbzhbZRT8fThyldxmpJ4MLJwZ341yy1K9Okute8PwL1Ot4Jz
	 4nfpGFrEREC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DB0EF06FE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060143362.3208.9056413966252835813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51da0750b10899ad1e065914a62c8264ee5943dcfa98646be99272137dfac671
Date: Mon, 09 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770601433
