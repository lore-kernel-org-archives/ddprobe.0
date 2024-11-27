Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245C818DF86
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732711554; cv=none; b=CDtFXAWyTSNIw1fnoYsrr58pfFQyVaQ03xo2wMk2W9s+wYju53DR2HAp1bxv2+Ms3YeJxnQhVHUyQ87IfUlrfpFNdKNDvAjVwBW1+i3VACjfRvq29roXC0haU7xelcgWwDAc8zeJ15unCHdZZBwJ+14z+YOE8SnqHNYWixd57sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732711554; c=relaxed/simple;
	bh=btECKDHWd1HMfqwF8u3jiyOwWuKc/M5zKCD1yGgoFU0=;
	h=To:Subject:From:Message-Id:Date; b=RhfHtHDaxYi0yg0MDlDR6VPsycxWJWVfCT4s30Ky69t/OTFWGpnR1VeQYXzI9NNe/3FEcCeSMNYVTt7X0xgDjXJnXTcaZwmcfsLiEuE3BUOsg7LZjNLolbpnC3wbIGrDbuEiBL2ljdsG5k8UKmDe5aLGKcySHBRBqibHP7xvkHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+ujwcrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+ujwcrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63AAC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732711553;
	bh=btECKDHWd1HMfqwF8u3jiyOwWuKc/M5zKCD1yGgoFU0=;
	h=To:Subject:From:Date:From;
	b=B+ujwcrWYQYVL0hKSY+KSexgJ7VtsLeldgnFLsqGwY+ButrVDZAEpBwITUxr/3b95
	 uhEDzXztpwZtv007zIvI28TIyvW20xi9Gj7E2TCxdld7+g6+HY+644F1hBbap/i0TG
	 NC2iWXCwCJlQKSbzED8O9n255/3CDWk/ABp11T/ps62PdBqbv8uqR2G7EUZt5qraEm
	 2NegnZAya1oq9YgwJZVuodNQNCFXC3nZb97M2IqPYlC2lzlP7JTEvTKVFF0u9rwwcB
	 qHtLN/JDu3vgCUN+iNTzKXUG588VrCZcYPHgdreVEUYxsMljQk486/I3Xt2LNvCfK0
	 R+U4kOY40fGwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E2D6ACC8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271155358.4330.5603114885300135793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e478fc5406126bad0bee8155c014e98f59ba8def9a3380d09bd4b449724c04af
Date: Wed, 27 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732711553
