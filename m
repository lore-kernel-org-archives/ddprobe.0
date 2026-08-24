Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB085391512
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787556634; cv=none; b=h4eAOL0JSr/6v4fFPNRqZ0aLErH4cW+fOEJWMJN4pgx5G86XFnijZG57T80CvCFl2lnJx4sqfe88+7ibSL4dfQyg8Ei3uNUqKDvEn0H7wx0325ZY59JU8q8Kf1ezDILxwhinffobpHCsgqw58WfbRAXHuuDR7JqcRQR7noFn80o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787556634; c=relaxed/simple;
	bh=xMt16pfiryDYdRf/JImYM3jvjL9bO4TnHsBI884kmWw=;
	h=To:Subject:From:Message-Id:Date; b=G8Xah8C4B+YZW/EQkuoRxEF+rgV2QXwid82IwldMy6c1aZUyfM+PujIo12d7yPr1IiLVKBiHPWt7Z0uUQTRd+WgMr3cEHg6+9I7KfryHXU0Uo+T3fTT8nGecDnpedd+ugW3BOHncqybfYsucbEUQZyvo/9IA+lUGMaAgrgcFQjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0nt3g9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0nt3g9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCDDC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787556633;
	bh=xMt16pfiryDYdRf/JImYM3jvjL9bO4TnHsBI884kmWw=;
	h=To:Subject:From:Date:From;
	b=j0nt3g9Epe9/dqnmP/kD+RxRMnqIFCHvY6e4EyhYAgloaMC9sXgY54S7HgwRlVzVO
	 m3fA5mNJtLqGx543JKvFc0Zfo7+EWDxYqsAnGBHYaKxvMFxk7x55ShNsrhw9/NghaY
	 OkugcQu3lGraS6CNh2+grUaITISNoTOZD/lGpipF8gM6PeqGVgUDG/z5ITP7RvqPH7
	 FdKZq1oQA678z04qZ1OIuYdTqYzM9YIdX9F1cZmsnfmYq0ghEfiuARrS4bz8Rh0EHU
	 +4graP8GyPKYqU3b6E2trhBH3Cm7VNAuzxRKQ8bXDifc9k1c3187R4EKexjm6tYCJS
	 plsIHv/cFzVLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B614DC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755663370.17574.8319884834393330453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c476615d6299ccbbc14fc3c4f6a918512d285df24566e2550565442bb33140a
Date: Mon, 24 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787556633
