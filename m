Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9AC33FE0A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789307434; cv=none; b=az/Z8RVZErQUq+lqg8JQjmNrLB/r8ToiqB9uaAye/by/58F3862G444D9qxYxSPd7kKcVdUPJwUx0Bq0+gcHy7OTqour1hVaClxD/A7nJiSD5WUpaS/TJZI0KWaR7vLw7lFjXX4bcBaRwqlJIEHF3a3G9Hqbl9Zvaa010f07CLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789307434; c=relaxed/simple;
	bh=4ZvqZhtv7MoXnB2w551Qyp9PmvSx2Ag3nZnZ94HLny8=;
	h=To:Subject:From:Message-Id:Date; b=ILWI1eDMIh8U8MlJzoWsj3lW6Jx8WM8GKyLzzN7piFTwrb68R1YD6oSYZaaPhEl6yx9hNpGFMUTBppIhMGVF/ysOarEdIb8D0W8X/gDSAcWZ/A+SsTlfiskWjirxEEJR7ep5hfxQSlJl3PEcPxIredi5PfME/kjWuSff/PWW8fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQsL1aBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQsL1aBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24CAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789307433;
	bh=4ZvqZhtv7MoXnB2w551Qyp9PmvSx2Ag3nZnZ94HLny8=;
	h=To:Subject:From:Date:From;
	b=vQsL1aBE0HsXTa3XUg++OxaZyLuTLuVRbpI2MQfJ5oLbMHb1pW1zFEFe7EQkfoIZM
	 MGHJdaCnXZlYjx+xoDu6ZeRtBkftdoNlvj2RlAJQa3dNmIUOCPbmedxBhauLcygFx7
	 WLcdioPhqSUGAMW6xBS00XhY/yh5iqaLA+N5ZwHTPp0tmg4RbZ4nenKBU/ZQ3/Lwda
	 ANqk5JGwc0yuTaTRXs9AKhUy2cRJ9cA+0RFj/xze6FslwjxEQwG3i3QKlVz4gD8iy5
	 Br6XvLXGyUC+P1ceCnGQjc3KrruvmkG3qhIn5cCT2jyNOt6aPNfg/ZZH5y4J+fybpk
	 jx0M+3b8Ca0Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC09CC88E66
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930743368.16362.1374357071184280893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b035926f9a0f0df504ccf8c97dda801773a2f9a9650129529c06f1e17b2161
Date: Sun, 13 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789307433
