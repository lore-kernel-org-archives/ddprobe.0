Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F82E136A
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707445097; cv=none; b=djEYTE74JOwB9z7oYRI9PuOAinDM9JC5382THZ12svJ+H1FP5WmuyhcELNnD+H4X08925ZfIFqSAoTQY/cb0NKiSN5JJsgq+UkTTg3Pc2ovzVntYSwsoTa4bAQDYSi4UOYX0ETxwdpkKCZAMx3jSEW1l38C9/rPc2YplumEfCZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707445097; c=relaxed/simple;
	bh=8lhgAt/x6WUPvGKDGLctZTssKGqtUIvBvpQKWFvrR6w=;
	h=To:Subject:From:Message-Id:Date; b=jsb3P+kyz+10wuHjrFnrlj/bm8SXMhblGpHRY/WvtJEfHJBmortmkwAIIE0E75FxSfgvc+UhLAIml1P5SFFUsB1G2IcdYKRNC5LE1PEaMJtGsmcMdtX6LhRT3qdjXTjEj6Fr5FuC3OZ+qn8Qr6HFYPCG7ZPntnFHonC+vUl06/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e53jnyn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e53jnyn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EF0C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707445096;
	bh=8lhgAt/x6WUPvGKDGLctZTssKGqtUIvBvpQKWFvrR6w=;
	h=To:Subject:From:Date:From;
	b=e53jnyn08039RIeSBKrZMPjkANQaoyS+ff/aYChd030aJcGkX438fwMKaGuTX2vSZ
	 A9VmML91H2x4qGKBKccacRRY24/Mwyy/vkveK1c9BYa6RKw/RUji9kb2P4C4P3MzkG
	 vVxbCwGVuZ57MB4IQwoJArFZHr1fxV1QJOy8tbIIES5HKHGIfgxJKt8eu8HRvbOuFB
	 a9lWGQg4HLRm3SraTZBN04thql1LezwPSlszY88CK2gilfdDe3M9tOZdHqpViqJB4x
	 g9Z8dYvosNC1iDV0vk3JXAe0BXxlgaRZdkPOujkSjQxiqrTi1u73L8AFEtAfUg/e6k
	 M/NNKbxtft1pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659BFC48260
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170744509639.19537.1983224272506688069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e308b018cb4a4fc6afbb2a6419d18b40fdd59dec24d569296b7a24efe3f750ae
Date: Fri, 09 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707445096
