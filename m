Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B65917C9B9
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724510754; cv=none; b=fcOg5Gqgh94Oc8J3j9TwoHKyDxbwybG3122qo6bIRC2TJ5hTjduDUCK1aawLEKmtAFepVLCq8of1NF2lSnb50lqqp/j+NlJegFS3dw2b/n+0IsCOEe+BwsBYdqT4ZlvQIDQI9jNWUiet1y6cDmTrvZP8cvdoaO4MSw13uQEVqc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724510754; c=relaxed/simple;
	bh=MBDf2SDWJaXAOztmhkayB0fK1qIwWr+EfAjRWBfftTg=;
	h=To:Subject:From:Message-Id:Date; b=kmkQaMuBElcrXESQHTYAlh/Pqv3WdKOjSc0HC6lrkgI6o0Gs9/o9WAl4Zx0xThM+7Q3ERBSip3RWhZd6tZJAzkIMu4q1b5h0wLtLDXX1TGFdV7j52V6DMKI0RTY8FzOiJJl8M5VxVb8CZ88zbieETz0g+3Cp65bD2FDaTmk9m24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9WKTYZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9WKTYZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773AC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724510753;
	bh=MBDf2SDWJaXAOztmhkayB0fK1qIwWr+EfAjRWBfftTg=;
	h=To:Subject:From:Date:From;
	b=Q9WKTYZDMLwlmYZAzA3Izve9BuuLKvoRIWZICZcHtBTV1peflVACOfIoN3e/xpAEo
	 UZZoOkd9MD2vyTAPK0evN/uhJnGrTlGzZVxmVDnh9LaRgTFmEo3L88CdcLBzc9BshJ
	 0sibjF81o+QL2jBWvq2bXonGqGDUnTMVSBFbjiUS6T6MNoPvTswoTcDuQcV8RjnExA
	 J+S+M1b4MpM+LRInf8rt8dmmH/TgoB0hmpEZfwjdXcOrKCq+3kVwWH35d+lGz1lpi+
	 cS4kQRoE9+bD7plf2hwUK4aTEjqfz7nbZVEa1jVEIPdMcKHPS2YvA163LiebC+vomB
	 U7MNk2pytkaxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BAC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172451075358.31043.9999955476044377231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819d2c9a9015c4b18079a382975cbee845a45d95528616d348ed57964dd57366
Date: Sat, 24 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724510753
