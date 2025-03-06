Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CC7191F75
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741252734; cv=none; b=iSUvhXNYDgYsa4SOVP6MOU9ap5UBLO1lccgzTNDKUTnH5gHPTRUzIdJtQeDcmow2wdEteCNwrnS19/658KTdNYsVPkULRlaFDEgLYj5aHasXd/uCSOWMYYrp5vxVBMupi6PfD5EYVP6nHcHbC4J3rt9JFfaoNNxZZp09rpnjc/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741252734; c=relaxed/simple;
	bh=Te9csNGGQycsbcDopwr8/CEu/StH8BUC5e7oM+o6bcs=;
	h=To:Subject:From:Message-Id:Date; b=nCb0JKbe67PVDgMRRJOQLXjvanjE+s+l+MqcWVSOu38IoDN+9i4wW9sUgz39D4npEW+/yx0EzYH+b9PB9GL9mppzyYKw+V+dnL98mc20dB95z+aOiRq+ZDCOrStpqQ7Fj2erRIX2XeoWCFCV8YqrjZfODPmF/5cEusTuwG/E+p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsRvJp+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsRvJp+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C2CC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741252733;
	bh=Te9csNGGQycsbcDopwr8/CEu/StH8BUC5e7oM+o6bcs=;
	h=To:Subject:From:Date:From;
	b=GsRvJp+SO3lwz65lJNXU+N2VTli67tkcDvH/sQ00nPZXMAphCJb5wc/Z9mRCxtdGx
	 kljUo4Iz9yvlIYblCqFmBEC7Edf5bQEhYgz5qSBLbqJyJfuGcsJkkSgxwrpWqZMtTP
	 xfb30kUrsVAr2zluSqsxqhYZA/f7MM5OXvDnhPyGDRcqA5004Mb91y1BysOWNmJaaw
	 xfryLUrVyEs1p9zGZQYt1mGrilyB3S7EPHFaNWEf3B3nRbpNMjU7qOJOKd3oOqbr1E
	 uhXT8lax1XQksKLXWFu0deVQEpTfUqxEntWXnFOh/MoSiaBQousNz/kRTZ0HGPUjzP
	 jnGHJ/O0yKDFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F79C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125273361.16448.17624724059768542092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29a898098aea3fd834d1061fff9d6963bb76c55a7da062fe7c52deb5704a24f
Date: Thu, 06 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741252733
