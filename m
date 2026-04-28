Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA6C30596F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777357054; cv=none; b=L1NkoH+RUai7QCXpllggnx6vdjCR1viWRMfksHSWMuSAlSDf1kGpKif542KOTCZ3L7tgnkp9wW8u0Y/oIGuMrnD0idnuXhikg6zZSyn1SKrExCJMcEwytKhDVPMzwGFBE+/5tme0TO5njj9WZyGNdyeDgHVoQ7aqr7eIZFt7RYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777357054; c=relaxed/simple;
	bh=yp5hh1O7/GaF6mLRzoe0QOjcm604wYa30A6uqalPYh0=;
	h=To:Subject:From:Message-Id:Date; b=FydOUFxAHNqVSwO/+naV5aQmxTWW0QU4Tu99I6fj7ay8GMrT4k5opJp939kEAAVV9EyBpFmTuwb7m9ElPf0tVFibsKrNbuVWyI7pi0gY5dXFKEcsa6kuYq3fDqVI7yXhAHiIhy36cqI/7/upnOHQy7Q6HVx79CEsn4LoTCnZUlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJVSLBh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJVSLBh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92B2C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357053;
	bh=yp5hh1O7/GaF6mLRzoe0QOjcm604wYa30A6uqalPYh0=;
	h=To:Subject:From:Date:From;
	b=eJVSLBh4un4RnTMsf1B+EMD1oB5PEcQq28QkepRTyMSbFhVpf8fxP8MSvHWf/kXia
	 hegxd7r6RKZWmGDvwchlKRNIAutgtA3C1yUuV47U83yJlbC4vwAzlSRmGTmMWLdmJg
	 K55oztO3TdiNzAeAJl3EYS8mWaeSY/HwlV0ae4XcjXF0ZlkBbVnoWnXA1GiLNte7JO
	 hPPRQIZJLY63C6y/tEIvqqXokPbZa4LKr5qgHk7d6D5OFCl33Rks+1JoSjAEg9lX2s
	 QSv7n7B997Ae3XkZNNbdbWYzUt/HOVzoeApxKzE3eALnBv/oVzd51ba5SYLz/J5rKy
	 D+YwJmO4LdYhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB078FF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735705369.13001.13784814963130066159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815ed4d879f691cb26213b888c69601e22465a665c9762a8d50f7d0c43665d7d
Date: Tue, 28 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777357053
