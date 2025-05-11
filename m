Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2B57E105
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747004994; cv=none; b=UiVqNXf6ugNztuJezR+w+Qo57JRRO6j94cK+OW3PwKJ4ksr1vaOtIxvCBn3Lby3HuD/KHwhONSa1y/qBDTWD4iE4W98tfHvwvUXZnq5Ye47wbjUb6bBQ7+Qh0Q6vqcmw8fy3Y2CpS7pXW/usnCTO09bcQ0x+9rstqcVZHzZRe6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747004994; c=relaxed/simple;
	bh=KUEXyliSJcZNaITCcR1ZKvfhI3+AUa1DN2nlHwT1O4U=;
	h=To:Subject:From:Message-Id:Date; b=HMa48HVMI7c+eNQ1F+z41nf9sFQlBU/8aoqx8JRZiZ8iq0vKseIoM/zneLTZP7fWc1tGPjFhjb7fqtJDI7baD0RY1ALmEdmfl5FI6U7Cm4BDGYqbOzdPVeR2P4WKni9qlGatTI9GDkWQjuapuwpzP9kDV8mniIm0b38fke9vc7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfeIt3J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfeIt3J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A568FC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747004993;
	bh=KUEXyliSJcZNaITCcR1ZKvfhI3+AUa1DN2nlHwT1O4U=;
	h=To:Subject:From:Date:From;
	b=HfeIt3J3W+ZCz55oI6kjbb793ZiNcBEIQh5EPqelPxpLPvYisbG0Jbw/tpgDXUS5F
	 6QR8tOZl/QNB+j13TBp7/d3hzUXNs1Dx/DizNFNFUDwtfcGUgpwVettHJmQPfm/FYZ
	 WkDdh5aF3NZIahX5Cou2lrITBHJykw3LfNmvt7OGljWrG8zN1FVA2C5yRZcJM6HlcJ
	 nJK1Wwg85Jy9EaBrG9uGoC8ocTdpz/FrsEgWZJfYpRq/69laoM/3V+oGYn3OCkK4i0
	 kFBUmmKzPEDgl8iiF5EIqm9M4XzocHF8drg0SJZix6GeMupWNk+7gzFmW3/dBeSFcL
	 zd/TzkqA/3/3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D0C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700499357.19159.3776081946597840660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9672c7f186ba62ab199df5303fdaf422662815e6d5aa72154e48abb0e5ecd9
Date: Sun, 11 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747004993
