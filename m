Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B3F288CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751334594; cv=none; b=GuNiuIN1GLxr081gUvnHWJjKU8yGqxuPjVz9UXjVsA7o9obz/6HBx7lByZ2Uf6DObY9J/FStOQmQfrpTGEdqhi6wc5QCC7k/fxcZJocwMlHBbvZqyYZA9Un1BGTR2HOYBU8v70B9lIRsnRDf98K5/KeVJMc+BMDgJQz3OP6x/Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751334594; c=relaxed/simple;
	bh=tzwsTN+9kecWKx7JdEtSks9mxsspE4XLGtDByxKuOws=;
	h=To:Subject:From:Message-Id:Date; b=mg51min0Bilt3TP5ekb7xyisdZikb8ayBE9GkV5Mq1Suhcss+TBkoPlqLngVihXeCTbRan9jhwBRk1+0iwdefSTJZtmAzcW5BVX1SbsZNJ5r+NfE5fOpDUMx1+rLnoUfJHK86rZZwvL2BN3iveldo42AQCMNU4TebtzXMmAncdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXZMh/RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXZMh/RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A276BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751334593;
	bh=tzwsTN+9kecWKx7JdEtSks9mxsspE4XLGtDByxKuOws=;
	h=To:Subject:From:Date:From;
	b=EXZMh/RSZmEI4RZbdWHFHqae+DGr0nq9gpPjctIQhWQbFNNzJUJcSjQvk9rReQx4g
	 3I25kAVk9+7bhcrpupG75n6p+0IxfP+iCsw+Jg5x4NgDAkyUSs5CSPL5TBkr3Jm7jy
	 eoZIJOM90auBCUhw2CQBS/3HMhNJ9BJM8QrmcubVht6O/nBLOZ83jgKrsXmuZy79sL
	 Oe1XR77GX6Z2QalOWLPinSjAF2zrgV2oQh2V0mm6xZHpePqHS0QRjlEj2d00QUO9T2
	 yiIefIot0Iibg94Sa1FXBQQg6/1GK3ZYuR3zJtU0meELbPYtGGwyUwo9aKu/bom8rf
	 cIszfd09KUk9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D3C83030
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133459357.1023.2219188382038712523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a615809beecb7691278a6ad6d0110a817bd8357e0a4a84d5e36ba53f88eacbb5
Date: Tue, 01 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751334593
