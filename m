Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085B6275B1F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758106794; cv=none; b=pmv6Cgtv71SravraI+LMqYPa2xfB/x07F+ZTGmyDrddB2gjhME18SXIyrV5YSFcq9MWsZrpy1wdsUnyfM8UEP/8G5WmH5P2gGCXsdyDa/vJHOLRg9e/5gcrlGSGfEd7SASpl5I7YeyHRO4fxkZWs+MGTrtEJ9RmlgEbqjS7AQZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758106794; c=relaxed/simple;
	bh=0WEAWGJB+DC8buTrPgMk1aADWE+CL3TUNkJK2nFGXCw=;
	h=To:Subject:From:Message-Id:Date; b=owdSEDjpGKJ+4ZY3AzBt+mkwHvGGpkjkaHxqTy96NaQ4Ads572db/oN8zEfkXxbgL70G7DcCVIjVamn+1sFmwWC3R+eZq+NRD9xiBZ9A2cDWb7LFD8xSanwa+GAzlmC1HPCtaueK8r/gBnu0KtAuz9Zk6B/QCUfAGAf+QCIyvVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkWe7W5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkWe7W5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6AC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758106793;
	bh=0WEAWGJB+DC8buTrPgMk1aADWE+CL3TUNkJK2nFGXCw=;
	h=To:Subject:From:Date:From;
	b=GkWe7W5GKR8scUfGjm+ILvtVbO9X8KT7npcqS52CSNibPcVurZJ2uJ2m25HaE4a8x
	 fAXqnpNTp2yVeviTTlze+b5d3Owmf84LczYrRHnJlHpbnnQQvDtSNGFRKe7e724YQE
	 9ABc3oNb+wiuWeZ5cG+n23Lnz7LLU9qrSGH8ANTHtHl0jmuDxV1h8uZlgQMubDtNkw
	 IIH93+HRJ+mRuZym1KnZxvv4BMq96ElFv/6s9KhOWmHer5m2+nab5fFQg+1ieay1mm
	 r4JCA+MTEtGXP4/WflwMXRGqO5o0jdyi09G3RoQ+QRkzEQpV5agy85biSp5bSnBK9f
	 R505Jgp3KNfvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E91ACAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810679357.27192.390383820358594952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9bfce0b99e977da93813b9a52fa45a72dde4d38c579130dbe8d6d0ff67eae7
Date: Wed, 17 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758106793
