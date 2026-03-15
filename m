Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1143F372EEF
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773593094; cv=none; b=tdMAGTUjjQmpOtAZsKku+kUgKyQIeS1H74NLp3RJ7OpRJV9lb+/fdZIMX12+9evWvspoEm75dxXY6CVj14zBmeEvw0nw+UT5JiEIqVnXw0LXZJg12F16yGZ10yVgAsCc2hL0WYCbsbp5SbQRmIbdU/co7MqOiWjBMV2loYIS7tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773593094; c=relaxed/simple;
	bh=3Ky7ka2RAX6tYxWKtgHEd1jx0fhaZQCdeXvAh/bXJOU=;
	h=To:Subject:From:Message-Id:Date; b=uN5Ho9Uj35tQdvczlaPZUfnmmZRoQXECK0n8RoIx/ZQhvGpGG4icxWlCx1M3UBj4WKIDSv36u8D8brD7j7+krdMZtkQ+QGUeECYwDVV2EkrdX4EL/4bcSJmacwIdm0Hq3L+9uZZCbmc/KnDtKwK1GXU9pXdl8pVXhl+XGd6xwvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho7/U7nW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho7/U7nW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E302C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773593093;
	bh=3Ky7ka2RAX6tYxWKtgHEd1jx0fhaZQCdeXvAh/bXJOU=;
	h=To:Subject:From:Date:From;
	b=Ho7/U7nWysoR9zWEXgQ3cqgNoq1JOo7UuFezQfvGDGaahMxryV5uIjYwlyYFaYtkg
	 2jQ5UW6YAcIkCuDqbOhhIQotrYCrZHNVny1osg3WQxoqoVcS9HAOOYL9Dbl81wD4hb
	 +wtrph2/+ETYv7nb2txCWuds7hyqCH5emzfMi59c2qPLNv+M+Sy223iGvKC5i46fRu
	 WhmGTe5kn8MfUtg+SXjFGJeWTFk4fH1ECjnTcbIdud40rrbhrz7/l+c8kvi282lISk
	 6DXj6hakMxpQ2oMhSSjAmiYvbCAOMpGCvAkQidOJz6pZTbHfZGUp3yeY8/wuE8jnhS
	 iq7gv6zgdNSRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90008F3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359309358.9823.7113961470824235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb287bb8d6ed0ddfaa21fd75f5b91c5fb54e8e337c9d822600d382d16518914
Date: Sun, 15 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773593093
