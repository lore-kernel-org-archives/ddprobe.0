Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A951D12EB
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726334154; cv=none; b=anD+oysl4bq9JTomDZrP19mHg6/eSQkK89GdS41c/5li9OENmN2J5oylNaG7JK9yuwAZEyBGrfy6MmeyxFz5nMI4veRBNDhH3ZWyFppHowGEPclgGQvPGF+LNxqIn8q59GmUdV7Qw13sL2pVBULPn5Z+O8ejVjfvKgRTTPbl6mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726334154; c=relaxed/simple;
	bh=NbNO8qYfAuMcr0kkW021ylds55SBe1k8N56cWOLYbWU=;
	h=To:Subject:From:Message-Id:Date; b=GZDA90bV1DgTB7IW2CfFsZMLGlopb82hgdto6mTUkK46CH7PgL1r6zDZQa3cqla/ghbbNjr8aOL1zMcZeVBFQd44kKq801v85UdVixyXf0ohbPXYYTKmB8QRVdHkeKmJN2mDNEvPNausrg2s+2lC67pJEA6AcbmNerLRyRVheX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmvIXTfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmvIXTfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4074C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726334153;
	bh=NbNO8qYfAuMcr0kkW021ylds55SBe1k8N56cWOLYbWU=;
	h=To:Subject:From:Date:From;
	b=AmvIXTfmuOhVXCHpD8+dMjXCOsDSthTzOEpCP5EXE1V9T+ZEByPXOz3LPsspVRVfo
	 pxrL//yaIoC+d2Z7h8PzmN7MXkW/37ppVQ56TQBqT6ghVORbiqILZ+0qF0nlKp1raw
	 /rbP058a6NQNs5BJ3m2pymLxYqWGlvL9v70IXbHMlZM9bVUaW9VIfcL9i4dsi2pimF
	 BEg+ZaR+NZq3kU9KJxhi5X1mvA/R632Ig6n+EX1YmgNF44rTNzxXNXrrSPyx9IJH8R
	 Z/+JyYktXYAWE6TGUl6pyaZqWsMKwFNilCNjA9ZL81hMpGg/WjO6XCL56WZjXBFwqL
	 q+mz64pElId1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92611C021A8
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633415359.6365.12556183396553191441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263796d918d50cafea671f49c26b3b4b17666271dcc872417b6aa544e707d543
Date: Sat, 14 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726334153
