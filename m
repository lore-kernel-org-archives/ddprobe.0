Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104C4329E7E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772699694; cv=none; b=o6Q6uDuSAQpBIYYN+QgmuvJee+DseBrWXTWchxTfLgfXFcvpn9QKkdaAEU7lKeYBGybGx1sSkfN8/58Wd5UacnrvBKmxKeO+2ac7pjxs0UcV3j5eEyYhhE8oOwB4PtlQZRH+DRd/G1guwKMcFcu8Vx9Zui5jUo28Rrvka0b0XeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772699694; c=relaxed/simple;
	bh=ovg7tl5ezBRhoia8V6Lbu0nXyinJq0MGulSKKbSS59Y=;
	h=To:Subject:From:Message-Id:Date; b=gceqyq1EDx7jkp8nIGxFcU7kH4CsnWxWAL+dhDm46QrEqk1P5BI+EqKRR5DedWP3GpA4La7QoMnXm/LpuPA0LccUYGDGe/V+Ws3rQSxB+3TWJZ7wk1gRdwgLb8HakZcbviC0XwoDUUqvEwNC5iyuI/ma0eGtk8Ac+8ht0sx033w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvO8In41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvO8In41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D568C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772699693;
	bh=ovg7tl5ezBRhoia8V6Lbu0nXyinJq0MGulSKKbSS59Y=;
	h=To:Subject:From:Date:From;
	b=lvO8In41CHopIBWLyqvbuEyyLVE7nI/gr9swuRcmTOgIcuo/b5ZTKAUro53xun2M4
	 5ycdhSEb8ymeNIxo756tr4kreEh2C8y1vdI6wuR2Zqy0sT/IcJLhCMjigabjm5VaL5
	 qamCbzEUJ/Ld0B/YCK9a8m8WXtcR7BN7j4cb1yOHBl1XNl/UNhZsPIGlFvIMrb0W8G
	 xx7mZy7yE+7sJfIcCdwNVv91R+hvHIvpI5110J/xVA9jn+9vqMsBi1gBCq1qppQ0Ac
	 FQQlrKFF1SHoLcDrtqx3rvSZa1SjgaHsfOOaIc1iYpeOFDue50zpUDOQWcoVtO5/4S
	 a3nyJFZJjOIWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97959EEF319
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269969361.14173.996768921515119488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af85c121d9c441fdf4ee7c29e7cbe7f4820ce826747ef2776a8d9b625a723a1e
Date: Thu, 05 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772699693
