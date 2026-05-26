Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2F23B7B8C
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779826354; cv=none; b=dOvU/5zC2l1Gu5r5lgpwndxzz0Qju9a7tBwztR1UdRGevm5CYKMFadun6lnSmk35dExIKMhRmAtD9GxYeOtIHlk/AWXKlcKAXJlG9sa5ouGjF4npMA+ypm+x7E3LMRbw09+u4TUlF0cIw2IpEWdHvH/vHgsmFBNMbbuwwMHt29c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779826354; c=relaxed/simple;
	bh=a8P5eWrC5+xGgJmqWwQ5CkLYa3ufyMTQO60dSbC6nKo=;
	h=To:Subject:From:Message-Id:Date; b=Sjcs1zqzHm+7/KU0GIpXxnttoPXI9Y3x8CBHrHqKecmoUL45Hv9mMq4r90tkPrbUNd2I3Y9SJmTsxwxPHGeE37a7PbqLPfa7RkcQME2xu0hrvzAeJPeqA++dNBo0oCFzVV9mTDohQpcrI8a4ZH62qi3AwdH4yEVB0iZbubkeHHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBDcPzHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBDcPzHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C20C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779826353;
	bh=a8P5eWrC5+xGgJmqWwQ5CkLYa3ufyMTQO60dSbC6nKo=;
	h=To:Subject:From:Date:From;
	b=WBDcPzHuQtPglnh4aSMGcArzhtbIkTQiinOnZ8wrQDYjO9zBoRB0KHEIP4Kvbp9R3
	 xPXsm13Nx2ZCI4KADiJI4kYjnwxp5PaJNl1/QQRwsMesAQEXXDHVFl8D5cfuIexh2R
	 1YeqHM9M9bdIBR3qmW/2ugBKY/xn6Pmh0f8lWpmbhmM4mo15FnG/8SYMyWEP/amDL8
	 OQ1GyP6mYgis5teYaOLNCt4q/SBRJOO6f67FpY25G03H3623VrseTg9wxuCiKtgxob
	 5bJWPnFadRZKSWvK7MOTGEbAI2iJCoMY4MXm5y+EdlpIuaIh8d06kNexa3gqYOZj9R
	 0gyNark7uHTUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF11BCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982635368.11799.13877514458611977359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc25c7d084a8197c4fd8dbee4a71773839ec2910d3cbdd79bc5b4f21a4e7a86
Date: Tue, 26 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779826353
