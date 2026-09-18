Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A66539CCE0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789695634; cv=none; b=UtUgKH+IVF8+KSnTkqM/bwWThgGLi4GJCimdvcorEmnw4xfAvAl36cEZVswj12FHqeBXkYj0J8ryiHBeiS6oORsc9+PDwWRUJfxlj/fj4b+K4yhajgZWmzhVGcp8Yk96I9E/cKs/9JNucnxCvZFOqWKlk8H27R947RvNLiaS6Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789695634; c=relaxed/simple;
	bh=N603F2qFnwL5HM/Kh4H0LXmQJcIj5TZtUiydHcnWXYs=;
	h=To:Subject:From:Message-Id:Date; b=TgWwrVFmy3CofEauwfG7lDVMmssFwG7nJjum4hO814Du6/vzFLfU+3WfAip851xuX5Cp7ouTYHzJ4wYxyABQ22NeBShifyZqPDfMN4PMxql5QF24crzq57Uyuw0fzJfY8phhnuX/mGX6dc3qAN6MleGNvUMKQ8/mwfqcAUX/CBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tV/zA3aB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tV/zA3aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCE3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789695633;
	bh=N603F2qFnwL5HM/Kh4H0LXmQJcIj5TZtUiydHcnWXYs=;
	h=To:Subject:From:Date:From;
	b=tV/zA3aBf3ZJCjCRx2Px3ullqAnmm939MUGi3xu1cowshTs+cKaF1R9PpdOSErk7B
	 G83URTBPjhnXQzvMieS0pixdGzgb6h/oLJxserRKrX1FvZdLljW4MoU8LGL9hiEyjD
	 g3PIf7CVrgsCKD0Fn7hoAGdHz4jlwIW99vf8ts8SpsVoLbDztcyQoi8vI8X9RTI8rw
	 T+rPuZTIisylCOYlIjh3qnyFjd9txeWwCfDLNlpozKFny37a4AnVov/GI3ffUAWbW+
	 NoOw23KmdoPL/wS2NEoFQOzpaEZdR10R5HDZWXfdmrOELsOlnuneEkrl1+ZBuatXz3
	 Mj9iJKrr++/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9623C982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969563368.11060.1081625706057032941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6e9994646680bdd27130d13faf36660726b6248ba74b0684ea57e9772120ef
Date: Fri, 18 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789695633
