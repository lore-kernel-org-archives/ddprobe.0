Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE7517E4
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763893914; cv=none; b=HCjYhjmc48i4wCynFpu42Ima5XYKF3Hs6IeClyVG6ZrI0iLrd0Y6rh/sCTSqTte47aq311a6XCsz5cEQEP3x8Y9LFO9Te2fcBUreJZYS3QV9TY4Gim+Eiu8nVLVlVrrjLWslFABqB8QnHssdDdF6Gu0yrsUdUh0YDSlI3afIVZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763893914; c=relaxed/simple;
	bh=CZuu4QPP50rRbvUXRJ6Eaq4ejL/cDSVKbqA2mKOK1c8=;
	h=To:Subject:From:Message-Id:Date; b=JxjoGfWI7cmqhmsL1DRHeaS4A9/Lanwuwbiq7A7azxo8NFL+U5grG+4bD0vajPusFsBRvQQQ5RUDjVMGpjeatiozB/OmmBXYLv1st2yPbJTSKr0/t4N7avSNU0D4vAO7mZH2EKgSZv5Goosh/fhzaNt0QQpc+Hxmu9w/5OsS8LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0dZQ/3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0dZQ/3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAD2C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763893913;
	bh=CZuu4QPP50rRbvUXRJ6Eaq4ejL/cDSVKbqA2mKOK1c8=;
	h=To:Subject:From:Date:From;
	b=j0dZQ/3ab864F8PY9fnZGYIcFFvOrrjQUr+NmCTLXRfgmVBQAFj0J1X4WL+X9HUfH
	 NWeHy85hd01ho4z/gEjZBVYR35/wTrZMUpkA+9MtjzV3y3Ahst2W9cyJEyvjE7wd0S
	 N1T+IIXfp01SE35NjMedCPoh0R9LBpXlgDAC5JNtugvB2+yVxZT9790yQQMdL1gkz0
	 mL1TNrOc2EyPDnZzVZIo+UM9RN6HviezU2MC+Kf/NTqjEx4ySoxoUE/QYP5bLWvSB1
	 SewfHSvdKs3a2V8x1Ra8mH2UR/+mY2U/O8/n7STUqZ6LFyyPv9R1u9eStoIjWQOIT+
	 jj+P4vMtOOFhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96152CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389391358.29490.11654169970033808159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab756233c68d0ec2b659f40fe57a9b15593eabf1bf9c1c599a6bb894c7779c2
Date: Sun, 23 Nov 2025 10:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763893913
