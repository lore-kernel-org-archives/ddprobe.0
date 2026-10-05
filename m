Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B86D137923
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791168634; cv=none; b=b+UMU/sttRb8ZcUcFhijnNF5HbJXyIr38wDu8TWqc5/SRHmMezcS/suJ4ekhaXr6oMN/A1eHzFkSGLiclWuqR7s1JDgSsLlhvvLYlIyu1vJa7Ip0zAciS8dc/ui7OXSdZVlfZDsgmv8U0V4RTPC6xmZXcejt/l3M6cGwxGaKrgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791168634; c=relaxed/simple;
	bh=jos2Kxr8DsXLjFhAL5Sh6h/XewHzfAyCseubVDvA9c8=;
	h=To:Subject:From:Message-Id:Date; b=EM9jTWaxqPVciQYWIUJ04TW6WW8Tx6UEN/V9uc4JLGv0HROcToujfMwUoXDW5zgtsPDA4nrvK3OqaWx+g8WtfyJqzMdv+PnTtB1KJF52PuTtaVFAGWo6tOAQQ7kYMBi7b4xDUFMMJw4L7hdbJZq8aXCpnLRH6iCmmZxrUSxY4rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pP66cwkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pP66cwkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C83C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791168633;
	bh=jos2Kxr8DsXLjFhAL5Sh6h/XewHzfAyCseubVDvA9c8=;
	h=To:Subject:From:Date:From;
	b=pP66cwkBw33xMQ2afDEm7DQSE7p5ePM9QSo9bV7+ly8ihWZhku3104l6H473XHmNX
	 VhnhBy89aHEAar4VtdAaqMmcmuTJ4cwy+usNZVXgYzbHd2bvOHa6H/e8P1TmVtbBlx
	 UzD25e1S2t1g43PfkL1QpEQwGMnNel9hTZ57ByAreKfC/i2c7wMVwowkyJ/5qa7NUA
	 EyLanlG2zJIcOXSIrzhvDmNGOSt0n5jjQV706457EICMmvv/1pk+11lk88NQ1ZIMV5
	 Vi5sX8iLyG/pjNsRHV+yb9VGgCaeoYWIHoVk31OwoFVe3SsS8sY0HA1baNUoiHPXOe
	 NgxGoq+1epHcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18F0CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116863369.12835.12571022783950687956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13954f8ea7043f2202130ca1b418329efce58a655c848c2fe88dacc67798e28c
Date: Mon, 05 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791168633
