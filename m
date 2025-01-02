Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A6E15C0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735798554; cv=none; b=nf0DVqYXSLCdTYGbiUWXit+LB0oqfT6i9TiqHuYKha/yuBRzQzYOVGTYdYKLwq4HZ0qEljzrO7UBjoja+48jXP1F4r2HMjEV88mzYZSMjjkxtRtB5d9kQUSpOPOv0yJ3n2vt/V5gQOCj4tHrJwWv0chp2c9d33c8lGD0Sw9AgJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735798554; c=relaxed/simple;
	bh=O0X3qUxaAKkRnkxjoUKOTUEcMlUjGCWNmrpu4rwShgs=;
	h=To:Subject:From:Message-Id:Date; b=M2PvYVYFJiwA5Hg9lJ1G33LQHOY3XNbdYLsfe3JI8RaM25fLgofX8fxFg7j3RvpaiLQMr4erbSkkL7eI1k7U2bpjiRew13dHvv9uIRqg9M4uzyW2uaXw2YVpocPRCkIQ0S1ymwtD/8rscyd890fhdALXMvEZ3ygMsNpSxEXWaYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7gOlaVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7gOlaVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46EBC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735798553;
	bh=O0X3qUxaAKkRnkxjoUKOTUEcMlUjGCWNmrpu4rwShgs=;
	h=To:Subject:From:Date:From;
	b=B7gOlaVlRYAhAxt+Nt2kPd/AXvxarV3rPkugUp0QY8dPK6hySOij1xg961vylkjt6
	 BSj1DBXSWEwWEv09O+Fg5NIuIdrHxdLEA9hwOSVU9JC+if1mTHIqW2xWJzpkdFXQf9
	 ZOenHT3q8yr9Y2ZU0P0bhUOcF5MLb7xf4J5sbUSKd0xURqlH//eNndhazOhus7dAZM
	 BbpkK0XsE7eRyHI8aT3uxdokK1PhN9g6Ba45gkrnvtZHkG9wHNGKwkq5nQNVuDqAHf
	 ICfzKh168EDNna0ie6orDciHkbdAYzTxE44oM8j+sP107kTJYc9FmjxEQbw8YQCt5z
	 xC41S4K0Kv/dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD43E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579855359.19720.6624383513408979828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c32ef6095c49edb3a0e38bcc21acc1db6846d0125a6ef6684f04de5dd61fd1
Date: Thu, 02 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735798553
