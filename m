Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4967C212F8A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743995394; cv=none; b=upwsqJTW5xXKRnNEMfo1G/KEjn5mwpFgNOaIVoL2GX5UyInsG6/zYrHgrG4131ZrAktEE/aBAQ5+AWGRj19+WjcsMoLkMUT4kE68GLxj29l0mbIzarz2mUlUL9MwBCXntd926LocAGnAMFG+naTt2WZfQYno7gmVh0qXY5KA5YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743995394; c=relaxed/simple;
	bh=ERQvIntqN1MIcy/uDiewZGLTHhSU3e0cZjooC0oaUxA=;
	h=To:Subject:From:Message-Id:Date; b=DHjwbVtP/x4OkjfN0J9jUcpcrg2v6df9pxz82qUuV0WIVXVCrNrXhpnt2hWCivwy2D78O5FZubVifb2O2A5o1I0t3VWmR2ZVuBv2Jc7jJtR65d9/hf52e0XUPki9mSP//BtWmJMFpxuGXNtYroEjlrE2aufSiwMRF/FwWL/ldnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5Sf0p9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5Sf0p9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0681C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743995393;
	bh=ERQvIntqN1MIcy/uDiewZGLTHhSU3e0cZjooC0oaUxA=;
	h=To:Subject:From:Date:From;
	b=l5Sf0p9DaVb+CzG3TZAcFaEpPATCuoIc0m+NvdHYglNRbzCh0f2BHQNjzV+casyan
	 UnbxxScNq72AGpgnY97krHf7HbhDV7fbr/jD4Y9cGoIMjP4WklQjdjV7lQlniWQbJz
	 3GOud14fS8fG06/F9NsbiuPnkn9rQq13JVleswfmugBGntJBhOoNgXwOYplNU/vM0L
	 Nt1ldmOJ6NWc/CNH3w2vJqmISK+l1+bkHnag6QGxguv5xU4aTXpw5BIexHnh1K5gxq
	 +cpo5LFTGH7ZKVYwBBEEd50IKMmrvj7ak6GUY/Rp6wPPqjbMxcR29boT/CNvLkO8DT
	 x8b07ugbMk7jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAB6C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399539363.31471.1723040037164522514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18a1c7d59f8a4e0fbec0c6353d673d5cff194eb3b3a20dd739f9f569b80bec1
Date: Mon, 07 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743995393
