Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F3C375F82
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788817234; cv=none; b=CeTt4Wa3SYXKG2daETDncm5AuU311Tlj+TgEmwnfvtTc81mKlPcq9LsqzegEUcEZgJOzDkeUrHoZEY41FMPiG2BU4z5B+CSQQPjtU+BmFC12hBjNCWqIYXIvgwf5XAfeP+udYx6PfzPN4Ffyww4bp2zhhUtQ4R0dTf6wca4wxrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788817234; c=relaxed/simple;
	bh=p67T9PNNncebrMhrotsL7+yvVIvZBvXO9F99lA1K6ZI=;
	h=To:Subject:From:Message-Id:Date; b=WvXhdKmYCOWO2AqoI2dghA4NoRp9j0z4SJ9rLFTzW95TBHBmZbLZBYeV+kbn1Ex5o5pzoJrqZbQht6OtolZHIFGiGo2TH6KGLih2BkdflSY/emBDri9gv31s9CFM5y4WS/3AzsYQGeMCo4333vKaO0W6ErIVTgC59JjLmH5Aexc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHkdooVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHkdooVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4080C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788817233;
	bh=p67T9PNNncebrMhrotsL7+yvVIvZBvXO9F99lA1K6ZI=;
	h=To:Subject:From:Date:From;
	b=BHkdooVnSLm0/7bdARrQkieFLXDF8zMwHhyxZvg1phwA+uaob84rYSTBs+4LsnXbL
	 8pdZYS3maK79KUAFguL/onRqb6GLY1+IHDI8uws2fnKeQ4tRa0WaCB/83BS0fRCEhl
	 JcTtz+HY6cxtVtjWhO3AZ2DxA1ZVk97W0TX6PFV2FYv3nOPa+Gj2d8qec/R7V0EahT
	 CHwIUgWKY2YKJDH/eCi2T9kroM6rP2ML/FS6IoCyxy3sxy3FBAny7q9eoHJ435k4La
	 3JxetkIWC0Dtpwb6K8aNfGNsL2rYZYXMIRzr1OlCHhm8kKzfeHZEKYettHDn4cZSc4
	 JTbe59yfIQL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B267FC79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881723369.24125.1306474926829648375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bc2261d29689a0d900dfce5844114a3d2693952a64c0214073bd0f8b32ea7f
Date: Mon, 07 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788817233
