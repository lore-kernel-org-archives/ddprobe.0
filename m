Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C6E34D907
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775626534; cv=none; b=X1C/DfdG60P+xilHscRCblmJcMja6gobJbJkqcDIgYGA7UGzRcMnjDdxLitM3lwofvj1GIC6zu1bGxy5tt0wi/mXWJljPnraxrHlyBEG3LsjqcjHUec5TMxIUqK9auIIRRIWyhrObK95dWeuG9dGBnZcdLhYilu2y1izao1H9nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775626534; c=relaxed/simple;
	bh=+AlZpH0O0UAULOFOhZD+Mv+GnhaONT5Az9dgsUT+tWY=;
	h=To:Subject:From:Message-Id:Date; b=njam0D6v+fX6XH94eNCIrnUKAQqz4YUMyAGHWbJkYUnFiwlEq5teMfNxRmuTC+F4JDmEyMSxoKiOlXa0jVGsosVaGZlLhO8aL39q/d6f8qNYGrBS88H5196Jae4I3K9lSufmWi+u1rLpuFBVJdfASgIfTIL+14Ht8/HUDHj9jdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQQQ95EY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQQQ95EY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CC9C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775626533;
	bh=+AlZpH0O0UAULOFOhZD+Mv+GnhaONT5Az9dgsUT+tWY=;
	h=To:Subject:From:Date:From;
	b=CQQQ95EYoIq6sSTXAQk6Z7LGnsJUZx3S1tHvQohlBxmHzv3UuhQTUxM0tjWri+n1E
	 9jtgZuwg6lwTloSwT/57tPp3mnv+WLU0Je9snPMFcWd6K1gnCz189nMBTZO/C3Bcda
	 NWWSP0y8wBlmC4TDuGmjUG/yv6RsxiOFRQgYkHNfaze3ehrA024r6UyyN7scM3UYiw
	 LQmTaqxdrESnLi40dnHyvwfY3WYJCtYlfbYocq8M/YAGJx9iiuFam95JyuPswfb5VZ
	 o3ClJiPGK0DgY0U9LYy9SwyZRB17hUmveZrWcntORUI9xJOxGIZLBuhZICPF45/V7h
	 xYc8YPdTb9Yhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8835FD5F70
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562653371.15279.16380476118108162283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b63caa0a2b9c0a88f1445ac93556ef5f4e33cf551d5e909cd931214b5547076
Date: Wed, 08 Apr 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775626533
