Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F796313E2B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773814494; cv=none; b=LPv+0ZnuXNc9BrGdjlyl++uMDgZivAq97ejHgsePsQ7xtZM6WEzWnsk2bK+7N1yGGpDmZ0wzaxkDC9Rqvn8ba0XD03N7ADSumBCSzOHZXdqE3wF1+WvFqYtNsVB0+c3/HnjngBeHB8+7Jc1r2N3mWLVpgnB4SyV1XwWa0/tG/rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773814494; c=relaxed/simple;
	bh=vu+/fH9a3WUL9fRSKbqDGrGTVE44UXtA84OJgtGUMzQ=;
	h=To:Subject:From:Message-Id:Date; b=iLou/HUCHDWcdEYq0y05KCh6Sm7JoEVtMgznV+QlsJnEuzPgxiwkaXjjmBfCbjJF9zmFpZK/z14plijBgtMe63GJMYFpEY+aUBsx6OLQlMvAQ1cN7pC2orhOg59B7Yn5OGLTng4KEJYy36TWrtQpijqhGrRwtH/WP81gwqN6gUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXiMNOiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXiMNOiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5426C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773814493;
	bh=vu+/fH9a3WUL9fRSKbqDGrGTVE44UXtA84OJgtGUMzQ=;
	h=To:Subject:From:Date:From;
	b=QXiMNOiHVzsPNFe9NB/lwQWhAhE9nz32/ee/z9O65DvIPoV+uoeShSaxjZDF02GIg
	 EGuIPWJx/1GemAP79nuOwBOjcXlPrw2/1VzCPc8tTw1spsqfF9u/rzCiWr39TzmzDf
	 71n2+jaCL6VbN5ZW2pNLSao3zRu2NClPqhhEK8Igzo2CYWJ3X7G69jc5jlbeKUiPhP
	 VI+kDViXh3Nzul2nkVcCVcnaHhWH0t9vtDKqWzSzwogrpHR+EjwgowwKRj1F32a+dj
	 9AA4PuOJHzHDUrTPL+nbmJM8QGJbFVWEaKYDve4w4zBZikAVvkxPVdQZhhlmWU0285
	 AoPOPnltHPvOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D5FCD0BE
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381449357.29112.12326849171047445204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb585fe4e1fc51448598c5847cc0a4d39ef21f7cb28d60ff9ea853615f207237
Date: Wed, 18 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773814493
