Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3728D1EB9E3
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777952254; cv=none; b=a+G+L0TL2EspBI82R50RKZcwiDKZ29vCtyfT3opkCp2RuA5dbaFoSHXXBtyzBet4gmx7muVbeOTRynPdgJnXTIl/tkgCyKJ0R17+eWi9ui3QG6rd4zEo20PfR4FN+GTuzQFFi4MxeUv63hayEiyAHiE39u5MpCAnhZF9pyPXMyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777952254; c=relaxed/simple;
	bh=29Obx5RXRZ3BbXowmgx5B2OEkOWmjmiReSwQHnlgnEM=;
	h=To:Subject:From:Message-Id:Date; b=EoeCQwaOHGIalB3gonIql3ZvLENlcgz0/gFG8EV21hTGh6OH0UF7vkWgE5ZNsELZBV0eWG7Ts3qD5EmWVcEjECbyhNSKvUw0ZuXbV9Evz/P7xKZnhLnaBj2kUv8uf8qXhvzMPMDM4KFzUDd32apLLc4PSJ+rywU+kukgYrqlVZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3cT+n6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3cT+n6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD28C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777952253;
	bh=29Obx5RXRZ3BbXowmgx5B2OEkOWmjmiReSwQHnlgnEM=;
	h=To:Subject:From:Date:From;
	b=j3cT+n6ho7YdGTlGyx2CvEVbqwuw3kHFumpIbXJeoGiavZjsV4cZGBLtwkhOq3z66
	 bmlneJ23g6E9cio1kZJSoW7pOIJHaSuAV2wq67CKMhuzffQ3cngLzrc4996Q86yH2B
	 gCGfLA2tOB5vzTGO4Tay977Rj8QHYHwKuXxYw7NqdNjwbpd2FyyunE+bURkqcdL/U4
	 eT5NE186tDI9rJRSCmchleqTFkJ9WgFHgO78tNzOUc8ucB/5D4H2Fas60hDrDi8CR9
	 pvldQkdsXqw6XZmdOMSnrO/Sm4vCA86zEBObt4mHu5AOssxRBdvfDRHiKFMUoPkK5u
	 uPH2UM76Q8ILQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91DBCD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795225368.3298.6273165587477735408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e7aac8bee5c83e6f21e506eec8d72b4d9f2dea29644e3c07d896d647e28e71
Date: Tue, 05 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777952253
