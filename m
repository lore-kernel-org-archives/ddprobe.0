Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D71B2417FB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764741174; cv=none; b=gwtPM9eMpKAdbQqFxRtnjnERvxZTFHWt4wUIEqy2tQ/8NEbvs4sgWdN6vCwRbzyuaQBdR+poIUQOW7L2P/ZYZ234RnbpChNbmi8WtWLhOUqFWEQpwyePgEX4zOhLcyNbEVuGQgGeIN3OZIyVt35/Xwjt6hfwVQOPEsVMQv6lhzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764741174; c=relaxed/simple;
	bh=dZsildJ1LcTz250A1FzrGto0mlvepl9O9UnZRgQ6mUg=;
	h=To:Subject:From:Message-Id:Date; b=cmphoSfgTyozS54nx+I+fbr3SM9QMNFrX2PDUtfGiV8goa9H0aOmMgRZQ4Au0zahZopJ2h7tLkvwuD8dQnSwiJuNXglbHc5Hrcbpbfrom0x8w3EgnKWypeFKyMGRo4zULB92fowduTq/49mHxSLQ5akBrmw4r6wYq3VDp1s5CM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQoIGeNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQoIGeNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F3DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764741173;
	bh=dZsildJ1LcTz250A1FzrGto0mlvepl9O9UnZRgQ6mUg=;
	h=To:Subject:From:Date:From;
	b=iQoIGeNmHeitJgVceHBjbivMTolCo+F4FMWxQUNDHz/BAimMoPi+mULMUlQsjY4Vh
	 J7CPKpCkNxD/ZNr9F/aH1T+mf01XOlCcW1VEHKZxq6Jy008eZIm7W5rjIf+Mb4rN0R
	 EzRMVCkLZXY5u78u7U44eg4AVG1BpdQ0fhabZmnT6Y6H3Wx0hYbGdoaFjKvpTrDVSl
	 WlBYscI1QHI/UQBw23RKbib5PlSnz0qWMy3Nt+pM8fz4Fr8GqC0ZMZcfBiqGucpcGi
	 I7GMN7x0UE6tqx61fkjGnrUGe80O2ZVdQv7Uec8LuAa39gtUOE9Tbe0mB09kyyd2dL
	 TQxMGUbjcjsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D61D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474117359.8220.734479527789006774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d282b0b225bb4749c7182bb8d920bad1bc6a095282bf094eccfa3c10328d2ea
Date: Wed, 03 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764741173
