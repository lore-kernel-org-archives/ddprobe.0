Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F858211706
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744046394; cv=none; b=b/ZLbDkqj5Hi+juKEU82Ag5HURCWS69sRwXJiAW59eiaiWpQOyUbyX6u6JHOAoq0euEELdCXdpWYBzbdYYNLZns6IGTW1qVhM5oh5lCT3FIheNleJymmgl1EnoZSmUDIP2o32+jN0XYFo4WLbQcF5Hfe2gAR/dzXNti42XUwTmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744046394; c=relaxed/simple;
	bh=62VW0jiwwImpPoPK+NVAqJNnR7W3YqUo+3/hyS8miM0=;
	h=To:Subject:From:Message-Id:Date; b=BzN3N7eW1FuH3yuceEhFUHlpQdm0xV9/bdTcJ3cyylMHsK3oqZHuBuB/O9mMJvccJO3wXf+BSTlSe3q/FJMj2Xi48t2I933gHOMvZr1iLlleaAFUzK0a84EotqZtIoKP7BAAjYCgGc1f6H8IduG92a0tZugEXKpjwDo7KyAQ+PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZxScBXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZxScBXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B824AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744046393;
	bh=62VW0jiwwImpPoPK+NVAqJNnR7W3YqUo+3/hyS8miM0=;
	h=To:Subject:From:Date:From;
	b=ZZxScBXdhS/Zhib+AENJCljzJhaBJ1v3rfTMM2geBH64NAjABTfqCu/QP49yy29lw
	 JbwsgK7dxyjqna/4vToJIy+r3ulYKqmSofP5+wkOpnJldKU2m1JHnNsyoos2q1PrlQ
	 pr7KwWOgINWIxC+F8az/A9NGN+z8V9NydxQG+mFMnaefUYc9lnPDSoVvvrqFKt8fRK
	 sWk07S4NTx7+NbSatDb7EW4CttAC3f2Joj37jAnqSt1iXdWi2XOucjag7ffbKk2DcI
	 aPlJC/SMaXldbWGV9Th8ecp+JfdyM9tGUJTbmVVRgwISLNLQiDcKl9/zSNDL5b+6Nt
	 In8y/LwD5PQ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A213EC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404639362.8128.6151426006718568568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f5eabeba958aaddec5ab3ef98967cc7f6804219041622cab427223b0b56529
Date: Mon, 07 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744046393
