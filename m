Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBEB22D79F
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747365594; cv=none; b=uu4scdttMWC6eWEYZrl0mBLu+pEqC0HfzgZqAqjrVJyBeJinhbGOzyd7v41zpCiLDhHRfltaVn9YByu3SP9ENVyF4zdSAWJm91y6Mly3FoJyryTfGP/JT7ZQBE8OQflMGKAtbjU4ZrAAGbCqaEsbUCbgM3cNeYI+sIPP7XR7fZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747365594; c=relaxed/simple;
	bh=DzxRspg2rKO+9Lta0htwVU+GRSTjgvApxRcdg+RAI98=;
	h=To:Subject:From:Message-Id:Date; b=DNSsXYAb9ymkQHv4zwk+2TDDAdfRAp1qrIMmXftt7yf/b8TVy1LlSdwUVZLrpco4EyeyBqNtWUdua8mhuIX7dlpnOCg2Qe5rdlaK5x8sQL5E1Yj6GQljFxBJnpl/D6iggxNDN8c6Q+BRwfbya5Uk0Vw7naW/sgPIL+wL0vjCO/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/76n+7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/76n+7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4313C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747365593;
	bh=DzxRspg2rKO+9Lta0htwVU+GRSTjgvApxRcdg+RAI98=;
	h=To:Subject:From:Date:From;
	b=o/76n+7wsS+PXQZLVbM4TlTxH8rAFXigRYxC8d8GjMcXV9K7hXpx3hlsFuqqBSHcO
	 Q9AOchaAOjVeUCDyd7ESOhTfXRfE4kCzxDUpRwv9kRokAXrs2aRewT/QgV4/uFeYwF
	 GWn0oJrnvIiINFaAot5fefaaNDvpautEx/8LjTSyIc5oeM6UIysZ34dO6liUEFis4R
	 F2OQF5jvYZ0X4Glekc/STBakwiZDIbR7qWRwm3t3ajXS58bW7JGEs//woRZlIZJzS4
	 u3OO5iSReYQzIhCpF5sZ0hGvyxgES5iPxPWCb/OuAh+2cRvhfkc3+AMnabkt9QzKID
	 yhWejcPgIJLdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9391EC2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736559359.16741.17977921388749725183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067bc3e65df78219e0931a8108e85dc0e68c363ed19851b9df3b9e193a2c427e
Date: Fri, 16 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747365593
