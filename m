Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC0B23C8A2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750747194; cv=none; b=eIgrriOjLm69VkQWgCa38TRijy1Tq7H5zVdKJDz7Y51O63zos9FmJutbu+k3Tckmcy2DHtJe0JbqCq2FwAYNgl4vql0uftnV8Y6hbM1p56HqoYsv9bnheKkVB4bXQKyGcQ0UX8gwxAwxvXgU5+nXH3/3aw/ffkgO0tNqWERaDPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750747194; c=relaxed/simple;
	bh=VDLEUNmGi2lBmCycY4v6OKz02Pz5rFXmqf4il1Dwpys=;
	h=To:Subject:From:Message-Id:Date; b=V6Cyd2GeBugSSFmwH9P6bvxSjvu2SZ67q/YSF2cWqKjQepGQm9twPdk02N9Eg9ems8UX5Fg7aD4t/SckHXb32oeW9cIAXXZQL0/9YWox3AFoQuMwimgzWUbHHsZHAcO8aGcOF1Af8NAN/LdL6gk47ZqIr73FbkYWZBj62Hl47O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbnjAdxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbnjAdxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D982C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750747193;
	bh=VDLEUNmGi2lBmCycY4v6OKz02Pz5rFXmqf4il1Dwpys=;
	h=To:Subject:From:Date:From;
	b=PbnjAdxYlVApihwELNsqzfvsP05vs6aSmzXWW9IbwZIbHtYHrXNnQazZ3TrLeXTxi
	 g5SNEbg5yQ1LCFQNVkm/qZOt/ke67KuDcUrMZQvJoa6mxd/79AtAGiqAuBV19Zg0Za
	 CNxBvYp4gu00VDcMXDs4PuTGoj1q6r84zvP1Jp/kTmrkViThD+y3iwmd94PzLOrozZ
	 8q/sudIuiGqPs0AhKqBNiughC9RtWCjVNKfxregv7J9QEQdwg/84d/W0rynBYPslKz
	 rvmCCVWynukWzlaMrZx++hCieVNoUblJbcmOIv45y3DPto/AqmNrKFOwa1hQEpxsZ5
	 aWnURAKRl3ITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F837C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074719357.2930.11559663293890639413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5045413da9a2c3941da36e6cad015ccf23a573a9095248d54b4906e41259df
Date: Tue, 24 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750747193
