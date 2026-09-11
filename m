Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589681A6809
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789087834; cv=none; b=G05it8fLN4zsx6wjxPjnwgchonsxnS+Ec4a1rXMFlwH9DsJsCTrsl3/APNSk3nlp6ztTfLM90LyJhtM1lesN1Xqu3vcNzm4hvzGTbJcdnq3xJHc0zWdw1UC8GUhPYYFgGHyz1O5PCdfAUvD2TdLtIE9i9QxniLxJkCVtyuLMChQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789087834; c=relaxed/simple;
	bh=vfCWnIhxMqBYR1Mo84K244189N8dk6f1xvlbd7HxRjI=;
	h=To:Subject:From:Message-Id:Date; b=acQXRV9rev2lyzFXD6b3r6LsYdyU4kaMvh4VoXPQq2QDGzaXNnQXevVir+eSuKj5DKPGssRvrDLbWth4PztRhxKYyor4FndDq51sHFCBc8gyDvIx65fWpw4a4ZD3uPoAKD5ONUFW70L/SGF/esEJgCIG3jZdVF8attHwre9nP7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myircfyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myircfyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC4FC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789087833;
	bh=vfCWnIhxMqBYR1Mo84K244189N8dk6f1xvlbd7HxRjI=;
	h=To:Subject:From:Date:From;
	b=myircfyBAHtI6vFRwq/KMmGvdCruRCVSt9YoBJn8+JG24QMbGUFA9Qm7MfDsCqsiD
	 PbfUijmaaN0Ly3lQC/AtXmMpVt58OIqoDSuO6woOweuSRqT4Kuwr06Ig+Zvznmx99/
	 Actz+5CJO8PxHPI51ud2Bb+VUC+yqBbsfmC+MXPvuSbuXtq4yFuhHDd5t9LjFJQV4J
	 kEYJM0K1kjPvN9lyA7HPKmH4l0Qq8VG1eUiwS45t4FVa8amN8SOxFke4GT4qDjmJf4
	 AvyzHY01w9ZoiRg4/FC0Hl/cexpTYqPo86EIHpLKQw1hamPyUf3dFhi/HBQHbbHYkx
	 e2+xSC3peVroA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B117AC88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908783370.29543.15243759372430435541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ad25ac600960202cddb8393ef42a9664e2785158de8961458d99a90b52f6a0
Date: Fri, 11 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789087833
