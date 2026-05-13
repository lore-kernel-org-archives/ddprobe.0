Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269EA38F949
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778671834; cv=none; b=maZ2tz+k6B7gyvV2DgJMCkPIGoIw19VR+W7AgORrB/7xEYryyArTQhGqIkzTSoKwzUOFgyM+NJgu8jZ4XJI87Ci+kGHfStRNkY3Yf9NHl+YRuF1jJ8QQ72SooJGK+n/EK1caZfD6t9yK94UdMBgU7fJ/5qWaImPIq/npVzANMiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778671834; c=relaxed/simple;
	bh=yZuL4Pt5y2q/uLddZFG2319PRANYYz9pWWDctFdRbV8=;
	h=To:Subject:From:Message-Id:Date; b=XZ+WT0A5mLv+5ofoLcQZtkand1958pppHYyb8VUNqnM5KTjHU6Mh/4Olmfvc0phtf+XDbDxR0kIqosPvD69IgVntiG56/7A8ETB/W34F26VP7ig0Sr9fX7C426PJQK+7xCJcaEEvVScdNM6Wnaj3wBH707W5miUAyMEE4Ud/EM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtuaWsws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtuaWsws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA9DC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778671833;
	bh=yZuL4Pt5y2q/uLddZFG2319PRANYYz9pWWDctFdRbV8=;
	h=To:Subject:From:Date:From;
	b=DtuaWswsSZq7JMc6NUCS9uCmDzuw2RgKFlbkG5JcrN1NBbOyAjhYuxSEode3wlV23
	 hSsssOLXTcgzB6CV2m/DXiEVjBV856jGNgtT4ivvE1oiyz/oNBNa9NZLvC7P20kCoH
	 4hr7hunKGYfBxG0xRbukCIX27zlsONWHu63BKEi8Tc6fjb2D1MQOkuRuFmzwn01ixc
	 41RCvGRqWiM/wi2N7rNEbKehvTTxKcQZ2PxJDbGT3kLT3Ux+Tb9XD+7ALM0oKv7J0L
	 K5xHHsI1c+tEu3SQWjyncZvq/zoKF9LwAP5rCHlNmr+HEqlBs1Ru/nhFHPRIq+oaSH
	 7Q7ZeLH0llI1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5DDCD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867183369.22168.3099371284258672105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96d9a5e2ffd6c44442c46e4e2b00e29a8bf43317fe41fdf32c46a650caf0e83
Date: Wed, 13 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778671833
