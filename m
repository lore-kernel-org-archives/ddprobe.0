Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CF63E1686
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784609914; cv=none; b=a3mSN/VVHsBcY0O2KIr9sdpEwU9fuCZ1KfO8fLgrvUyihN0dQ6/vQ5pT244OXK6apGDK0tFP2AU2oVwbZeKp8OPZWvbvXA97//M8xgTWPAwNXhEJy5YuKaopmVxeJh2hitpwxpz86A6YwbuvVmq3VS5r/Wlfu1r52KglOMqAehY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784609914; c=relaxed/simple;
	bh=XaR1Dv16bmODN4x2bd+I0aUcPEPyZec1Dib3uxykOEU=;
	h=To:Subject:From:Message-Id:Date; b=uBHIWnhueEglW7WmZYUoNOUHp2gEA27mvjeK9kCME1N/KAEGE/RavOAgfScWGVbGxmxQyRTCfz0eYNEQ2QaLtOhCRqn/520jFTSCDVd9ABfh2aiXA9uOtmCK4qOyH3nkvBQYdiggW67V0klMIFXSOqeUC1Dx/sm0OBAIJgXh9mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIWN2rbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIWN2rbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A12C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784609913;
	bh=XaR1Dv16bmODN4x2bd+I0aUcPEPyZec1Dib3uxykOEU=;
	h=To:Subject:From:Date:From;
	b=lIWN2rbn35Ev2paTDudSS5PXFv7KGYwOoHjP6oXIe+2TjYynNKylToerClXMvoYuz
	 c1UEi6Zq9RBcCFBndOqqRyJ3FvAKkq+59rKTI95JJilChmwLRpHDgVosZ8lCMB1tzt
	 3R0rqAOVxbnya2pBQ21ZvC51YjOnPorVqScGiD1C63K+91+paYIPtuiYdScDU6jJfX
	 cXJfV/zzTXab9TDzKCsXPuut3cZ2e22/xwp2cAaHhG5DOYlpLDfPNRc/J6EaO8bAAr
	 7LOMH2jBBbejzJdTmcQQnOjxgfQ9ay6FxB0+ItWZOAtzO7EMu0UJ016qqxsFt4+Kon
	 16WRvBn3s78MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B191BC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460991371.14651.8740023442944347720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5eae691d4335eb853e754a6f1a4dd79c21d29c139758698e4e59d96f1f7230
Date: Tue, 21 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784609913
