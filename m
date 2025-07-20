Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3641618B0F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753007394; cv=none; b=GyMWL5PsLGwq79+kfNs+a720KDxQjwstbSdJUwuZGDAX4Dz5Eu2BQXyj4fLiXfQ9oqrih8eqqcWoaV6mVfRf2nsSJDiHqPaFVC4z+KRbUvzfg9e+0ci8zbaEXofEkzyELBl+qu4ADRnXRS1UN6K4xFlDkkrDkR50xGdCffQEJgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753007394; c=relaxed/simple;
	bh=E/ZmIXMRmriYNlK4F3NpcNseYIVnV9EPBDCr8ipYAtk=;
	h=To:Subject:From:Message-Id:Date; b=M8i8dAjX4nKQ+V34XK8KPxXp5HNpPFtn2pWbx1SqmSPoerdggR9L9sHk3e3Kf/CxLz66lEj91HV3/dNa54NQsMLIPJBS6lzW0UsI/KOf45wyx7Y3J3rYDn0MN5tJGEM35W3X9zstbolj2u5j+dWHLHH+ZRo/A2qi6O7uQXPG6EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mwy/KV6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mwy/KV6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA500C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753007393;
	bh=E/ZmIXMRmriYNlK4F3NpcNseYIVnV9EPBDCr8ipYAtk=;
	h=To:Subject:From:Date:From;
	b=Mwy/KV6yB43T/EuA6kmeHJpHG1r2TLjyKxJFfu8W+DSp8NAZcQdATusDIjeVvvBsW
	 7Cx93sI6hOdtIbtFoG64vVN/NwDDNuF3LE+KJl/nUYnRfVsi9AUnNo1OF8MsulfIxw
	 YeUsXkGq0AQUiT4hgy14xFonM5nGWhccHRHn0GOTcMQelA4pm6BEvHqn3AY/fP67Gj
	 iCfP+JvJU4Kh5W+nqxFgb2kyCRBKKwjFNed4me/p4SR6MXcCsxD4EtLOQ9lRBx9Dz9
	 SfGMDJUrBjsGV+MUdeqmXxjMrxGKNGONt9/p1NFU+/d29h4G2PwG5K7Gboro135NWH
	 kDlMWkRz0hcUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A4C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300739358.18724.14513966622257825263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0453d93ccf906cb20f5503514520cff4b13eece3473dc308f95253673ee2a8
Date: Sun, 20 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753007393
