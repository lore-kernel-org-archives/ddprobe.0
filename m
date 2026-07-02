Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DC3394498
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783016314; cv=none; b=cL6YeNxLamT5QD611yM5HaP6SGFKF4sSw0EDoMi9OCatF4hlYr8acIkS02nJXuP41AMIbpyyqQICpWhBzPZuBTIDF83jgNC6vXLHB50TANZAaGyMfpDYeiwzDkQQROoHHwWJN9XZ7u3n/bwun+JcHAcxElRxOSDjVfN1noWBLiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783016314; c=relaxed/simple;
	bh=gErCVJlqKQ218LyHboveMGpwAilvsHmXEvHvwom9G6s=;
	h=To:Subject:From:Message-Id:Date; b=J4BX12KhT4YXd7aglmQPphKPVgbkbzgfXPBZfyDmKqkjaQiqLf+EdgauHbRR3tJk1YvGLFF1Zzw/i2CxXy9TRQKnGsag6KL8C8aTz3hq+x/cnqY5IrDfL5pNrZtowO50Qd739zNR+FfN3urYIuhiM21XcQHyMUhWr58mI1qn9XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pb77EZEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pb77EZEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6B7C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783016313;
	bh=gErCVJlqKQ218LyHboveMGpwAilvsHmXEvHvwom9G6s=;
	h=To:Subject:From:Date:From;
	b=pb77EZEQgUBX+o/G1oBiHpBJFVyeZTYMuJZkst7MrmwJ/46zkAA+zef/dzgx174w9
	 DJK1/6zU2d3NSxUA6rRifrWV+pOwcuwKZbmPAenBEOa+qeO1yh3eR7fh7YxP2GsqUn
	 Fhekn3/xy3mXeq226BQjHpCXKdAKDygzMftw3/VX0+tN1WlQdGca2V0si17Zw9coTW
	 iMQbP6HuCL+g0S+hcD4OvpzVrv28BcvLLi8Hw8Afkv6Bg0h2W/l/rpGkZ/gnWTa0/D
	 PcA2l53xJA4PV2HCc8xmQ9+mKkFzs3cUg/LofDndJciGZ6Fod3pPQNcA2YZAoGBhBp
	 c633Fr+wps+qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88E2C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301631368.1324.11965726973031910626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db9c77aadd63e8907509566ac5bf4fdfda41f72383e9447ee4a46dd54197578
Date: Thu, 02 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783016313
