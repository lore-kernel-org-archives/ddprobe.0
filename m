Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5688832B989
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786075234; cv=none; b=ESkKqqvK4DSOvNdOIEzsjZEXEEG3m5Ygq3HGNc6DxB/GvAZrYzaJl7h0bSMuk8QxptmqFpsmaJuo+IwmDWCKxxU5akKHwHAzT+mPfnjyOL6Y6EC2ePMPReakDeoAIBF6izAvrmYk/StPilNuuAI+/K9eHaZtXO7xHqC4GSayT04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786075234; c=relaxed/simple;
	bh=3a/uVt9q9RMLzu5d8weM3gZcp0+RjM3JN6sCibwzEVA=;
	h=To:Subject:From:Message-Id:Date; b=qT+d2MuH8YRCeqscvh5hvR8lrPdZdQguS2nvzMz1rQFa3WP+6rw04BdFaGO9jzFb4AYU1+DANlzhJHthOV+TIDMmavQb1OKJ/xazex5OxVOvh+GQJbgdxVH/l0071ZIgAaerfW4AoyeXe0Te9qUtPKJ6Wzy89Jx4u6cNCiiUb1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtHwXATF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtHwXATF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D904AC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786075233;
	bh=3a/uVt9q9RMLzu5d8weM3gZcp0+RjM3JN6sCibwzEVA=;
	h=To:Subject:From:Date:From;
	b=WtHwXATFvtnUorbns23EWtHGai6pMlZ0AdWbAxJguOK+IBEiasdtS2htqGtXN8Hh5
	 PgvrVQGD21FjbiVJF304vVXAZLcQvRcaTUiXpZS2K8WR/84nzzsDz/OokmQlvm2i8L
	 IQEysE3HCekleGk183SB3VuHeen8ZBDPboU+MCeAPdKL9waFMpCLT0eozF2BjL9Tfu
	 lqJO8HQR3ESaiXtwIeAhrWww6jRXLWh92xY5a/Z3mOUliLiuvMgxgOd1ljwKBsm1Ng
	 ExcLqCT8ihLgufFrWUIKPYwTybuJWABsJbKH9QL26AbP2J/njQSop7Ym5HZuJCJR/o
	 8NPtourpZM+sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11F1C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607523371.30710.10011270508482320801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b244722b0e7095fe3bbe83c0374bf22461aae2d76c5b1c3a0146ffa43aed0cc0
Date: Fri, 07 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786075233
