Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87E11D5AD7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727302553; cv=none; b=YxmQCW2c4h8BNC1oIxMqhZr2EYnvP/SB1SGV9CU21mvwdvydic+kVzVOfKOjOU6+3sgNFmh6+AAFYNCPEHj3R6HD6CV+y6D6EWRz9G99ckw6kFNo5BGAR9yfIyFpIYzlh/vU+tGCXbBkn3y/w/uVAp/uZuJCbV9Bg00/gWKkG7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727302553; c=relaxed/simple;
	bh=TWaQyAl4MpGZJjNTTNboznpIm+ZrYY8PlTKlOrTcSc0=;
	h=To:Subject:From:Message-Id:Date; b=ZXTI2CEUyZ7TNKreoo165ZNIAdSbHViesUtqO3TJeBXRJorSD51H/F78aQMoHDsRmXq3GxZuN3+mtfktZFkwhA5R0Ixrvj7miMEefL+uJGyd7pv8KmyBlq8TxptO8ctJzDvircHZS0aGfu8MDreura+dqvcecaEGFXcya4ymhzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7EOFcMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7EOFcMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A596AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727302553;
	bh=TWaQyAl4MpGZJjNTTNboznpIm+ZrYY8PlTKlOrTcSc0=;
	h=To:Subject:From:Date:From;
	b=Z7EOFcMmHkUgYQo+IkSJV/g+AqVyIv9cBHuPQYq8Tb2zrXBxMBOOYWoCo79/RX+xj
	 +2e3rUBF0utQyQF80o9fj6EhUwEUnCMLLpsAdIpZrbilqZle9/d0sSIv2AR2uuWGpJ
	 hT3PJH6+59cEbETRG0hiQdRjp/gdC2SA7C5uRpZ4aKxrEgPpv+YJAKv8lHUaU9xFHJ
	 pufzrTKysXeJuC2hFx52Sz5120dJ3bU6abHrn0MtmGYoAlcTxVwnWQ2UOPEQHko2J8
	 mRiWk+wza5Ku8izIYtYRax+w+8UA5SjyHS040+oukqNSLJrR5CF04FzU+Sh31dR5fw
	 xCJ2MzKQZ1NYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93246CCFA02
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730255359.28129.110831682041570452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35ea63a6ed3caa3d278b2310ed74b2cf46b1410f6ac51ad5eb86ab90cb71876
Date: Wed, 25 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727302553
