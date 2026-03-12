Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E7435A388
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773327294; cv=none; b=DuP6XKvYIGiScZPXetRVSSyje9vd+RMaz1ZOtcx1uG+Z+zMlYag3iCZkDpekD7+0r6tR3Dd4vE6GagsThdLaidMSLwP5bx6eVmoaffStWVLU+SFNHLWsrKB3oZdjHQg9+oAo/xERlndUOxzDwyl9S2dJXpsfpHbTEas46UppBBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773327294; c=relaxed/simple;
	bh=7A+ysmdEm/zFQxC0T+g45PmYvR73Q5i/Jnpryc4H+BY=;
	h=To:Subject:From:Message-Id:Date; b=AIdHHmT+vYFQR86U50RPu6lxQAR0drLoco+tnA5be4RNcfMEDevMTF0YOtXTZY2J5W7AW6kPvlyJrYXcU8epsz0zBcM0H4UBtSYLHuVZt21Z+aZ4GfvTXBSzKjWi80ts68Yv0lN9XIJElki/oJohcLtmOc/cyZriW07uuE1uaVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHrYwtTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHrYwtTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773327293;
	bh=7A+ysmdEm/zFQxC0T+g45PmYvR73Q5i/Jnpryc4H+BY=;
	h=To:Subject:From:Date:From;
	b=YHrYwtTD1Nu4XUqE+KhV0XPKYfSESpGBogrBFfmgv+OUe2oRt6xI4c/D6LvCreLUC
	 ZgZvsTrxBIO51rvcB7L+MpxMZ9wuaEf5dJhFjbcSV2EWosyH2aeFOWf/rOdPAnn6lE
	 iYmsUq+0OFXmvfVUdBuazV6abzEcg255Yg1UyDS7azyM8KkxUgxlXgWiv7D7Wd3NfE
	 jzC+VxUFZIiFek6Lvb1BukV3o42+yRAFz7sY8mSBroIPIZ1Ninnx5WyQ3CUk2AnU2z
	 6d0EIG6c/pH2yYCMy/r0DQ3SvbE/FIzpIVMeQPOu5iamOeRqETyCaNbX/fRLye2tD5
	 +J/DQm/eFmzew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F402106703C
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332729357.25939.10161257821342675644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1cd1eb033ba7d46c9f5c4c2f8d5ac7e0cabb167c60a9bcc5ce1d10a2802628
Date: Thu, 12 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773327293
