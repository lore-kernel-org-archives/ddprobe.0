Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E48256C8B
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778917834; cv=none; b=SmWIcH2W9aELJr220stwvLjJleYnhhfcjUGMcI6Ar3Ao1NIIV1Is+cGWAozNPLpymeNRzyduX6V/JLz1FeIvjVFiQNnXqwPHaYoVdfZsDluVHdyopIxqrBNnwdZnxJhPI591NfgdLHyo8ZczzCkC1AkrkjoOWSvloPMlCYhOyNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778917834; c=relaxed/simple;
	bh=u6hnGoCgxTQOgJ1GC3jIw9sQ5DDGyqtosiU6TVdqbZc=;
	h=To:Subject:From:Message-Id:Date; b=ajFdsCEKq55AfQN0bAzZl7gBKZYyu8BRJby61P8SFID5JrWr1gK92GI8UEKAS0UrP8XCNzLZjDNyxtm5Jjw1yO3rhwofkRJZ1EDYk4XWlSxGJg1r9d7uk0PWhGXbADkNpcUK1OM30H8bXSuCj9NGyBf+KHqut4UFpbIZPD5ukPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1H3dRAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1H3dRAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF64C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778917833;
	bh=u6hnGoCgxTQOgJ1GC3jIw9sQ5DDGyqtosiU6TVdqbZc=;
	h=To:Subject:From:Date:From;
	b=T1H3dRAqr4bdwl43blAFeCX5VUvDKWKYQFqMiDvX3nlppLPUOaeEaG31kUruLC/U5
	 KueEM761Xkh8ju643vRMFAzSF6zDbnY13ueJpU3ZFuEAjBtAAvTRsQRse+b+V0hNO6
	 G7OvkhJdrcKcqL7FdUFN4xg5oXRHzP5E+wN1mSA6BGa4D0EVK2Dz20iNgv/PXoPMhz
	 sapFmqVuiPo1cu9u5Y8tyjlYSve91IjxRkZouoNTmXQnc6ADZ5qAlQd9WDGXKKxkOa
	 N7QRhIk7Sw20kksj4qCYnF5nxw+dDjMZ+ruU2NlnkuvSQ09G0gkkRLi/IZnVCDRUKj
	 9KBTwd7FSyzwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A5FCD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891783370.21008.6795376748954756965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08991fbc44a853431a1b7d43952ad27d2fe23177a7676a5819ccd54f731d20f4
Date: Sat, 16 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778917833
