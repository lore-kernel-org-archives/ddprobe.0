Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C432E2663
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790038834; cv=none; b=uU3dL08/44MmRd0+anUCgUvn4DexWpgxr5QyZtcsYBhEQ2Ef7Jm7IGlJ13+GM6EGTrBKslTMoC6q0pc1VS2ZkwiDylFS8YecZG+wJY8SNxcyFUH+gDkotsiTWZtxG3R+n+3YpmA29tB6YxGvhTW2vgg6Egb9ohM/6QIIqGBBC44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790038834; c=relaxed/simple;
	bh=AWFeEYuiDUrEKO9NQShjI28zWM+Arrnbu9Ie/j75t6A=;
	h=To:Subject:From:Message-Id:Date; b=s5ghacspu5TkEoYP/sagxia96K0MKRkq1a0b9zmGF/4wkkAEms9OAtLY49f94v+dOSOByA55HrJSY3pLEUwVdZkSv967BAz+V2KqDGv9oRjEqdDsRHjXW4VQKm3uBw92KsPKxiiRVzCbE01ifuxN4fAFP0r2/sE7qrmr17Gjmt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fw9YotjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fw9YotjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790038833;
	bh=AWFeEYuiDUrEKO9NQShjI28zWM+Arrnbu9Ie/j75t6A=;
	h=To:Subject:From:Date:From;
	b=fw9YotjGhMtFMt20nSsY8ec5MWrygXog2Z4DfbRM944mzx0ONQeadx2QKo52vfzb6
	 6NlYbKiiSk5kGDQb3CF4HKJ/S2HbHuTleEy48QV+VUP0u6wk1qBIXZQn8Sp7mmTytR
	 GA6aTPtF+F+UBWdIYcSqCSfxylBqfLma6KNw4iKZZ/Lka0VZ10KMpNY1ZgzDSkQ5bP
	 40gBCZihMkKyb5zuU5ZcWOTRIGySziIqOQR7XBI7mxiIDE7TFKxGFqxwY0fZkeZmUN
	 6aTp+yKQylq35UcN9d+cdqiZ8dZaqZilm6TBajpeHIPbjIWOOh50AnNGS7lNE2B9td
	 QUR0pzI+eK7dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA354C982F0
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003883368.3262.13395991018106822806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490bd90654ea921cb92a22c166417a01cd41af1ac2b71ba9708a8e4c68f4a940
Date: Tue, 22 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790038833
