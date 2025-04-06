Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431197E0E4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743942594; cv=none; b=FIV/w/fgLKXkXhj/EwbddvFX+I4D/r7IIHPW4OIpx9gXPNSQxjIDrJNGVSM0nPEuut4vyOlepu/y7pQ0i9+jPn+2bHxBYyFvWN+DF59AB9ay5HA5dUP7iLZMxiIi4IJi3PhjaoZKr9KixssiRuNRkS0RoC0nPmcv+th3whYSlZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743942594; c=relaxed/simple;
	bh=pc3iW+tYGpX+OOVAovoi92HfUNH3U2E+AuDdqUFjd+s=;
	h=To:Subject:From:Message-Id:Date; b=dqqTsHkaUeov/tRHv2Ct/7BfJqyZDBu+Fei9zosRaApq3S/8V/q2gtiha1OKrQBdFwuoh/UyuxC7A6B1WcPNbjxzoi8pb4o7E7DOIh9huDr/H473R7JzwNYSSCK9KjcLmMjWlNmDxb0JQLQzed9P/U3ROKaJOpJ+FJzaQzNvj+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldn1hlx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldn1hlx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF69DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743942593;
	bh=pc3iW+tYGpX+OOVAovoi92HfUNH3U2E+AuDdqUFjd+s=;
	h=To:Subject:From:Date:From;
	b=ldn1hlx2em98uXWGl9zKew1Jf8JTugdA/voIwhmCTZ4fix38udq+rgV7frVbzTJ+/
	 1PaDtRJOBu2lK0OVc6sm+8JnfkKfg6KzMRIzb3xRVc3wDCpw5Z7zZCgfUUXlJVWwhj
	 d/d2cqmsSGYdM8D0hkAtcEeQvER1AbechDIcSeJBA1jn/mEylMoCZ8lL+6AYeYNlnQ
	 3OQfvS704eiR8gnYNpjGfPApuzyxzb1hjP6jZQdBrVkq+mkD/THaiYd/eq0pM1QxVk
	 u+Q+MjpDuCtUwmErWaIvqBx4S9rFJmDT+pCKSeTiR5d/hXT6EYTap0n3IG8V3ZYlI1
	 BxdGCB/5ffM2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2ADC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394259361.16264.4711819873253469719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef4b097152d76f906b9a820c039ff205f1086755d231604064424c0af3fae51
Date: Sun, 06 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743942593
