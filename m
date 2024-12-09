Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF491990C5
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733772354; cv=none; b=cxmVm6CfZXCiPyM58YO7VtULxal1ScvdWEqf6nAI0m/YiVeF2KqQUezcMfxBXvSZXYHeP65KbyNyOy0zten4kfxwsO4asD2po3C+OhFgj54dwOmy66YmbyWhcr6g/7p6WuDL5Tfd9fQSvGJa/zYXC3w9iW5e2muavDL//0INQCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733772354; c=relaxed/simple;
	bh=Mu9cxLYEcmji8lQfMDDSig4g820Cv6+JE32tURvnGpg=;
	h=To:Subject:From:Message-Id:Date; b=k8L0FUmMYzka2xXQfXqjvUM5tTqUZboi89Wq0wdP5BYV4xfy6Wo9d8+RRkp5l3z3i3yjinmxMVFlnsGLwYnezHpzQzyCz+3G56cr3mYqCsMa1AvhiVULpx+HCQpb40WkbaCbnEyPPO7SKphZEpw2/UcL9N29IJPdt//FeQUMqFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfb7l3LV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfb7l3LV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F14C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733772353;
	bh=Mu9cxLYEcmji8lQfMDDSig4g820Cv6+JE32tURvnGpg=;
	h=To:Subject:From:Date:From;
	b=kfb7l3LV5byuU7a2OVKOL46JKhrxgoidCsFPXbVbMr2ZdS8FDsk6jZvTnhduCMe85
	 JhRz+e7CSGNgbEcz2NYD2Ps0aUptyCi8HPcRr4F3yigIS4TQp3KHEAipIRKy9rPk3i
	 hgG7jz8spZy5N2HcDISVrn56ICLzlb1DvobytZg7xums+ONIcBTNTwW5UWHsYNksGa
	 6V9/l8iCsy2MNq8SDwXvj7GIXbMFFota+2+YSP8AQXyJWWqUtx8EOdo/C1H97ET/Fa
	 sem3qVmlenij9N47TRYLgiDcxgQJS85M2Twea8Wlb9xYkBisd+yWuE22kxClJmhwoJ
	 wamKMKrFWUsSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CC2E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173377235364.23612.8444802831917173040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1f8bb5bc5375b0374050eebaf21324e0dd12629e2b879773bedc692c752bde
Date: Mon, 09 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733772353
