Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BF3271451
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758454194; cv=none; b=CO5ujdqrz4fxGbw7nCwUyNNoJVSn0DeFZqxQuAFNtwQAYZYcXbh1emkDb2MwIxBuq9i3EPFc0i6VVA9dVIwsmOJu+mJPTfncVDSwEXvpe1K6Tpq735PjnSrKkAeAqozIKFG5oEdk55ltXorrjJzC14Cy4vEXu13WjS7NLhd6s5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758454194; c=relaxed/simple;
	bh=llFPY1VqfylBsjod9nrXuUWpYXYL8PAS4jGapamuqfs=;
	h=To:Subject:From:Message-Id:Date; b=sj+5MfvTyJLafiXT3J1fxh3A5RZSCnYwyij63tFWKlmj7z65jr5ERJjGZBWx2xTcc/K8mql4h0GCbhdWBPblPqjvKLol+4wbQvWYc9mUslOFDwVL6JnrEqQ7OSP3q+BEkl94VUdgK6xVkDbdkmOY9T0tSk72nNtCPaJuTIzFsLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZ0aF9Zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZ0aF9Zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB81C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758454193;
	bh=llFPY1VqfylBsjod9nrXuUWpYXYL8PAS4jGapamuqfs=;
	h=To:Subject:From:Date:From;
	b=MZ0aF9ZxzQenyPfuQBxDcAoWSr0zESPXDgcF5FHWRuLlkKyF0EWuOgfZYcE/LYu0U
	 TEWl+lTK4Srfsz9RTg43/O3GFjTcjwrL9fOgtgBayqhabtLXUZ1/MQYovtHkvvteL6
	 UNuwxlBI3ykCiWc6HhGmh+bnvqk/D9gYeHC8ErGUib53BNmop89voT4QSIUTj69kiy
	 blsnvO7hPSoXOfr8Me/WEbhHcq7+aKFnXO4cdHUc9Ih3AgMWlQmOnD4OElHksC0rYY
	 Ga8XTf3NCB2hG6hQtZa9aembGyS7OZQaYQN+FM/kkTJ4clumO38K/XQuTogknZIK8Z
	 tWdnBE9ElPcHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7ADCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845419357.19971.6622034644934089805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3261a9a805247851441e17ce03a14bd77a64a6d46e4934838a0c283f9b15f855
Date: Sun, 21 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758454193
