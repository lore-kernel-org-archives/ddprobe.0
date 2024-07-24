Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D262595
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721783154; cv=none; b=HQ10kKV4q29C3tYCBRRKLSzX6H7nnQLP3uCO5DJEO2LdGdMosxwcZBuVS4zuG+UGNLNBrVCmDP29yA0XAmQkkcWtxVvGmHC4rvWwTyab8fPt7jjtQPH49sbZuW7jzjgLZcSkrFFuXPj5fOkdLsAN22UR6RzMpvPmZJAHpBlZhUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721783154; c=relaxed/simple;
	bh=36roefcoOUZY++dqsEkuYhk6MucOMvoHfpWLKl8sKtA=;
	h=To:Subject:From:Message-Id:Date; b=UYAaNyvqPQBePCl+lKFsrFjd8OQylqbhNhGLA2S4qAAv20BZAcnmmatcbU6ezB3zly8lSpfURHen/StSaEeNsEAk1/IG6lLKWGdJ0fBJ4N1OKoTYQWXvdUhDLUIOu/s9nqCU7Rb5eqQV0HS2KnYHRLESwZz5VQ56fevoGfBZQPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVo3oc25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVo3oc25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D64C4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721783153;
	bh=36roefcoOUZY++dqsEkuYhk6MucOMvoHfpWLKl8sKtA=;
	h=To:Subject:From:Date:From;
	b=hVo3oc25WW4OZpwrtymoGsBuDenKqU5repIZY6tVQPiIVxlTlxGtiLOWswJTewsMN
	 H+eH5bS9DLpxSiCk+LJpOMAHPqt5Ts1jf1prNebNKtJwalutvPQ9aIGv3/Hk/CYkp8
	 RQodudlYl11fkU4g6n9vwXlIxmtkvI/M5aHjFnkeXt3c1j4r42e5qrY2cjHfddvRBK
	 Fgbc00MzSU3uvTZWvApHdB17DB18FYA8fpRblkaYxlH0btLtzv8ndAQx/Wz2mco9lP
	 0IYb71FLX24QeQjSxz7MZCzRkoZqaktZuPo9nP+6CpE7kRuKf6RmQuMj6K3Uqu/rwL
	 XrHFXUfhgbYFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3AEC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178315361.14211.9272250248608483427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a93b6f93da533bf075dcdc9489a6d1d5f20ec70cc76bf2c3cdccd54e59f34d
Date: Wed, 24 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721783153
