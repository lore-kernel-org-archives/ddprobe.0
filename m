Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DA91339B1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770506034; cv=none; b=IKYUz90C1XKkvcG+ue7Cj2mJ8X5iRO5XG/bonDjjWrZDq16rdSCGxiAJkRxFsW0tzrmnGNGCg+5Ef4l+tiPLATJEq7bVDu+NYNTbHIltz+ipHQ2U9S3G8sXedw/QCns1DZ/JdJob5O2jXVysNFDMyuucSuiFkOfJaX9ywVVv+VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770506034; c=relaxed/simple;
	bh=uK4hklk9m65qc+vAu2NFJgG2yKFnWuvl911zHR26WEA=;
	h=To:Subject:From:Message-Id:Date; b=DRUoeja+o8Z79JddCBVGW6scLmtg8J7YpdVHLH0jCAGiR0nVx6lWRadRr54+T04XQVj2ynWV9kF8JY6+pF/b6S0Pv1x5AP+8AiXz8WzGXHlseaj8GgW/y2uOviWKNSXF3kD9FQ9LaB0CwjJ++xEhwaHl5oaCrdDX8jU2vnruX4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkwJhCjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkwJhCjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B393AC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770506033;
	bh=uK4hklk9m65qc+vAu2NFJgG2yKFnWuvl911zHR26WEA=;
	h=To:Subject:From:Date:From;
	b=gkwJhCjqFQ4Q4IEJWM2XhE8cTeIAGObQ+xPdkk/+/HUMWFqACoMPSG/lXBdesZFIH
	 vn4Q2Elnh1BV4hmSlCTPlZo5QNXEwanfr29ojEthp9tD0Fjb3H49CXsH+WE6dLsU2v
	 keZqCcJ1remlSR7YtrmAHeomq3gMGNreuX528ZL3V66AvSTz9UqUnWkdpEy7qttu6m
	 JmqpNdTyAKbicLdSDSYhLRdJ6rVLOOnMNyiIWDwlC/Pl4caGCt6gXQEfGk/+jfognm
	 a3k/n8iNUH5Mv7/+5pCK4cHUOdxr/ZEUNkoeChiJbgVAXVhbfV1JgW2H8hWsQRZ2XO
	 59XRc0NKp6I6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D2EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050603358.27165.15716306082069457052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d71fda65924fec81120f1835c69efb87d35051c063df613eabf89d5c93df695
Date: Sat, 07 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770506033
