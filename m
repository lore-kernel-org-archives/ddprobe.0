Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD8263C74
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745237994; cv=none; b=R61C29rcDpka64B6MuCUwGpJw0kOdPSYj6byS2LiY0FFanyxbANhqAuwYnV47TmnQSwjvta/zp5jDxEVlNKAA+WHYol7uP0T78430of7CKj8ZOz1VYofrK+RiPzC/qkRy2Zt5acKKMhYHt7hgjodYRU+qLg/gy2EIEnJTMlCQfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745237994; c=relaxed/simple;
	bh=vnLcykkeDWJ+sRpj0KH+qi75K59EDyY7DYl5eGfgm0w=;
	h=To:Subject:From:Message-Id:Date; b=Erl46Ji/JpuaQ7iuMWkrPE0F6IMGgihhml8JBOrJnaxRbhKMVG1wcY1tD3ES5RNM4yy/DKaOS0CNX0q+5cdgAkz9gvX9ul1z19TghIiLAdgO9uhrV95vMxEWhgjugUkglk1ekMkYmiwz9m9N07qTKo9G64oxMiXSDmwe1X6Tpbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiBduB79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiBduB79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65EEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745237993;
	bh=vnLcykkeDWJ+sRpj0KH+qi75K59EDyY7DYl5eGfgm0w=;
	h=To:Subject:From:Date:From;
	b=XiBduB79WsdT8ZXwurjmxDghULnlo6bXFcUVFi9u9387S9YYxgzmxggpB0hWJeK7G
	 pM8GFe/NFLljG7cjRq9iufFnPs5ZY8/unHYa4WnLNivAPq9l5r7hbVKuRZW7ICfwKq
	 G/limIlZR3YalrFXBJSiCsFKIIE4tmNr+NmbaKvyX/emdD7oYsVUWfd7N3ZUoNHkYF
	 AwhDvQrrW7bO/+2JI073vSgWkscrfOl9azy3Qy6TMcj23CLQirGiG14B4LkzJ8n2gs
	 vNXBzxjvLX6OuVQqlTJKmVZSygT47MoKj2kyc1Udjj1dm94D/PtCQ9ZWR/tJDb3ymx
	 YZUdvqY1LvNSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A78C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523799359.10931.3361403720365684121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d886406bbacc306f9395b23f1e46da196253a0743d84c2ab7968706bce019d
Date: Mon, 21 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745237993
