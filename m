Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC2D16FF44
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754072995; cv=none; b=QlQwTXch/fo1C8ZdFnpV9WEUmQFNfswB1E81UeXRXii2p+CHbyz4DZncjXx2L6MUWctX6PEZZheN5tninktGwZ4YhJhYOvPNpPzUNeCM/4+5XYZrDmbv9EWFzGdQ7rDgoEaL8YdQ847hqNIbtRcoTDCpBD1JZ/8WmtpwVcoO9hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754072995; c=relaxed/simple;
	bh=CQJFprrqHSw214oivHsE0FKzqGbgCFAGSXYCH0KUaSE=;
	h=To:Subject:From:Message-Id:Date; b=I3vSMMq+KthneTJaTssM01JEV8tezSQgPGESH1PETiAtM5ZP5wZePKu0fZTAzNDq159Bhy7h3R70t54MhSccDBJPq1UcsRGBjD2a26h1MI57TDhrDwCIZS4xCv1tmZFhjlDcMPbUHx8/T02SAzFk+ENerKnrYJdPrcGtXY/N5g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVqfATt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVqfATt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2F3C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754072993;
	bh=CQJFprrqHSw214oivHsE0FKzqGbgCFAGSXYCH0KUaSE=;
	h=To:Subject:From:Date:From;
	b=nVqfATt7qd2cXEL8GCC7ASUSl8QWi+tMJB89PZVkPQqbCryy/DcvarNQjJaMOMNkz
	 jOZQkR972+XatACFqAYaH7d78l1IlFLySpH7ty1Jciw85dP+wLixhWSstfU9ltdUwD
	 3eW8giFcrBzcF7xZCgequAKENIKo+foD1Daist/SAOd/35fm6wKPWB5RiJNzZFt1AD
	 bu1uDA2kvUc4YaMR4H/0IzPqqAbF9zoyTPmuI6TVVtrAzU5G7+H2wOBHkSZ+C9erTg
	 HFGditCoDEPy/+rUCz/k5J/LqWBe6LuYnK/HWC+cwImtiHBsAmz5WV+zTHu3ypK3Ff
	 Bk1BIEhjMs6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950FBC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407299359.5853.13097934280784818324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f017ae884ef0f95407a609bd4cfa91e5a4f211a2b866b21ad42dcece1f1d5f
Date: Fri, 01 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754072993
