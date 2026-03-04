Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153971A6825
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772588094; cv=none; b=UFtb0/f1jaA+tfae1Ai/z/JrvXdrS7uEPtXR9u+iK/E0nI8jFYpsK59CKi47jADOwUG8glQ8G+snA+iqDGns82ezhQSzYRP8dCYD8qMGhgESE1NhArspJ4Ra/wnKDU5Pm/5uFhsewqFoVlLtm/zreOC1CgS8NiQKwK+hqeM3QGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772588094; c=relaxed/simple;
	bh=fPXj44AczJMweU8gD64RJBt89LN+k/9PLosisQ4U4WE=;
	h=To:Subject:From:Message-Id:Date; b=V/42A2fbvs1UuV+/u0ntIzsghxtNAQWWTWrVq4F8ETdSuN+YEC1Cvw0C85Cr0dsIPlE40CSNGrTDqLZoS42zNdHIH0RW4IBQ2582hfvb1DbkbmyWeDSPCuTmzZejaSPbY+egN76X85JN19UfQsyimAgvmyUm7iWKfI0U7uvHWnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgjLDuVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgjLDuVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA68CC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772588093;
	bh=fPXj44AczJMweU8gD64RJBt89LN+k/9PLosisQ4U4WE=;
	h=To:Subject:From:Date:From;
	b=DgjLDuVwDXt8OAB2GeNdiARJSrkgcdJoOjCNujCxAQ/o3UavvUXYPzxNPlY2nKG+L
	 TDrBN28gs0VmmZjXgoJirqLLWXb+XmNqhisDVZtaH8kuO3EKqf07nMk1u2Nnc7YQPZ
	 I03wsxLmbvDQyATR2UG586oJ27Q5B6/ML2uaCV+beCd6LGpDkBa5iA24AbueBdCT5K
	 Nx4EHvxasDQiT1EUk2KVHhm4zXkjuaWS3J5w+rfFVMhk1F0fml1hLep1IIq0MKysE7
	 t6sk/w7jbQzWKMvUPKJaSjgWfDEaCazSxD9e0jdJV357dmoz7oyk4PWWghbCRwzXIQ
	 hZNXh3s9WTfCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9397CEDEBFF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258809359.29108.4120422789330456189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837b1fde5dc6c5af37a2b0ce489ffffd6a3d932741a88a1cb40cb5c91d764d7f
Date: Wed, 04 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772588093
