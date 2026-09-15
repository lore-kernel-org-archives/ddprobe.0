Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6CD49362F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789471234; cv=none; b=uCigsHkCn28ohmTRu8YWDZlqc9TM1231AnvHBRASxVGY130Q2zFxc39nz0zs2wW3v/MN4T+gPwvwhzOVetawS74yap9J6u6PsYqLwqw+oViwpEzH/WbNrZyW0aRL16Z2C5eZhVILSSYvrzkPBTwFtqFM8E3kXSVG9+lv1c0cvaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789471234; c=relaxed/simple;
	bh=tKIuLeq4Dy43CA7ROtFzLqgkk2L5UyOtqE57kR1T9V0=;
	h=To:Subject:From:Message-Id:Date; b=gcNc3K6q4GB45Y0e6uh+0hVHMs3Q0JWZttYXjFE4dVTslX87L1ZzpCrFXayONwVpphqexRYNea2cWeFrCuFHQ6EzeMOngAeVg295RP9VB7UiGwE80ck08fVaujaxeO/ofLuVvXmukpaeT2HpAyfr+viDlYEUSrg0rtPsTvzzEDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYBG5RPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYBG5RPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01ADC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789471233;
	bh=tKIuLeq4Dy43CA7ROtFzLqgkk2L5UyOtqE57kR1T9V0=;
	h=To:Subject:From:Date:From;
	b=eYBG5RPUk5f3L80U7JDErf7RE53HCODjPqyazAp6f0fuMTpz/ad4Rtlk51p4f5p5G
	 Yy8x6Eb8b5cFzNJtznShka7gkuYAIikADYrVI1iWmUapgkraomPhVMLMcSJqOE+5i2
	 u3FqtUn4zfI+XQbX+K8oZJZh4rT2yB1W9/4arYxXYKDQEEIy117/3xMainOHMVFNhQ
	 ZrCjXVP7LCs14z/nsC4isbsXyfTa5VOU0zVoOEzSjeSKlzrVFjt9nkMsM6QaKYOstP
	 C9MSoWId2ij28P2/XCIjrgk13grTnXboXi+goh9WcxYWhejXBzJ95cmsL/la95tafw
	 HnjyrKy4/0aKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69DC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947123368.7813.1175201721329061023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e2eed60d8fca49f0536f5132441829caf8e1fceb42e2ef96049a09b0453ee5
Date: Tue, 15 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789471233
