Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC5757F3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730025354; cv=none; b=C+9HW/v+udftkwFEjmhkqRMFXNhirSy4Nd2Erad5YTwlH4sH62HJ1bjlmBZ+n7NzXg5iTJvaMHgLKEXYVmaBZVWg+bxL6EWzavpRIN+sPCMqU55LzsXc+HNau6Ta4+xM3IC1U8cseqrNDMWd5/R3qy+WHba4daVx05APio9qKCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730025354; c=relaxed/simple;
	bh=aucyDb9el/CKJ0Ih9lhy3fth8BsjqhK5SAOEMdStnjo=;
	h=To:Subject:From:Message-Id:Date; b=RJbGBI2ZuRevRB1PVEa5WVWwpTy0F4ndzxGQxd+fSrNJ4xuyeozSWUw+EzZyi3Iz7glKUfjg0EwWSd2fNGIlQVoIR6o5msWy5JZaP5QcuMV8ddetPG3Sn1w2Rj3V7pOYD9k309RJbq2kB4STFyWeqVO8I2+XOjvOyubjNs9HFII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfNc4i1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfNc4i1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF90EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730025353;
	bh=aucyDb9el/CKJ0Ih9lhy3fth8BsjqhK5SAOEMdStnjo=;
	h=To:Subject:From:Date:From;
	b=hfNc4i1FBiEdS3lGX3Vpg9jWWp1el2oG+eOein9kqVQvT/yFwZQxybDM5zD3ZrRop
	 IO7iHjThl+FZv09ZaGXt/+xAb/Zxaz8Dq9ycfpX/IeliZTS94Chxu3+cGLHzEwTnZH
	 VUH2OiTTfFlCi08Kxb9+8PDUHriP3iNvpEef/seH/kkpMxe49SDyRAsM1vJ6T3am6u
	 FZPe1Cedym5SffZRPtkNGxTmkMQ6dF7lgwa7tCeHQdhQYbB0apyd2FFjjBhBmRwnxp
	 hBH2mNQcsbUNfZq/IQur1VGST5AThUZZyUEzYyUqwmPzYW1r+PnWf+73ClcnHps8wp
	 Ce/LrkEIOrpmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E89BD10C1B
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002535363.22533.12382810230931586306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2f6d05c7bf899da6ac52836d2b665a97f895d780a4a448dca3b74024d0bd8b
Date: Sun, 27 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730025353
