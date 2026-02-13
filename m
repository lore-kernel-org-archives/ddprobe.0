Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23503C8CE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770953094; cv=none; b=RWkoReuBoJwbWIiKvQPzCDD9y4wdZwsmrro758nksixtqQprS2+u065d1rd1KfuJiyAcimFLroL5BcpmPn65SwnL9ZYmV0kph74qle9/OVwwhqmKEG61PfCLd9RgyPVTqpq231FmqksiISC9zUbbOn1zqRuL/oXeM/QNkcGAUbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770953094; c=relaxed/simple;
	bh=Z1KxEC3+gotTwplLXy491odgpPpW+9BE5zzFYg7/F1U=;
	h=To:Subject:From:Message-Id:Date; b=HCNdsjoZlGjjuGvo2QHRTBCXLQnaoEWjSS4GnnSzFtmE1/YxCvMzxlGoFxwrpN2mrybppEWPCTv+ggnk4BC9+kNey9RsyTO/Zak6J+b4eTDvU9v+XKW7LPlPtWWJToKkuTywb1ESCwKSUbQ6R/rsGwsc8DgXIcR2MyJL0BUwgS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAi8SAYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAi8SAYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC7BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770953093;
	bh=Z1KxEC3+gotTwplLXy491odgpPpW+9BE5zzFYg7/F1U=;
	h=To:Subject:From:Date:From;
	b=oAi8SAYFcAeu9WkOCVP8B3jQc1BvWnH6Bca/8PL0yTRJbX96l1Q984FiFVs8lDaJv
	 ecA7fBu3mGZNSAGtXwrCHgd/uJmqlaiQYRQMv5JUocEb+i3Bpn9do1kV/KjoZYX6YB
	 s1qOinI3yb0utYCkZToTMVskT1LXQR3H6zKgoKJkdVN7o+O4R2mM1jAnRKzTruAoaB
	 p3kLBRB5gWC7fOhPWmNUDnneBkDDzeplLgMFXZv6pStt0+znbl0wCAyGeNY6gO721a
	 odG/+iH3KU/pFP28W5I2FQzex0/VpVskgRfiFr2OUHWCKUUV+XedJ9fW8VTkNOsT8v
	 XYCARd3TXgWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD98EF48C4
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095309362.9060.11124591678681348797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa679a5198a2869a19a322fe5b8f1d865b4a68e18e45f1dd32675d904d14a2b
Date: Fri, 13 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770953093
