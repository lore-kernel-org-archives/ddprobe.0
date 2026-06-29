Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A733A7F47
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782725314; cv=none; b=AgPUu4p+Dy7YAbm1k7lDOsDMScw+kUYeHL1r/TSm+eRUtMEH7O5qD9JjzgTpBSQlfFAQQVH4Xj/3+nKtHBqUYrxgFRcbp73H7lh9ZITts4I6nDe0KJVHNeF7DrHgmfvHXsyvQmf5nxlFRXp8lbmu9Sg1nvel2mT7/Xm9BrMranI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782725314; c=relaxed/simple;
	bh=Q6NBnn6sfneO2wk9omRE0LUp9u54VLcrjKrNcZgMfHg=;
	h=To:Subject:From:Message-Id:Date; b=W5JEFxVubrquXAkeK1RsDshTP2hQdErlzy9Jn64A0i3584xipidT5YhR7B4aNLvxoVnc/H73oQhduj+KnRDLIjaMh4sv7BhRkyDKLhPSItxUTQ0W7oRNJYGf0Qn1YYUPcxKX5xkOACACb5e0eS/ABr87p43WjcPI2dNgN9V4b9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyL6KGBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyL6KGBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE59C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782725313;
	bh=Q6NBnn6sfneO2wk9omRE0LUp9u54VLcrjKrNcZgMfHg=;
	h=To:Subject:From:Date:From;
	b=fyL6KGBH52vwZukrNrmHBMlHpQvUFam4AKxNp380jpjnH3JxEIVQAIs3lsMY8wK8O
	 dWhylrdKyvB2CPTcKksYRTqHsNWSPzYm2gc9l3Hl/fW9V0Rk63L0kao3gt/VFfgwr4
	 3L/QEAPT88FDoHy9qfhFQspcacBT629A9zM0Ts+k9EcEWgjXQ7z3ypV7gzYeBekItl
	 UR8mnZnG8Xvbm7xoqMyMC8x5ECiscaErGvJ/AzOdW8gEkCgRvdBR1Sw6O8v+lKfuae
	 jT76UX7kqjgnudrbQ/ctCBRIoKsIyHSeyhlAVsqDdOyrfKobHCDGYZQZKW3l/G4fUz
	 BT+OvBZ/OjvRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2319C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272531372.32224.14414624509458221159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f268df104e4529aad208a3360be1d3d61eec98e736fedfd69efb8a5ec4417e0
Date: Mon, 29 Jun 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782725313
