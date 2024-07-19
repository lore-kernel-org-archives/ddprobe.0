Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4F4A35
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721352954; cv=none; b=p+as/WJSQvYgCsKPB3tHF2CV7eyo2HcUmnqm9t/Vh2swJ1GFjPc33bXUnGpc9Ntt4DoH14C8eHnZZ+N4vd0LUTz9ERGYes/13QGLj9D7kJ/HUqNXppF34E5RhvogeZ1XR8penNnAgLRAwbAtYKZVm2rcgiZSbSXJPjYHxtp5KXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721352954; c=relaxed/simple;
	bh=r/BRNze34CaQeVeNDvYBcDtiAEMZhePeD7cx0k/AAaQ=;
	h=To:Subject:From:Message-Id:Date; b=Twv4I3GuGR150pQM0erP1/hLL2zlqYr9cH0V7swCjcPpBPOf4nUqaVUpEcAHISdd0Aiv/9ixa7vTRKDwwezt6e6hmUSPP+Ve42nwxOIPo1ECdFjn7Fy4zASekNL1693ZlLjTCx2gvJc4KBUvTld+XWBYp53AoKm+m4U8qgRWHMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upKiXjE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upKiXjE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCE4C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721352953;
	bh=r/BRNze34CaQeVeNDvYBcDtiAEMZhePeD7cx0k/AAaQ=;
	h=To:Subject:From:Date:From;
	b=upKiXjE1ILO7eHqaPNNGqEGypxP0pCRc4IU7+IIr2bGKVCHT57bAytQh/6xA5rtLE
	 zpsgP8ozPu04jZlV3phVKj9CYQ9xssuGSmwrasTpvIZa30RbHN+7ISQ6G+5B7SlAo0
	 Ot8THl5gHvuf6IqYIRLG4Hgyc3erjWaE+Vr6LFIB1nwVEVHo3mGBdZl4KQdiopUI5Y
	 V1f8LCx0VIvpaxApwOg/s36+zSjM0h3ECn3VsSMORSmNj4YB0dMKzxSPQPffrgBLST
	 3L7kvwFeAfVHkUoQ5NwjsNocjgzygqDx6hSOi/tONLvWEax+9Cc9IlfKICl9cbWJvC
	 eyv2l5357c3lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9495EC3DA61
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135295359.16223.3022785388889233153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95e6264accfc4774f2e52287fb39250407cba3f350213b21129700ee579e30e
Date: Fri, 19 Jul 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721352953
