Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094063803F7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772707494; cv=none; b=REKt7meo8F2TwQT9GJ4b9n+m4EOGReeBxn/8o30JdNaLrLlgp43D0EG5ioSMpQtvYycZXw0kIIhePnu6k6MT1DRd3mAuZAFn9h6CewnfeAMJtgsYO2ueJGVo/7TuCmeXXiHG0LMSgVyzSvHuRetjrg4HIAQCmFF+XkS/PvwDlfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772707494; c=relaxed/simple;
	bh=mpuFqmic7qFUrzVFmMte4y+c+hm0tEfrGb918NCBmGA=;
	h=To:Subject:From:Message-Id:Date; b=UegDiEZsCnOzF2Qynkyr7yrNwIDATSM3xY2dLsxYSm652xkBXXHFDibpq+OunmTiUAslzwaUqZU7J3OOJcClXVXeLdDvMhrWmQBjiWCMl6jF3uStf3E5yRGBOIEimFjJoxHoc+MW8KmbiSji9C12LvqnqKGdaIT+zqkbOnUpa0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCqF89v4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCqF89v4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CA2C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772707493;
	bh=mpuFqmic7qFUrzVFmMte4y+c+hm0tEfrGb918NCBmGA=;
	h=To:Subject:From:Date:From;
	b=qCqF89v4hpao5xY8QuXBsPlHoh21kMhnlc9fPibqINRUy/pLt8ZYNzN1OmdGN3r6S
	 laOnuPyzzCZTBLEE9SJ9mWG3NinWsjxqJbYYsi/NAZ0b2M/IRYuEEyJ4XBRXzscTpZ
	 MI1oxH2TMVbwUcMVjqxXZt9zgUoTD3RxLr5wbWYPc5kOAEzPcT/T0pD7SAwT30NoSn
	 5C6dsZ/8Kcny5t4qmxzpSjyzv8Chcdjic1EX+P7/Tcu/0nZrSYqV1ipSXuCeaCUr08
	 5/SWi2GHoMNDYNs1EEDZrUJAiAcMDgokknXBcqp4FC80oWdbSgSCLomKXI/gEDYr4s
	 ZWd9o2cSGy1BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9181EF30934
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270749358.30048.9372811376412675103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c60206562885b9ab96f23cc1b748e8a369e3463fe3cf3bf222de3295a8441e
Date: Thu, 05 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772707493
