Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DAD28690
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772379894; cv=none; b=j/C4AUasL0wDgV02/31aOq8g+AY1naq2Spd6mJuuwgo8vl4MSiLsrPEUdkQKP5D4OGy08ny6Au+7bFtBLAmsfUf6hxihQ6JWfCYMgJk1vLlshQB4eXFUlDtiwPWuz2iD0NCcX2qfSTGsK6TDmAn6u7DZWfonjQcUwWbq5GcjX6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772379894; c=relaxed/simple;
	bh=RT6DOQM/obuktCER4xQ4PXPvDh9m1JXFlCEXBy1Fh1w=;
	h=To:Subject:From:Message-Id:Date; b=ohWBj7AiYz0QsuCGd/T9gULPq+WZe29FxbbRkCG65RS35+HgCTYfUCU85ssQHzgs9j4Twu1s10Z6yi7hiWU0RsnNIivZNiJAPkmO667fRS4wA4GIuWfErIKnO3clNMvX1ZVbNzCDKpRwuIR+abRTAHhFadZfS6OtqAsdS/DeSDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii561qXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii561qXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A4C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772379893;
	bh=RT6DOQM/obuktCER4xQ4PXPvDh9m1JXFlCEXBy1Fh1w=;
	h=To:Subject:From:Date:From;
	b=ii561qXzk+y/wrpOnTZ/10TObgUEJT2LmTswvg2b8rfUxGQ31wMpDofhXj5v5O0Cv
	 ehXF7mXmzc9LxY/IxkFeiAl7HeHOKzNBiaaw3nTg6kYcsFsELqp1NTLguGgGtCiuPT
	 9SB+CLPOp5lpElY3SOihfIU6XGqGNwd1aGFpQxqkjROLrPPHM0xLrgXtr7lIjVBpAr
	 n90GQ3rLh1oweWbL4NOZ6Qp5CM6nBoPNkQz7+x2eUQEv30+saULltzzOCJz6Cs2tGf
	 3PnsXdVPDgLCnd7Ho4V3fhm/4E3oI+VB0xiY9dY9jS7l29AyJx35xpRYBX7cAoU4sz
	 rND7ycFhQeEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B5FD006E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237989359.3109.14797082683593520753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b97e57f722cce420942b4f0b1d9af6cb1d041b119830159cd21ef70f0276588
Date: Sun, 01 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772379893
