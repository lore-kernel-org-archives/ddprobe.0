Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173F1314D1F
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766653434; cv=none; b=T1epArIecuUqlqvLCWvaKfRlRG93EMXEApmEIY7cYmC16xAS/dZFJJ2+ORjxGJuzTPft72eTx3/ewcJRcsUHSzL3zYsKXKSod3g9vdVfqqZZ8o/UQnmgqN10JXx13JK4oMbJGx65wcxgL2hBJNqtDOMK2dBuoIo9JS1GReuqdZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766653434; c=relaxed/simple;
	bh=U5mgSCsoxosemLNeKFerFR3HNim2ozFx8tBHhWF0hEI=;
	h=To:Subject:From:Message-Id:Date; b=n0+bOvIRRrYmUI0M3ZvI+VjX6kzmSrDt9JEyJhm+r9tNTHie3t0nHM0HX8AfDoaEUdtSJAZxljZ0SVaxdVjfbJme+9Uk9PuWBRBO+UnrrTJpHNi9AqXNSCbGF855Om4eZAYa/0g9QzMhqp8plntAexf9uVURAfJJOJFZbWzghNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOODLNjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOODLNjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D304C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766653433;
	bh=U5mgSCsoxosemLNeKFerFR3HNim2ozFx8tBHhWF0hEI=;
	h=To:Subject:From:Date:From;
	b=WOODLNjMdX6mvk2cCezoKYTT80A8HrZ+r6jbHYPHklc19hNQ+4kkVHJTXlOXbyzUb
	 qkGjJuPKCvVlGaaZVmie8TP7qRl7vYCDpwNgsojIQeiB8qKuFe6lDPinMDaXOxf9pb
	 gBGNxoKq70gXAnfsRuR+uwAdDRZOR3PkmZj7zO+o4sexpnYIsFuStj1Gi2eFmE57A3
	 ub7xIfWBTA019n/c5u6NHZoAdGDFfmVEnTt5oLT7VmUEtKcf6QqYP1JrZ9YQv7h6gF
	 J6Fi5WnkPQMS+fU7dOivv1i+ILoiw+Bzr1VcgvG5zm4pkj8n/f1VaIkMsflcZ0wovT
	 J6WURAxdpOJKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA24E784A6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665343358.2861.3366036156287486336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29caeb47ebdd94b839719abfe4ace5406c07855e3d3f953431417e75ff6775ea
Date: Thu, 25 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766653433
