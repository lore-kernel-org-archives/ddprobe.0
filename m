Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A3C2D23A4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772303694; cv=none; b=ci7BNcsNpJbPVWgL/yfzazyfRiQjHnNKu3SQSN408oDyr23Wk4GY+kMrTVc+QAKe5zCt1KQ+UpR4lDXmTw19YPnRhIu8Y0RxT+YMysytmdHs9FoNVzHeLmtIFJhmxzH8/c2uffFoV/0o4iOH0bC16m2xseMrB7z8XBgtEZlgLfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772303694; c=relaxed/simple;
	bh=hZitbtRHaRtL0NZKNGvmJZiSlAt2eb61khgF3l7iejA=;
	h=To:Subject:From:Message-Id:Date; b=B8P8S8Nqb9CxLRQ2+gBd/0zC2rSmBtqi2HSwIF9OKgR8CzJChTnbjXiE07adO6CDlzv0IjeLCJLD5kJXJIOfJomtnULKiictz6uZApF2jZdNYoS7KMSSYqyObo99XXDLnZIU+hrXyGL3WbxJHqou+frG/0hrPZkMU3fercT4Yqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+rrVClQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+rrVClQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6714C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772303693;
	bh=hZitbtRHaRtL0NZKNGvmJZiSlAt2eb61khgF3l7iejA=;
	h=To:Subject:From:Date:From;
	b=F+rrVClQaOiIfCH1a1cVZh4326svLMf+8X/Z2/D5Vtle4fYLUpaMoycGCIcmLA064
	 5TUH1Nluex7LecpW9Du6mV3d+w0RjDc0ZayXTBjbDgRXmk4crr1KXXfGY65HZ5QTnI
	 7gR8poXJLEffQcIKtX8fWm1Q/qbOHQx8wGeNLj8xUStt90gNG6/HfxevAaEyivkq38
	 0lAdUcagLUwSSLWxvWpfmHT1AUE5RrgIV0QEmvzz73dVvZb9kPmgsIwgCnQMmQhCWp
	 MrUQgUQDkXjtxrzes7vitm9JYAaSN0SY/iRXu90iugA8nBppjjnvKF2cwGPOe2msSh
	 x16dSVDTmsa7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AB7FEE4F4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230369359.10739.7802130872323168823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4223870de5dbec7f1ea3e57ab8c9d0b8e0e656ce33d5e5ba188d78ec1dae55e6
Date: Sat, 28 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772303693
