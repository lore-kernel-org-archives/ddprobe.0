Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D76B1946C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742818194; cv=none; b=mOnrXsMdFecSPw3L2H+cP13herMh5tsO3j7buT7gg/5vgKeTJDSvuQ4d91WuT6nHouvX4yyKwvPDqCm9frVTQv7jP0XOzu7bFjPf6nK+rmkka8dVssid2hiSC8qres8XpkeZTvLEQ7Jm7MXAtn05+gqAxAoKRXWXp5ISUlzqfQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742818194; c=relaxed/simple;
	bh=PIVwjgDlGwFqORKhYBnmrzsCOVIyXbPj+oDGARuDltE=;
	h=To:Subject:From:Message-Id:Date; b=M9RJ91P28PpZysPl4OEAqtqAbj2jHIrilxWXJz/oiJ1jFYg7ARVs3awiDpwf2/YupzaW8oX4LNqR1cVkareF1MvQZdMXCBafiAfuRxWx9ER4lbP+df1t3Jax/0yFQ2OFr02AXu9kBxr8SgLH+cmccEdO5+qoWzqJMywA5zizsik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGiOIcC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGiOIcC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67D5C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742818193;
	bh=PIVwjgDlGwFqORKhYBnmrzsCOVIyXbPj+oDGARuDltE=;
	h=To:Subject:From:Date:From;
	b=CGiOIcC9LO6rgJ+Ad9Awpotv3LQaoKkGY/GnFo9SQ/Hq7lNQmBT8CyolRtqlXXKZq
	 UN6/61ePK91HX1EdpGlkSrOyFgeUN8piRG+W19X885Rzi9jVBcgWL97quLkr1nVHDf
	 Pt4DfbjmAROoLB+7wurcD8W9+rKazUgIt+BSjxornugb4q0pPFOXx2yYvBXQ4ryn0V
	 HGQxtOf8wcGqVyTErNucgEa2Ve7pH8HY+iI1nB22QS1k4H6JVvhYF6NyDQjlKzQZeW
	 QWzCVJSv9tHBJ0KXszZ3AZ2UUvVd1q8kl0Jo/R839PUvPZIQhGmrIKrnCzpGliUgNi
	 +8+i55T8/S9LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9077C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281819368.10658.8000156308858083628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efbff8771d4b3c0c8142427fdb87a088bc3f0d0bffb67789404430995083551
Date: Mon, 24 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742818193
