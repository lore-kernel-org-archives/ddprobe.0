Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D1A21CC64
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750280394; cv=none; b=krUdB4pniZ/aiLuB5rwpgHNt2QbMpgkMGEkB0esYL5Kd9rksw9wt3JCFgJhmas4fWVbyFn019DGH0WP9eucUqGJetM+x0KQrl5QYlerQxbLVErG53wI4KTczBqspvbd/w9eLLxCcqPedszxauJBcUCtznNSWBSfHjJWbM/HqAco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750280394; c=relaxed/simple;
	bh=GgJ9JbXZ+Dy4tRxYb8SbAa37Nk5N6LSWd2I/J7Aja4I=;
	h=To:Subject:From:Message-Id:Date; b=tO+iOwSnjPo/YqX5nKuvhYjinbol3Tty4mRfo8GrRV/BfPh8wXYucuOsM75RlruuyUZckJiU0YL73zKQn1PIZk5LAJeTvuLWVlwulZZVrq/BLbC9Wc08rjhN5eosThqju/Ym8wybhsBnElP9DPQ3ffH18tnIBULepR5t739k16I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY/Oo2cK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IY/Oo2cK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89CFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750280393;
	bh=GgJ9JbXZ+Dy4tRxYb8SbAa37Nk5N6LSWd2I/J7Aja4I=;
	h=To:Subject:From:Date:From;
	b=IY/Oo2cKokUxHyzXDjdmlS+9l8powoDytQitIx9QF25/IDzA/QhgOAbOC2ZVc1bVP
	 4QFIDvMhAI6Gykb+KIWTn/93DGKOz8Mk/5vlsXV/VqKH/iq1p341dz0luM670trO0j
	 jsPw7TgvMhc7Bgmsr8cSlIMnWDdXZlu1ceFjyAeCGYe4fgBu+2NjSSh7jXik6BP5XO
	 QSNZTZ+7mgVKhk3a2e8Y2NGMVrzePRMdLwUZUJ3eV13nU45x6Y9EGrSZ0ptF2tCIbJ
	 G1vYegkWNXBnNsUCuLeL+iMbC8G7A+qQMelEr0jSn/LHjrahFSqcOcB5vfSVoQf9Zg
	 VAweLTF422x/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DDC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028039358.15423.2436870342794688278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856d323ba35f322dfcc22ca661fb64374af45fdbd33b8140fd39e365c0d00145
Date: Wed, 18 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750280393
