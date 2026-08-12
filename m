Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54780256C8B
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786514434; cv=none; b=aXwS2nwHJPUt5pEshvWZyeJWL7D/Tad7PTOLS1PyKMHgzWlV/e53WMACXvxeep26JIkrCLrsCYBEiZ6PfFWwBGsUuRmgtZ/9tM43BXHHhsZnfk2V1pwPfQenFCStVIU0aXL50JaRt+5OEIIGg2KmuS8no5dQMjOZsC0MHDVcU18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786514434; c=relaxed/simple;
	bh=mYQoiXc7bBioyE7cwx2GpBQOy4JkaWlUMsgdjiKaJqg=;
	h=To:Subject:From:Message-Id:Date; b=WA/B7QgvxK3IxNn3MhwTJOc1m2/dDpy69GQ9hRccbuv/jBoxVpElBbSpMGLVQwi5SvJw0+Jaqqs6dz8BA3kwmnD3Ybk0X0bHau+qA40yqAG5YEswU/l/4weIw1RkHqnEj6YSFZtTUT/qYQ/UW/Ygqs9f7HLqqIh/AjYYfq3elmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtP54LzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtP54LzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB515C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786514433;
	bh=mYQoiXc7bBioyE7cwx2GpBQOy4JkaWlUMsgdjiKaJqg=;
	h=To:Subject:From:Date:From;
	b=JtP54LzJh9apwQrVIKJYNwQqJdKFzM/hty7iOm6SeFqcOaB/3cd636zXenwOimBCV
	 8W8taZoYlw75fw1Ru6xO4nMoVQPywR+4Vc2Msky6ILX530ePYRLux85+tXw8Ldnh1u
	 niw9XqJ5FqVzGAwPqNEIef9bErKxJ4WntAkTDKwPm0jbQRhGnJhBxqWUER3XyveNw7
	 bOBCBxudO5ptC1b78TKspRji5QywiejngXhMm+eYpft4Fov67h648XeqOu5AmHWW0m
	 rmrVddzL0s6UjC4PD95X6wQNQlyXyoYfWY7JYR6PxhhOpydbTUGHG0fmhJWv0z1u4E
	 yK1V0VETmD2og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9166C5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651443368.7893.9282123582931500611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad06c634d1297b8c9c87a1909e483d4dc3fbebe81db5a2ca51ed071cf82dc1e
Date: Wed, 12 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786514433
