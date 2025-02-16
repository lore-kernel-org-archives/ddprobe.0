Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F211442E8
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739737134; cv=none; b=Y7Q9G7UDhMNrylm7Ilk6+X4e0IMQ+44eTAcuX0eVefjV8MASWt/c8mzYZQc6hdoWmC0xnZGroC0r+IKnlVUE/jtzjn6LVS83VxTgyK91D8s7aq+dFTNjtSJIeccKw/a50G4rWMUGsXfStbmmAmq4DyZCzUCIKnvtW8Xm8iLt1QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739737134; c=relaxed/simple;
	bh=awrtYX/w9H3Vj8r1xtzOYDvi9/zbad6w6lXQPIhhnWA=;
	h=To:Subject:From:Message-Id:Date; b=Vf76WP0oPJW+pLCdC2EYAYBjkxOeBBLoGMhxx0ZXZM+ELkNAhdCO7min8wXXJ6uscT2QbZV6LPnZTweytgy2OD+9YGP2ZVHO2WdBynDA/cpMerRRiwqgT5IieagFMzU/hBl8aUqIH2igQeYcKxVzBhZ7UL3iD7lYZbMP5SDw+pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZ0I9bwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZ0I9bwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D64C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739737133;
	bh=awrtYX/w9H3Vj8r1xtzOYDvi9/zbad6w6lXQPIhhnWA=;
	h=To:Subject:From:Date:From;
	b=CZ0I9bwxthB8uxQEOGE74kjb71kzZ4m/b8ffNZh9bcvdroAue+W0kUqH/OyP12pjO
	 XXky9p3wSzjLa84NP+CNvMusAR/+stzQdibYpn5ZK+hUNUNJ0gejdYZkr3X1ARA3ch
	 3rdzoysM0jctRUHhyiQiLRv7Q4YWYWw+KK87uq8tVHtXMmc2jVsCrZJDt9QAobzA1i
	 jcdXmOj6QGfZg33T6HhPKcs05ATexLTBWvfqEaA6gFOVnKvtpDR0zmUpcKFF8BTxgn
	 xO+44V8X5R2vO80DgSDbij6tXo6W+gFZ6hcBazaxvvTWYt8yCd4AP1VRtCs0MqngQK
	 XWzbhCiH7cPYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C3FC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173973713362.6579.7437930389203464643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e964cb052b0e3cd3eadf8f8567f570a4d669644c141996dc2bff96d0172ea8
Date: Sun, 16 Feb 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739737133
