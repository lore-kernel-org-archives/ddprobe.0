Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3120D7083B
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731467754; cv=none; b=AN+fm5YuovOzd6Sdb0c1kgn8EUhyXegNI9sol2/2Xmnu9qWntKPCnTv+PX+rbqyjVTHjEwzQ4MUvE45h0IWwJzUKz7UrR8nxoCvKon2q4zgKfMyhRf/acO7dQaiQ5pY5AJbG1N/tVkNPbG+8gLScqICSx9Lka1IjUJ5K3OJwY8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731467754; c=relaxed/simple;
	bh=nvQZN1bUHdgtek/wF73j/j2sSy4YjSzI4IqxnMcSLSY=;
	h=To:Subject:From:Message-Id:Date; b=M8fBpf1XjDis2c/ByKR521DXxT8EupFYw76IwjqTqNMg2ZTn8wkTBoeT3P8um07RETZTvzJ1b9iL6KZOV1vXs9eWB97sJG6jpNzCJqYa3BQu8so0+bmbE3jTlkoJaBZnqtsu25Acagu5W0Zvq7wIlt6GCsjuL8kbAkNy3keNTXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doYy75m7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doYy75m7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0327C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731467753;
	bh=nvQZN1bUHdgtek/wF73j/j2sSy4YjSzI4IqxnMcSLSY=;
	h=To:Subject:From:Date:From;
	b=doYy75m7Stdu7q/dwaNoWpr0nA5CHwi7dqNt7S8SrUnGN0nx+RuUI1keUnYs9d1+U
	 M4vOIByZKXJMEzMygy5EJ5ZsHwX3C39mX969iMg1oyp0BI5ZOzBST/SkDSvtD2/9ug
	 FR5ldkmCiHLv3oh9rFQ38JX5/9tZhXM11Fg4WBOgAp9Cn7l82n1ZDkUdl3nkCIVKlL
	 kctLvtx3FYWusfBSmfjvLmlz0RTSg1xU4bagx+TzEArD0FkIsI2JGWmczaWJu2pc6W
	 z4pXXgK9KZwY1OMXZwDuTOdH40vJK7MBeA7bvnrewtgHEGFNCS88KTM4JFujrcoLre
	 1mQnQBSUeIW5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B2D597CA
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173146775359.14386.4596743499899276864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588a8b307448425ee77b1fa215370548d364926e1ae617ab3e3da5e943ca6816
Date: Wed, 13 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731467753
