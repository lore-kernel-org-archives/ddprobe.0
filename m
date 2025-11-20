Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB22221D92
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763622114; cv=none; b=ZO721S5UH9sZmrz8jla9x7qDS7J6T10PyL3gni8+yR+A8l3wd7oz8OPEsNpcGPK9JbUE72MCCmUauzKN2eIlNupZRklnCodTuG2UrR8OT+OnyNqa+hMjzXO9j84Cr0pBnWxiF1OcuGLP59mZfloLeXDcEFEEnOk8M+gFn9F98Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763622114; c=relaxed/simple;
	bh=GqrAxywjFYQrOGdHopGEBwGjvK3DPe1azSflgDiJRFM=;
	h=To:Subject:From:Message-Id:Date; b=gxzz2iyoTjpButMgfbCj3cARbWYc6WBUhvhefr+a6jQJdu6pI8AOTeVNpcJiWyYhgxDH1JbkDGx6JP0FCjOYXZRrX56RniUpAIf2GESbWITbmHvVmktX/88WqGvZbvm48j+/mMbkqtdM+iGEabbRUxk4ERFyoFaQH7Q3LL5xu84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3+bm8oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3+bm8oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB39C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763622113;
	bh=GqrAxywjFYQrOGdHopGEBwGjvK3DPe1azSflgDiJRFM=;
	h=To:Subject:From:Date:From;
	b=U3+bm8ojm/vpzUxakDfT1mxaq/It8ISbIxSqtUq28aQnyqx89lsVSKWp0+LNHMBAP
	 B4wHsYWXhLQB0rQyaomBoNi+XGHt82X7jeC/6Wcf2kzN6t7DMbSFHffTMjSQ3hUmME
	 SnmqMvIDMefPA+15HsgXvdrYrTUPzuZR/Jv2ZQf6fXSenT75HaFcoHAM5HehOUDJ22
	 1barHug3Kxa2MTA2MJxqcS1Y3LLQNg9RvDMEGu4oteyKzJZokQkUvuIBSy9xBxZs/T
	 VunPztLmpuHJU/kFyojNSMRUl4EI4TdlZAJ///3+PehRJO41i9Tm0ZlP/M23Vzy9L4
	 ltfdBrC7jmeJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97827CF8545
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362211358.31157.14301608154252994402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c979dfbae56311ef5a4fefa377d2e7963788222f59f531855c850c6dbae51ff
Date: Thu, 20 Nov 2025 07:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763622113
