Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3480213D638
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758023995; cv=none; b=Y188z3NsFDMccQ1PHeUpBqG4VvA08FSsy7AlnfPMLe194YPCSurPCx2x5QA8RGGbKkFGTi03dxhlluHFyslhZQwMgB7e7b3/pBGmm/fHjSMjRVLEXQd4HVDwCU1H0XTgDzWNBxA5aaPNY61SWTawLlMKFuXMpEC/K4307qvXGQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758023995; c=relaxed/simple;
	bh=QYTmrkeE12btYL36OvU2A14iqU2CfFYqjvMz/JL41N0=;
	h=To:Subject:From:Message-Id:Date; b=m8aEBznzhCj9YOTamLb4fn2AIjiSozZefgIKvjz5KijQX6p5w8D/TtvJUDI2qfOMw07hfQZ38LvlLSC81ReJBuwi7ne7mYUzBoLZ7z9i6+o/njqZiW7N3JGuPpsSe+VVIgI+DNeFfdS1QvC1JX2xaZ3oiPLCymJTcW6IHmUAcbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoxjtOcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoxjtOcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0821C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758023993;
	bh=QYTmrkeE12btYL36OvU2A14iqU2CfFYqjvMz/JL41N0=;
	h=To:Subject:From:Date:From;
	b=YoxjtOcCJlVoWZWm7Alut0WDXQePfqibd5vSPi/v8TRod/jT0A89Kqq8rYqKBnRmG
	 xJW654trg5dYgoOfyn3Sm8krvz+NBmLtYs9AkX8pKCI/bIoVLMVy37Yv6ShhtIejDK
	 d08sbJh3vKlAYUJckzpWHYr8GGB1Q9AF3ZNJtWSZDh2ElGmyfvk5jR3ERtT8NotgPJ
	 aSZA2UvraoBnJ82QkvP7e4wKl916GVjX0hR3F8nRo7tXa8ii9YQQz/Fg6z6Ecmj3xc
	 XSjlm4xoReEbCMtefE0YnyJ0uoveUFh/dHRJKTdynqgkTIwvjWBo6LAchtOIpEe1dg
	 cd57rTYZQMAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB96CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802399357.16892.14312327488922651490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511e045a36bf94569eebac970fc62f2b4a2e38954c0bd22f1136025cf8b532ee
Date: Tue, 16 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758023993
