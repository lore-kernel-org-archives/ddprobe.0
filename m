Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13028170A26
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753296594; cv=none; b=EjLD8uzYSgKBaSgdyu06nkk3j9HW5wac2Z54kntZm3UPgw0yZNcfu8LcsBr+FXdvhfSETOkBWOBrRNGFCQudMJj6DKgimmsxBj3k7IBDxyyu6G0rPzX7qvCnqppZt/hwh0ev762P/q9TK81/+SMRkA/SXrrd9wKaOPr+fsXy60g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753296594; c=relaxed/simple;
	bh=w3xuCCWah8bRJ9oupl+YEaPtWgW1ELjTuL47cEX4+YY=;
	h=To:Subject:From:Message-Id:Date; b=u6SQeqndKw0BdBob2m3vk3QGYH+NAdARH5VYL4HHAS5kAVD1gexoRiB/Der6hzdI4JC7lCbTVHK9bIirXMD6eDfBr1HKN6ztgS+d6fvHVqUh9nueIhp2UUbkFpqviqO0foXP1oqhkd6edMAVp4Zd48jH/aYy9mG0fAl6ni/KqJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q15ragf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q15ragf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB4EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753296593;
	bh=w3xuCCWah8bRJ9oupl+YEaPtWgW1ELjTuL47cEX4+YY=;
	h=To:Subject:From:Date:From;
	b=Q15ragf65HvbE1SREQMHmVyve3QHB2yS9LYnhf1P1nBVUUA2Ksp/tiioAmKWIXviJ
	 PNeybUb5746kvFHr4PUD/U6QRdeH2QF1sd6pZRKA1sbQ1qhZfuOUeNkwsy1yPwtzR+
	 qHvkOMgDYPla7urs5cS3ho2UwKTfcBCyw6a6JAh7oTzAXM1hmmZs19ZN6Pyjv3xJBg
	 M2wQvXI/gVlZOUgIQ/BLCb4anxhdt6jUDocKjYVVfTJ0nUMq3KZy2qOOxceUC6tUfO
	 zggMr6o9D9ifjNXCOSRmrm/m5F22edghmzpF5r/8eL6Oo751niNBO1Ugphsu1Vkjla
	 r/Y3Gm8GVCniw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E929C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329659357.21898.6442574525807511044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980576454fa90c6950b90af3a8c3bf1cf66d185438310f436afe30b3cb25f963
Date: Wed, 23 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753296593
