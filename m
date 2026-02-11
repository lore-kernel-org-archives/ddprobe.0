Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1955334DCFF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770788694; cv=none; b=Z2oOsEyyqkJRiemnnshjCC5RMkfQvKk4bF0Gd2o693y3oBw6JKSSHiZ8UPP+qbTgvqwO+jX7fEEA0LLHXC2JCyAfd7xO15EV6pll2nWCikGHMWSJJpvypvB3/KC1oygER4WM8VsvxEPI504rqSBlj3D8ZCu1neBnmHeW5B2VBtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770788694; c=relaxed/simple;
	bh=SPergHwbiCfktpFtQjHSBhuCcuX6jS7BntrWiQnp3TQ=;
	h=To:Subject:From:Message-Id:Date; b=Zbe5Tfrz4u29tRPB9vAtyFh2xEP0+pnwXAOghiyL4EXH/2+0xYSUAVgLgRw2e+mamMkpv6+GiPwQ74B1cGW1HXkIhLmwHWtZubsma2d7HV6JbnjiZqeMpgLi6eJFZjXVHsnI2qcCedKYdsQyXCskltSp1BaDRkrmTQnatyk5+XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hc2nwJtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hc2nwJtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B539BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770788693;
	bh=SPergHwbiCfktpFtQjHSBhuCcuX6jS7BntrWiQnp3TQ=;
	h=To:Subject:From:Date:From;
	b=Hc2nwJtCnsk3bOuyF+ZDb4mYBHwKVVzqRad8Q+b9hM6TFaL31Hgy8uzwirxAYVuOV
	 P2jZRdryeIJziR5uuIgvKtOyOPu1nWFFx+cXrhTct0I/sbkNx9h624ZqPU0APJ4tF6
	 iPLyN0BXa4e8lj2R7bihOIHq7z/S+Mw8UgAgDPIsLx7WX9/lP2xXdvxg2VKR9KD9Qb
	 /Mm2hPYD1p9VAU1mxVviCxznFz+Go4YsEO/ZKCFnyL6anwKGFUXprCEfxjoA8X2dxm
	 H4W2X2xtqUZs6OIsaVhmFdYCYBQplYKu2rfV5NBSLUpqav1I9ZLjb7LG+EsEoVY8l2
	 dn1Bj5neD8xnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0225EB5969
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078869364.23196.10210365658996845598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebb4eb3fabc0e835392f0a0b5f37def8c574cbe85f7c989a38c12cba2b60a3e
Date: Wed, 11 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770788693
