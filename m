Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2C424DCEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751452793; cv=none; b=DpCuI45QyUiasAc+mI5ZafQgkC82CYt/8W1jcI7zCbnCPnmSVns/BWwXWagYsQt7ovN+PxKO1uEBZyn+aPk8dhSOU4Y3SFsC5m9HQQsWYGNZTkJpQawReLKG86FxIfqQXiNYvYoIOC2134aQn9F4X3ZmJP8xZlYIDc/IVSfwjhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751452793; c=relaxed/simple;
	bh=OxYgh8eYvfqNJFibkwIxc0N+rQEBekv2X1IeJ+L0FKA=;
	h=To:Subject:From:Message-Id:Date; b=Xj+EA3H4ZSKwZS3xWbBhZkb2P8nUzjVtIkP5UjfsOniEQY5SjdqrYP/zpzjEEWIlIH6hv+lrudsBN2tgB8SFXGAkxyn5yaZfRi4cvPitUgW6jWIJS9UO/97eM2blmXb5AZsicRa9QTyQNKiS/7X/Ku4JqhP/nMA5644zJmJlhQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y36DaElq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y36DaElq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F5AC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751452793;
	bh=OxYgh8eYvfqNJFibkwIxc0N+rQEBekv2X1IeJ+L0FKA=;
	h=To:Subject:From:Date:From;
	b=Y36DaElqX6ZA3m8VPbJ/is9DcfEnyKiU5E1bcT1TnwfJH1bdUSlQ4TUpHnQnGqoVz
	 Nk+jsF3QzRkdgpup+3wid/67kEhd38JSidU8cY/vnhH8l+BdUQzk1r0qmySq0vknV1
	 OXUsspkb+UBfT3E+htdLAKN8Dmnn8HclhF2VlDJgiXhwhfSU5zwFzOHGZgcezLlsUb
	 PjKPi43csFauS7HDJtXL7eSumzQk6c3hPWTVog4TbqsBewP24p27sOW5mTwCQd9Xb8
	 ejVPuB6Tz6IAzXmu7aOsZaBCPEu2LKE29O7OeRf6Zu7HqEjSQ2eMW4OAsPqOEpCdLa
	 r1gYqGYJWGNUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE9C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145279357.17281.8313010342232942257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d6bf7d5b23b81d4ed0aa03d5f332a46d971aad68113739b7c99537dcb15db9
Date: Wed, 02 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751452793
