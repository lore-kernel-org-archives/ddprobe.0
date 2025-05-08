Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6482288F7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746707395; cv=none; b=c4KGbpXYwJ/aajwULgNoPEOZE5PNv2sGvZz3LkLtXMOJABVcFF9P9SM2oWvbpccgJDgpYLw2/Ncr0pxDlQwS6zN0uX4Qy1arXIOA5QML+9scyRgDyuGKAi3Weurnxpl1yiwA1R1h7547ip1EC8aNfejhHu5WOqyl3hgTJsp5RJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746707395; c=relaxed/simple;
	bh=UzIrCxkD2kVtNUp4L/MBXLoTlB7wQEVZPMtHonEeRY8=;
	h=To:Subject:From:Message-Id:Date; b=TPuYx2PyVnSI8Rn42Y30MyGesY6OS2qEREEA5GVyg+7AVN/R17FUhGAAKZMIMOCAaGwiMQ0c5fG6sZ5kJ9iKCqBTNx2vbhzHXdv1EXOm0xybwY+f8UYx00wxgemyE2lUA9DkSqzYUCMHP5cADa/YG3akk6adpdGOfDSi3NOUM+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0YfmwcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0YfmwcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB8C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746707393;
	bh=UzIrCxkD2kVtNUp4L/MBXLoTlB7wQEVZPMtHonEeRY8=;
	h=To:Subject:From:Date:From;
	b=c0YfmwcYeWGQ+2P/4dzmEPtOWX2rintotHuxeaTakZq5gNdWXgqi8FpvJVg43660A
	 yUSKY7Qk3ZOkTKV9729nA+eCluLBAkOmzF1dRRb1Z+CjIY3vtCnCItlA05bjBR3iA8
	 dAwhTmvRizCog+Owq+WB6+S0hdV7ZQsfoYjpS3RRcgiZJtdZtREXPt/FhI1IybF+3f
	 loYB4i7f9hebdT43NSIZ9ZzWQbWHPPlKiqx4byaNb6PxmIutkZ6l9kfh7qJcGD1TTO
	 9Om22QL67+zZmuja70Ykg5aVvlV8f3E0+7ercHRvk6ZsrAAEphE6yZmvJQdPu9jnZt
	 wnoT93hsvLoXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E208C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670739357.14257.5859476683277000574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd3dc582ff9b7040a47dabecf2442e1973c0b07f0d5b15891dc4679fbf8d923
Date: Thu, 08 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746707393
