Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481183D69
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748187594; cv=none; b=BpRZO+oTa/ZWapduY+fbz4xD5ojWKdTdrluKVmkw9aRjFFM41j+APu7Pwd7x9Odl7l184IuSTxB5KJL4ur9au52adXf9uTRPzsiosz5LP6vyZAFc3wVPVWKHRoBiO/AGOh7tZ6g1iTsaqWvcUvQedcHH4yn94SVtw9V+yHPs/aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748187594; c=relaxed/simple;
	bh=fbbVkDoCiVdMgFQheM5nW01HR9GyGw3dq94B0TOSk/U=;
	h=To:Subject:From:Message-Id:Date; b=XvIZLgtwFBL1psaCwv4vpEuehgCcORENxYH3g0wSwTZxzg/038u9X+CgZX2dPp/Xp8fJKYaFHOk+sTu1xb1fMXNZJACZMNE1guJhmqlOXFRs/MlAuyvmT0KZoysmhOZNQqIRrpwMV5JiTUAkCcCP81uKcsDp4wDHZSlbDQEEqC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSKmNT7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSKmNT7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A461BC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748187593;
	bh=fbbVkDoCiVdMgFQheM5nW01HR9GyGw3dq94B0TOSk/U=;
	h=To:Subject:From:Date:From;
	b=cSKmNT7C68HSATwTcEdrK8oDIjYZqQ7uxbKeEai4TcXyUghDlYnRwrIotOr8KRus6
	 BC4KApszp9cUFzfzWe2VlWETpIMuin2NaKbKNMUlKar/PP1LhERO+uklfDeeaPVtVP
	 PH9PSKByG64t1W/ZalCo3BxU3YvxCVWXxiHDEf2BOTt1Yj7gB8L02UdCGAZWnoKjrE
	 HRtBIOcpIPLgKVbwoOu2s4ZnKawA9Fq0Dswin+tKwPmCY9n2xtRgIMtRi7F+rwZoPD
	 RblC9GuXI8+IqHfjNe5c6wwlj3emjXWEO1C4MBNzkFfdVLmvvV9XoVZHcE6BGXivFT
	 xyUinm3CWjUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E3C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818759357.24130.11900671469997893959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6603aadc3a1cc469446133c2c83833e2397b14b5f219c7585c5004edbb4db05
Date: Sun, 25 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748187593
