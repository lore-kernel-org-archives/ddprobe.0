Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32362243956
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776994054; cv=none; b=eeqIddLtwpH/kXtfsIAx48+1uxSJkfS3lIAG0hrSSxc4RDx0r+9AT7PJW8wTRS3iGWcwUhDXj6iGwIohSyhJczRxO3i2Yrcpcpb0RgVk0F+TOLuCQEOMqD3cBkhMAfSc+PC3gyN4pLn5N+I4YpGMJ6YhbhlBo+NyzqOHRygsyUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776994054; c=relaxed/simple;
	bh=ts3IpbjcbzZ1Ki0CH7Pi2Og3/Pk5tRe1heoUHQ0Vf90=;
	h=To:Subject:From:Message-Id:Date; b=DasWLSwsGRKRq55qKsAxhua1xAQB43KuPaT4vIACRtWrWppDQpaER9Mnwd7zgHaXQN3QGI8Qitjd6/tUHbr3eD+bvyw4ktq/ULXVGxvRFm7m+PbjP0q5wWm6js0HsnfnlI4zgh2SAEOKBlyf93wI5kbOvqp3+MiJzuy86CZ/oBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyUvpdYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyUvpdYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9094C2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776994053;
	bh=ts3IpbjcbzZ1Ki0CH7Pi2Og3/Pk5tRe1heoUHQ0Vf90=;
	h=To:Subject:From:Date:From;
	b=tyUvpdYTwr9SfjR3wJdH0DUJn7T6wmN4Ya+qqAIEDgg4qwsJqdT5he/q1MlCLyM9m
	 F7qK5KCCi6StaT8cjOBKjGK3f56L4BSVvqftIZCOwAzX8+VV4gtwgqZ8h92uUG0Aad
	 ln6FA/ig/q7dkmpz8InNMtb6AwWxLzvT3UZ62oIa8+JwVQ3TCJ2lRC1IE/1mjqoD2M
	 6KRXqVpCwELtCFAj8qZ36MD0JJPGwP2Z+cQW6sE3R4IjxfJfL8/hBOkMCuxDuJ+QWJ
	 xdbeG0/S+7FnDr0qI0UIKYnIjxXfBiua6T4Km0xnJNcUwFlNPqc+9woZGH75txcial
	 gKgea24zNl2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A941AFDEE59
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699405368.29795.8882805817073309014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c4395765a110dfdfff67ae430a7b4d65ef01de56bf65e23107cea3fa6d047f
Date: Fri, 24 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776994053
