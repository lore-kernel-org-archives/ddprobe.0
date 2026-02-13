Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CCB2D73BC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771019094; cv=none; b=tUVZPvACze0iA376kGV+qD/HvqEYwJsO9OtX5bScEY3MkQXl+jHhJA7kVViTWkmssHu+wlkPUUpEKvQqVfc7tdQYWOlqX+kFF26SNWEv4oPWdGnJ52yIzt2iwU/nYVOOatKYQ6DKbobKMQWUWaY6AkKid5gKNZBlrr05vxn6ws0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771019094; c=relaxed/simple;
	bh=il5nThVLXbnpVqQfGwwajAqz/ZCnib/2s3eA9QWk1Mg=;
	h=To:Subject:From:Message-Id:Date; b=Aum/qxswiNTldk8nCOgMOuhZgoT4+PqDsZyVnZZrbrxsBF5CX5jH8GKrPTP/iI100EGjIdFysrajYqEYCx/LbScnH/3pL8thCeb7kBu1ZgIFYR+cOCkk8otfE7ZEe0xjqsQL9cPlsfN5ZSIDcPxcvU7m7NQ/qu8tKgHdBHrtaXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4DRZBsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4DRZBsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9041C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771019093;
	bh=il5nThVLXbnpVqQfGwwajAqz/ZCnib/2s3eA9QWk1Mg=;
	h=To:Subject:From:Date:From;
	b=F4DRZBsCGeDHjcZ8yLaWovZklaW4xxl+Be6tOrZAPJWf4TfrEFzbwydJPc/+rjb+P
	 DyqgFtITs24AsvVaS++RrF16uGLOSXlyJQjfKn92JsrWzmX8gl/o2aIxuRB/phgG6J
	 w0QWo2ugi8zcV4qelUQrFeBpADAYw1DJeRmKgCri/GcDz7Otcu6OOIMLv1BpD4ZOMV
	 sPu81DUsN4dMULOiECZIWOdE7WiSj9ZBe+O7LKkrryX7OUaCtBvXAS/bKYAMCjVgDX
	 zahyBeASHmETtMvUWlULki6ddQIy/miJxA5wJoBfqXJURpfxLLHHFU9TDKCCesYByr
	 IFoaLgHgBgwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9460FEF99E0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101909359.29118.4104715368820051693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414ba7929c64dcb0fe5bc458df8136956600c0070d3c53d70003996a52233c89
Date: Fri, 13 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771019093
