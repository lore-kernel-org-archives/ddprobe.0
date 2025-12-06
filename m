Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373A1347DD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765059174; cv=none; b=un5JVqStIAnzVqkrWXZfzYrF6C+TRmX6DXuQ+a5wCVJIYncDpob4iCTINA/gc1OhESI/hyHN06N2bCITlyBEHzVwzcHMqXky+KJDN734lcSldNKYBoZ2egh/4HEugjWhTWafvzozTgrk+Yv+3tJy9+/kNnpeX6Os28CImnO9F8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765059174; c=relaxed/simple;
	bh=rJ8sCL70UpP/cZMNFxqTqcJT96/ZuDuae7LEk7KO2Qg=;
	h=To:Subject:From:Message-Id:Date; b=l8n1azgl4tqelSip8hhHDs+DndqCyoFBl6MeDozia0JwNtyk6HQGLFk1PK4N4E2Nq/3Q9heZ/0s8HqKoh5bBvZtTiPqq9QG6CJE+deXLZ5O16EF9D1O7N8AKeOI7f5sZSGyMYwWaklQcSazJDNPDTQ7TNCb0KpYe9ETQ1JXb1nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMMr5xpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMMr5xpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD523C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765059173;
	bh=rJ8sCL70UpP/cZMNFxqTqcJT96/ZuDuae7LEk7KO2Qg=;
	h=To:Subject:From:Date:From;
	b=jMMr5xpvhIy19OLPpGMPwWM42o5q6/2U/p0qsGya2aMGD5lOpeRmLvtsepmwQ1a48
	 nTXdM0CrzLih3aaZ3kFubMdPtOTnXr0SOiYQam46/rRb4KuRl3WBMajyKwn5FJuyH1
	 xB5U/gADK3CECFfBYEv6obYlpob+yu+5bI1GAFsvBx3b5LhMMIGM0v/Go0retUG25u
	 N6hEQUR0ea13hwdXvCgniiMoynWt0rE2jmu4Cy9X4O9zHYy3ivU+5MyHrlsW+VQJNF
	 dACperOypBUyvontHCHCGvQ0u2uP/TmlzABEl2oTPCMyskuuA4gmKGARWDTXZi4/Ar
	 fv3cQSUaGtpIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B3D3B7E1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505917359.4763.8421557482312108756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b795898f18f9e17d6476264beff2fc269726d19fcf6711e3d69aef521926421
Date: Sat, 06 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765059173
