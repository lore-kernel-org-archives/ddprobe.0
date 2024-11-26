Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A343208
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732602354; cv=none; b=FYD2i1422kZch+H8zeYOZh8iys+4saHsMoxkHEiFomHobPNVSIQE01vEB6dLK+7q7yldzBXqnXkenl6AO4OtDhUYYtrOIE+Ac7C21UFRKgvjaGC/9P/rtc9XOeAwxovJUIFKSJfcX+CdOoPcmoLYayt3Ak3PYYXI+8ANBe94YWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732602354; c=relaxed/simple;
	bh=Y9e8tUZ6scc32dhhiFwmvFlp++8WJTZfVPXw1g0I+Tg=;
	h=To:Subject:From:Message-Id:Date; b=bNnQ6OBwvX7dgU3Im2YoMA/aC42D13PI+OTKpDbcZWtIKTyFfk9qlKO9TfaiS04JcDXI52qqQBtwr/R1uOe7gT1qrJPFtbpR8pJN1lSmBpiLYfh9wsEGPT+rNrjfsWaHAG9HDP20qyZs4w7WlOnpiYwsCJmerSB6YXWBV/Bh2fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAWO4ZLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAWO4ZLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE304C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732602353;
	bh=Y9e8tUZ6scc32dhhiFwmvFlp++8WJTZfVPXw1g0I+Tg=;
	h=To:Subject:From:Date:From;
	b=hAWO4ZLbvVAU9QjNjCTL+CihuwUY8WnnqZnWkjetYsJX2C+XOWGzJvA5K4kGeaJ85
	 te1OSHP9q6jRsNXBURObOqHdJUsI7PnO+lNeLgRenKxk1dQpu9v2DwdZPAlVnWtOaz
	 gqzzrPTdg+l3Q5LfF7rjrwbwJDIZ1C4EIcPQKhDPiuNANwZSysrnBlHCyqx85njg3F
	 Z9XVqVwril8o2CevXB7zU1QrK+P/L3nlDja++0edrKQ0iYSPW1LGNcdVDPmewgZPlG
	 6S61E/tHNZ4do0phzUctVirgENNzkXyvUXmH8MwtBVH3AhlE1J37vqL6ihjShaLbi+
	 2rQ0SBIcrL1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48DCD5A6DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260235361.15367.8651869977426708998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72eac1200339202cc8a84f97710ef21eb8cd35f38a05a79b758febcd41a0d9e7
Date: Tue, 26 Nov 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732602353
