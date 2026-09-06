Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF632AE8D
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788728434; cv=none; b=BNoZd5X9GCltbEKNyMqdGGDaqaC5G9Gp2DE0RaC7qlki0rtAPil6ovEDSt6+Yer4OB2XXsAweBnM/DeVUb9C8hoX8grWXE3yVhKqAirZSuBqk9NHdPPWU29K0eSIv8AQBv+oSXML3Ne6WCRsEFJU3ph01o/13juYocJ7Q+OLOXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788728434; c=relaxed/simple;
	bh=5btlWZhgzmGOZ570TXF19EGu8Z9i6uHg9k53iQ5fosA=;
	h=To:Subject:From:Message-Id:Date; b=OafSuwmEBYCnkwnoTP9fOPjPtHa7xpsKHyHjtVeJjDHMca4BZMefgz9IHooo+jDDKy37GAYOhsNmRDtI4us1s91BVN/1sBrizZ1wLEujECLtR7zCyZxYP/xPFZmccBFciKsJtR/yNP4UjkpWdgCcD1BSzKjTXnNT91mAnR1EOzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFyvJEES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFyvJEES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0BBC2BCFB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788728433;
	bh=5btlWZhgzmGOZ570TXF19EGu8Z9i6uHg9k53iQ5fosA=;
	h=To:Subject:From:Date:From;
	b=PFyvJEESBix4H2scOaI8mXS44qE+HrHVeSZpzjh8i3FtCzPaIMzCSuVGV5JOwfohp
	 HQa4sIy3YUMzImjxJkSP/NDBrnWf+LlOVxI47vQ1Yuqd9oUr3sX5mpyhVCC6LEF+LB
	 DYO+U5Ymq04jlGVIvffhYBGTjk+usdDikoLGDlyJQ66duu2XjPrMxCOQ4f1w9uIjgR
	 mD4+EVqeqQEyjoN4aRrno6YEQwrqm1t3rRS6OSRMJngHgGmowQYyIumEbwKYt1PXV1
	 bXFNpi9Sszf0NWohe3DSq3OXhTdnxCbr8xBsfPxbyWP4puiBUuzcMOtk5pyWkkdZKe
	 Qpnb8ky8d9OQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7105C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872843372.17368.8922376439094849445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00c7ef3dde3643a9d65bc70591958a58e6f304d0a6a28f5435df3ce3c56a747
Date: Sun, 06 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788728433
