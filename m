Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E72B183CC3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779514954; cv=none; b=oLONIgivTPABPzIDf/CdnpcOxGEYeTL9PpIpOcnhRJO8Hggoko6nt8qveASXlWl0WiBPj+rYZm/dazjbRobpaHFfREBd+NC0zAMOTgnq8l6cNv0tk8cVP9IdZwhP/7sBRIYm4qzEfYNZpXjzShznMdNZXPFQbRSL0+Snx2D+Hb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779514954; c=relaxed/simple;
	bh=Fy8N1bAjUXy5Qw0kLM2hXY+69suwmDICIpiRX2zK8pM=;
	h=To:Subject:From:Message-Id:Date; b=QMaZdE9Oy0XQ5AD4fJXWYYkh2ODMa9MrhWTMwcQhBTXcO4yN4oNUzP2arEhk6lotOBygxfpiQIyYAiunO5cCvmqap4QykbmUbn1RlOwgcgpkEtDNk7xD6ms/LwHm9rg76uo1oV3eVnyh9Nqo85N1kLunMfL+I7rxq8siQ9Dr2Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGQAzK09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGQAzK09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA62BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779514953;
	bh=Fy8N1bAjUXy5Qw0kLM2hXY+69suwmDICIpiRX2zK8pM=;
	h=To:Subject:From:Date:From;
	b=ZGQAzK091wNNhFwZcjBInL3dY7dFIbupXx8ju27xCbYxjR5um9y8L19XkX9CRgkY4
	 +3Pu2IWXFnIPTaDy0LsPmZlBUakU50UkXIrpkRaFNMUZ2MU0by1+kLuo+ossCmJ8i1
	 th1qIDFoxVlWEQINIDqo99rmEyag66TTmxEApdEXroh8l9OpmbLUzqP/a/YLrknJ5I
	 gRSJAdwKsjUAZ2jvKf1f4SkRhzhtv00n1/a0HFwRhGWlSCjUx3R+IAvhdujoVarwFl
	 qOUzy0tptS7SvdjPQ4VxLaKJw9hsUSKfpmfLuNh0KRzoKgovQNzjGnfvJ1ZITELJB0
	 Tu1j68dIHiAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD65FCD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951495368.4011.16350566083985070684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317a217b95a10ecac2619f4bc0fab3f62908080fbddb6eaa4e0541a875c2019c
Date: Sat, 23 May 2026 05:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779514953
