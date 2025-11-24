Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259EE29B766
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763956914; cv=none; b=fA/lm40j8Yduabx6B7hr3EdzxyVg7foioAZjzYJTOd5QGoDqTQBXr1FqumjUUoFhIxwjHJe+/dVEDQEI0vXrnWu2Tcu66x7l7qeR+8c53MgjEhkzjGRbpzLk3DkyhEzB6Zg4m10CxF9hmNKUDYy8MitWJJkfYdBEal/VGkCAloc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763956914; c=relaxed/simple;
	bh=Dj/69AGtDrUv/FJR6QPgkkqXczJFTvUpBYufStuTFZA=;
	h=To:Subject:From:Message-Id:Date; b=e0ZrwPKaQGGEMAaqfktSY5ltotk5LLztpxeNsDpu83HT4ahMt8dkmnRUdcw6YnbchKIPLJVA0W4aIaTZ2SU06/+Nf08UO3bS6ddqzUeuU862nITDxjTr9ex6Em3ZT9t7wwov4bOYoWy3NbHQwydmyyfGUDtpVFX8s2UJxtLQpvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKNMLQ0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKNMLQ0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A432DC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763956913;
	bh=Dj/69AGtDrUv/FJR6QPgkkqXczJFTvUpBYufStuTFZA=;
	h=To:Subject:From:Date:From;
	b=pKNMLQ0Y7pGAsUpUd29N5flDnYehtfh/q3gHA9YGSlvuuNI+z/INvDA7NXvvuPEP/
	 riJx09uYxQejpdVlJInGvRoFEGCWACsa2jt/GtWxb3vCBPn8wrc/VhIq4K8LM5tOaV
	 Cl0SEGwlecGfrrtHIFKCQy8wi6zP3npk/2jLTtxwu4fsF36lr2aTEWRw7crMrW2v3k
	 HbBkelVCNeZgGjZ5qm/GEIpzdFEicUD29H9A1MvvtJLZ7sgbHbWiaWgig4jQrsrATZ
	 Kj0T5YL/9ntH6EpvZXJwu/pR/HQxCSz93z8sUcL1h27E5L2ZTtGvoNTlAQo7Viad40
	 cq1Zi+pGjOMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90607CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395691358.19124.12872456688424739319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71014fae8993f2198287d9ce9f53af8cb8630cf05858c1fd370a0494b888a82a
Date: Mon, 24 Nov 2025 04:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763956913
