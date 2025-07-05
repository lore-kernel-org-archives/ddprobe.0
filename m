Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EECE227EA7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751752194; cv=none; b=HZrH8uFulxOXu8vLKv61BTDZkEjr/0sREkgrtJPWE5s/xruRsJ+iuTSC5JhZdYjmFcDTA0JY5xiWEuVUr3IcAqVzDQXvOztrOlH2PE4+75BxpdSpdAwce/s0PgtVgV9DUAlrMWsPRqW/yw1+e6rB/ugLLHkplsfIsxC8iVY+b+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751752194; c=relaxed/simple;
	bh=4Onpm3Zf9QcykSAtaHLG27YPA1Yh7p+OyjkOR5GjL+Y=;
	h=To:Subject:From:Message-Id:Date; b=I8c1Kk5Zsy3YG3mopdiYIQWZxd8rhM6qPT7oEAuDcjkKUyCKdZrJvJNweL26zfjzuO3pelhRPu0R2LrNBT41+AQ7iHa1r2A5ZJA5FuTV3uNbWKDskzXh968aRl0Oi/4jiv/mgK3xj9NBLf9dQjzepnj3A8yBdKoO4jSfVHHGM1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/59T8A6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/59T8A6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A1BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751752193;
	bh=4Onpm3Zf9QcykSAtaHLG27YPA1Yh7p+OyjkOR5GjL+Y=;
	h=To:Subject:From:Date:From;
	b=g/59T8A6bL/V5lk6NZOkSTsG7komCM/TxEELsGL+aTK1AnCSAzyttEb3ZW2Xiwdsk
	 aqqyKyYBb84WdpX5ms7Zm/xuYnJGYJj8NkA7YvVocFiRxgIXjXgFOuvKM1YNZgWoI0
	 KiANO5JoowMar3hgqSbMZWwy12tMPYaDsZ9MQpXotyqNNI9as75hkd0E1BFItUDzMr
	 7wyRdJIHROdmq67LQHBBqhkTPbthM574WbRWfT7euc0+Ggryz/NkkK2ZfiFa+w0CSk
	 DgYmVtqKLghtvLbXS1g9VURPCWq8p0tHrUUPRjjcCKk73Stmy1HCjSUszRuRJFHAfk
	 ZBIOiIXpXm4+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5DC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175219357.27563.5033193897480828104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ee55fd941dfa4579f498bdcee60d0c2f0f0d93fd71ef876a2d12214ca8f111
Date: Sat, 05 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751752193
