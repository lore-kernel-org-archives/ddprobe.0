Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F252221281
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751363395; cv=none; b=mRaOndgsJuE83n8+d4yDfR54LfdAJ+VpbE5ZtkeXM1JQ/NUE0whN5rcg+qg0XtO+1HJUw7tUmPAyEsr0bdLqEead5iPr/AnEnO/c2JAFFJ0fQZ8/ciHb1NO5GHHC6BkdwniP9ob8zrUB3Q5Up299dahpvLKMAjWAS5vw06+cR2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751363395; c=relaxed/simple;
	bh=UZckO3M1+htVclpwYGaklp56Fwa/sAcmD5PB1m5z6d8=;
	h=To:Subject:From:Message-Id:Date; b=GugfiBJUk3VqEBwy3ccElbb+rinXrTScQ60b7MY8Ds0akhmycqj5Yo7NpbBnCXaT3quntFNG0Z5f+0v0bUT4qxFH03IPw8ZuOwjY0b/waUrH6rCrR6DBswjzAE2Ataf1Tdusaww9803fB5mteXkKIM5rwF6+aBpOaT6rBT0Pyes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tw2zguTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tw2zguTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2265C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751363393;
	bh=UZckO3M1+htVclpwYGaklp56Fwa/sAcmD5PB1m5z6d8=;
	h=To:Subject:From:Date:From;
	b=tw2zguTBIv295HXON6/1/0ZFK6lWWmfYoBEQuB29W3O80nVboN6f/bwEMYew4/kmB
	 byA2tVqJ2HWt75/RNBNu1FWDa41z4zlzi3OGezaSmR0/Hpgd7EACr1QFw/4gQjlMR0
	 /ZFX//bIb/LiLE1OMYb71M88iYyoj/Xvzod4mpXExJ0imqctLJPLTqzQwblbu3Kv1U
	 VfW0JGYEShG1gNipUq1Z4iaBCNPOs7DLd3AmPWHrvumRb9TXOi+Ht0OMxykBJEmiqo
	 lJZ02kmkYDa0Nta0shvpOtlSvhVvOsrG+Nzsk4ln33pnN4Pnwe5UeraNR9WeItXjS1
	 fny+792VpO7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB36C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136339358.18439.16465013844770798721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f920063e7574be21a6e04f029f1620e427f355517c2b6f954d1be1bde5f93a6
Date: Tue, 01 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751363393
