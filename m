Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066E92E54B2
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762385994; cv=none; b=UcYb5fQDGfUzFuuGvu+JyeD04y9s/UI1tlSNW8Hj+DmpHwHZCYbxBBGtJgOq3lEROjos4W0A27SdDY4iPWgcPaMGDh0Rx63UCRq1IrE1mgXdl1kqd5oVNYGrgtlqk0jQ57Z44KeWlJ4b15GJgZBg2HSs9Jrq3tqNXc+iUSHXBac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762385994; c=relaxed/simple;
	bh=nDnMf+5R41K3JtIp5K7PWUN/ktcywOFl6Yu/NY/BD1g=;
	h=To:Subject:From:Message-Id:Date; b=VLJiyyJm2RCuJGLQgt5ynpWuvV7eYHm54tCNuDb6GOLuwvZ2waF2gf8LmU6h94Xe96bQmo4tMX4b66tyw0dWBnRdCKDJFWL2Mk7rA+9Ju9Jvi4FqbNpdt4NqHGkTCaBiBYuj6kX/mCzWbO21ThLjYJbUWOxZqf2xokl3HETbC+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRe2KkD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRe2KkD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2850C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762385993;
	bh=nDnMf+5R41K3JtIp5K7PWUN/ktcywOFl6Yu/NY/BD1g=;
	h=To:Subject:From:Date:From;
	b=qRe2KkD7jvO0Sd71T/JXGg0devZ4c5hBBonm1158a3aBk0LywO/W4eQnuN+RwwkCD
	 HpYvKvJmtM6EklJhZDeArC4S0QDAXpEPoLUnFGODUly/AiEnFX/7N2mkLLpSvl8P8I
	 jzqIrp6xnuaSrHeywjYtD9Z4fDzEJpLG/Qr3ylu4GIIso8Dfpa1lYbjAAPSfEbvN4J
	 AwPVbq66eZvpw7f+7IOrqd3jlSnJSVP7lddLBaS216x6oc35kCWn7+nPjPkd4Oq8jz
	 6qte1UjhRAeuMxkzxKGjU5neWXYlUWWauT/aqvrmRwCxzU9f2PMB+3+3Y1DZ5Z1p3H
	 XKO3KxUHbFTvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB7CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238599358.25827.14321563100068209676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300e82ee193d1a405bbf9b4fdf65f3005bf45ecdafd14d3b0e64ca4c42e15ff9
Date: Wed, 05 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762385993
