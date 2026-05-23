Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3098E42AB7
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779501754; cv=none; b=YmnmN7sM2p+vYmnrPU9NRSda45NKJGka/+MFWvXsQnyuswtJjZQv8x4+0Ecw+yXdF5RxrpS9MwusIhXcJEugcy6Kk/B+n5Po5+WHDne8iCCs1rPys7/91GKrB9QKj8OA6rTpEgXHOuX7rsqFh+x0BU8TcAxiaXYK1h4xpV6MX8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779501754; c=relaxed/simple;
	bh=SHeaLdtyfGBicldSxGsRdW4wDtSQDoXYRqcTcVGbY3s=;
	h=To:Subject:From:Message-Id:Date; b=lkRdIHSF+Jm2rPyGQ6M+n8lL2Js9fkK3AEDnqq+PlNcU1kPP2FJaCw8ioUqUt3uAFHALtPOu49l/ZXGbq4BcHxEXOS63ZKWO0Bic3lwwncvZNtpnC8pCBDIQ04fx96MFQjeQ2JfDXUHbPuYoRigGPvPLSbRoI03r/y+kl56Zdvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUA7rKyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUA7rKyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E04C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779501753;
	bh=SHeaLdtyfGBicldSxGsRdW4wDtSQDoXYRqcTcVGbY3s=;
	h=To:Subject:From:Date:From;
	b=iUA7rKyqOrB2L8qkr2OhugTQkTImV+Kgi+kZJVFQTrE0g1pjgz2pk8ffZyim/+ffY
	 EXyJqyPnkbGwvCGNmVASb3BLdEtDc0bt5jfSBHh3IT0j1K4U1otlxCXXfUjfUjdBrE
	 mG2cxYKJiHqna+XxnkEOPdVtlcT+rQa0a3MFjgbrX22f7mBqouEtLg5uOhZSeJxza9
	 h4Z2TjEICyXKrw3Fjxs6q3fjaX9QD0XcRTVgSvZ1ppPHey3e69a0NN6A0WpKKzP0Bu
	 eaEezuZ0jCM5SR2KXm8QAExPKYo+R/yd6TeO72LV7TezTO/9nTnjht5xnIEQEISv3l
	 rn0heGHZGqdWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C78CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950175368.5515.1381604591639556711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253e8ea58aa18f99de222964db2dc1506664f51dc05df364515949f459307181
Date: Sat, 23 May 2026 02:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779501753
