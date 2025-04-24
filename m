Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D6E221FA0
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490595; cv=none; b=j0m4dVck+3kUWkbRMY/aWTdLgAPl7BnYWcAr+p7/pgct8oUGNV6Lr2JKUMd5OOCFR735lj0HoPJ8TxxDgQ0J8DbtSpm9qfJdVFD5i6BVnX9F9gJhhJYDplxbs+BQtm3xn2rXHMDFJdo/vUkjete9uzlkfwGgjQf0s4ZIzgpZsf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490595; c=relaxed/simple;
	bh=7FCdkoc9kl8Cc8ieaxIsLI32tX/WpNzwg4ZMCzIcA98=;
	h=To:Subject:From:Message-Id:Date; b=uSkYLYSz/b6I9dUS/9C1Z0nAo1r+LSXju40Gon5nAjer82ihelgXeHy86VrzBVImGCWQEZ9jz7RDJdj9m7SwvVCABCPFtU34CyDXBGprDT5oOqvu1vsfioi/jWl3G5Gj5jrZIGXbNozfi5OPaX8Mw3lUJ/V1Qc4V0j0c7wLHZSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qafIQsv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qafIQsv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E407C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745490593;
	bh=7FCdkoc9kl8Cc8ieaxIsLI32tX/WpNzwg4ZMCzIcA98=;
	h=To:Subject:From:Date:From;
	b=qafIQsv8vUbe86k0KqiGXYHuzjPJlCLpDBz8g5QZrf5SnW5EKzIxRoS47ZgQLEosb
	 4kBsazTbPOqZL7Yp2Syo8jTyp4WjsgIaqrhH/hU6cplQ8qWwbOLHLoPLrVx51h3qWE
	 sWNbFgF+3NWQ4tZyXnvlpKBeI2d21lKUaZn6t1p5DGZ75o31yBYyuR5V1RRCCxNQAL
	 nvr9E7910BtlRL5iNVqY6Q+pGfINR0cu7iT0GXyTT7Zhthbu072NL6plWfgdrHIxQv
	 fdNPJVXK0g1o9fLDQQcTPOFbanWtvRr59VBiIaHGIktcEhflMWwGiuNQx1KaMaXn6J
	 89Rd5XTBn551g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ECC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549059357.18839.11481264865306205356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8244a4b0b5081dbd6e05b4febc0d0168ebeb2c0ccb51cbf9af92762733ec48e
Date: Thu, 24 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745490593
