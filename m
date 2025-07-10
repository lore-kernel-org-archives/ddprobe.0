Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D486D28C02A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752190193; cv=none; b=gIIQDxS3vdLC6h9hqpJ4ZpoipcAbnx9d9jQ8BW3r/QsSCZ1MqKZHzmFJnOZrIZ6P652+K3Pmd5ebSUYo2YiVtSWBZvyZ1Doe0us2Z6zeURnGPr4wkju/9O2vKAuYdtr60sVZkmxboKJ4ifVxVG/5YkgMdHegc2lbJ3UlghLieVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752190193; c=relaxed/simple;
	bh=Be5CZoq2bpjxDUZrQP62Pr+lA7BpAF2toKPfcYLm8Pg=;
	h=To:Subject:From:Message-Id:Date; b=ouS3lqw1z4GhIkCcWEIswhV5KUuNAf4Gnhk3XX0HWFhCPc9ZSDkOT7AK/BR7Px5qkiL3SIunnJfNvT1wtQeJq53U2zhV/CAW3ZMp7MW6cWIYFtKNQuaykD9dlXwQ/T5XUxd66YZEJy5IDd7SRWX/mA4+5pGlp2oSXY5RAqcD41I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/TbeGfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/TbeGfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0892C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752190193;
	bh=Be5CZoq2bpjxDUZrQP62Pr+lA7BpAF2toKPfcYLm8Pg=;
	h=To:Subject:From:Date:From;
	b=C/TbeGfHm+tvGwZ+PR6CMK6IGcWvVVmBzXM4SGm3y0s1eJNyS1s4EMIXYiyjx8TaC
	 sBPVAe4ibu2rtOis5u5UK7nzxU0sMV9m3BBzX8XS7BY2fnIlfXiLw4n6ZN/gpqsY9a
	 hwRB9DtkZXw0fxZ2ZVZ780HxlMBrlzfViOQvxkqtE7b0HVeb/zPHSbSRFwY8QznNO0
	 98GXlaVrUPZkmrMXbHEcADg7lWwdfzt3ckb9QghzCiUMwZw3vszTpJ2lZORnrsDgiW
	 rrxkD5Bo1FibVg5v0kkxKIVzk4/ntcG3eMZvYntB+QRn9xjY5pmltrWx74Js7hUUPt
	 baVKXY25nOkog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E231C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219019357.12684.7361647105733869080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fea725d9b58f91b80c32fbdd3833b67480a978db4de1f4d9e6364c85aaf3cf
Date: Thu, 10 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752190193
