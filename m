Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768647DD6B
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788992434; cv=none; b=XpUPL0zQVa1ilBvfHdub8fFQQ6D72qbGK2k9ZMvK76yx8TTMM498k6/apMDitYvLHCxY5ANSAiStil9nWgFwk+6sEH0rLdGrkAeyaTwqe0T2tC9982DxLpdIwNzTGdbtn1mYMk2Krgrj2jkocKrzceg7YE+28unBkwua2u7Razo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788992434; c=relaxed/simple;
	bh=3RdlTGLtpurVKyLfc19DEU5bQYD3+xObnmGtWuUylDA=;
	h=To:Subject:From:Message-Id:Date; b=WfNBSyZ9Qw4r/h7kpRiiU7+iNiF7xbG1vQmw4Q39wpXfJtf/ympv26mYgpHWS5tz8qmizRLgWhufipdFyAN1nYnfaeRqrcGucT7tO1mUDDw1zr8X+1ixwynS4xE8b5Mwh045flam8+1+WSBLorluJIPLxO8OhrgT8odIJ0ArSqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1bc700+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1bc700+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CA6C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788992433;
	bh=3RdlTGLtpurVKyLfc19DEU5bQYD3+xObnmGtWuUylDA=;
	h=To:Subject:From:Date:From;
	b=H1bc700+uyh3nmIQyutnWYNf9wVJyN2gfn7z2uie05b+EPOVVlao1n/ckPp7InGSJ
	 oXhivPEhp/eZYztY6c7gYMnj2CeNWFbL8u/4FgBWJIK95NUL/KItN5rxqD5TejqrZb
	 AiCKteYCaLKL5G4bkeTV9j2Gsuymk2Pm3VGc0jGILSTqcBeS1Y35SmO7/KGt/VSYWo
	 OvkQVlMyunwh5Q+YD5peXJ8p6DTNIOZza86O1s/ySR7R/sWE/mSPOj8X+wZMKz6DEa
	 5mHtVP3jUP14ndepkG796MGWJkRZZCxREEEtzQpcrpnL+WVf3zfccunk0DTFBC2EmD
	 C4eLBVpwLNNyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC03C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899243369.24873.7560536141288621890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41c28d6ed021d2a84ace4192099c458c35787767361dd2ae871f74eb4f914f6
Date: Wed, 09 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788992433
