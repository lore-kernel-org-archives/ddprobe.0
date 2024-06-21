Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7E05B1E0
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718946743; cv=none; b=qVHgrG/6YNLurSJG/iHs1dgoi/zJP3JPMZgRijSjOFnSzYepc0iy5LS3NUhTa61YYfn71LAaRkrfFb1ygY72GY2Dwh5AXgaIjoBLqlKraWhfslUXCsH+SJYkyGYYzc8Jw5kW4DVN+F24dn5aGL7oIVk8PVct0UoK7h2AHTGHeq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718946743; c=relaxed/simple;
	bh=A+v4Ag9aUd4zHEDNrqrS0AthJdONI2hrKd4ZOiKTB08=;
	h=To:Subject:From:Message-Id:Date; b=PBTek5KnosR4twnXqQD186cHOdPOX0a/Z4+QjTnZK6YotVbt7qMmDDnPNJ5q1MT6THehlD/d1/xMIJggnHlLzijbPbqumRlqS9PqeHGE+CuTtxlfnIGVBhJCkfOr/FYriGkTfUMA1J6YPHnxAF8Q8Hub5wW1LB5KalTHDH3MEFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW0Tf3Zm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jW0Tf3Zm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF09BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718946742;
	bh=A+v4Ag9aUd4zHEDNrqrS0AthJdONI2hrKd4ZOiKTB08=;
	h=To:Subject:From:Date:From;
	b=jW0Tf3ZmCip/6FBG2H31X6KwLQcvzzZdtosYBj6d0no1kVpEh3wKxGMcaR0QD7n3Y
	 XlQTlMn0m+IsUFTUCzodKMYAIDxub8bYKnKkKAls+oaexUWIGNNmBvCMawKItmq/PQ
	 jwjX500UuoRtj0RQLS9xkc60FO2BItvW1qXfs/NYypLvsLYA0f50Yd2VjOXpFoSN0G
	 7ikhiCprx4BsDgZiBxJhtMIz/9kDo/VgadUP1Vgg7qplubktY0xQCE0lgWMbt25F/8
	 kVkwaWxXq8IBEPFeHxiy/7HGT3+wJHwhNbhnGxdF6anza1xhDv1SYcRcvlbTl1kgQu
	 ufj7Ybo+0C2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB876C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894674279.21312.10541461305411074730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb7ab6a05967b619531050dfb530e7f19cc5efa04e775ca45dd1c81f8ba12a6
Date: Fri, 21 Jun 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718946742
