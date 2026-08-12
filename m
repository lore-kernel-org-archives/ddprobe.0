Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F5B43F4C5
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786539034; cv=none; b=PUScbNJTB3jtdZYNy+d8vGEqprmIQoFKv2xz+xdtz7CJN9vs6Hp39PRdlAt28MPrVVuXW4Jp1LRMUwYMtOamgXt/FK4xBYIxrsSNid1bCyEEgUCWZisHSMKGd5DQZu3S3qOVRxc0hWwdgXmVN/GWr2+T/246M0bfGelExXm3Qfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786539034; c=relaxed/simple;
	bh=FNJu9DFpUrQLiKIPwN4oeI0FjbfSf1vx9IZ9t8YXKDU=;
	h=To:Subject:From:Message-Id:Date; b=KkLeH+616LHeGpeSx6Fwvg+fKuR+nql2gsqtRc1sDhdnCwVf19bExlW83Ar/p1tddkdQcKnJOKjeN/3LeywNX8Jw/qSjU+qSnIiJVnavMfg5nd0wVtLPVqfD1P81h+1iYayEzWJIaazUe5cXAozIsGDwjqCKjmPy4A6T+CAM5Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnGKlkJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnGKlkJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD831C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786539033;
	bh=FNJu9DFpUrQLiKIPwN4oeI0FjbfSf1vx9IZ9t8YXKDU=;
	h=To:Subject:From:Date:From;
	b=TnGKlkJ4hZdIs5fJH1v/auXoSKTGxDc7PFufwM9DS/oHtrR+TV94hGg4ADw8bumdW
	 Ay1WY1Oq/b4EN+QkgE7lFDW4Q4fTw9UdAn5C9FuYbyO9UrxB4e/8xj8aEkqJn+qShV
	 AccvInno8L0tdJ5hkufRfHDP0bzE4B4jpxSP5fCBDQwEnZfV24FeY7xM/OhiEIpNQ/
	 W/s3It3c8sOrtrL4pU6HIlRS0T76YFmvs26RlPpJLWbjy7BEv8IwO53PpPOYHjfEgK
	 dVzi5hmJu1VNN1lhEsDXhnoOGXFjdl6kxUynTa6IIBKnWtC2XRpur/I4zsuuaGQArl
	 h7+vXxIbyRACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADBAC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653903368.2671.10066185790307623697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8fcc550c6601b9ef3fcdf7784686fc9b2f2ce9938c824f0e1da81189b43e0d
Date: Wed, 12 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786539033
