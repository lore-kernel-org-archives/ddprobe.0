Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AEF1F463C
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748192994; cv=none; b=D7wETkAyaVq4Yc4n0U9yANyCM2XhfrSUFw1lTlIhFG7V/iKc58Tx8PMIxKsatUVG6UEIJoQW7/ahW+Zq/EM4cHNu3+gRejohBrieTCgIwJEioCZTcgno6ftJhB0WtxK68100fe5XHylMUWRe/FJG8an+sSX1NCnvUPOiL3SEf2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748192994; c=relaxed/simple;
	bh=SKNOhnsA8XT+hj7iLrQEhPyHytPbBLyZMS5qp/SXnbw=;
	h=To:Subject:From:Message-Id:Date; b=CHCLbkEr93y7OGCvnliaokb7MebyKAOKWfIlEmIIUAnY/4xEp1c/wuEm5m0DjsaHZFveoOkzGRsXh8Q3GsxM5pDtvbbHthoVIUjgYCU9gFdMpB9I0VR+ZBW0u5pzJbWHpDUL7FB+D9uibkmC4A1t6olpAhwjE3U0OL+gRR0aQFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcg+tywi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcg+tywi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A325CC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748192993;
	bh=SKNOhnsA8XT+hj7iLrQEhPyHytPbBLyZMS5qp/SXnbw=;
	h=To:Subject:From:Date:From;
	b=mcg+tywihiw6g2X2lWbW5xjUpECA4stplM72yl49E1Ry8vilCOhgrhRapat+mqWhQ
	 +k/1rhpv3CMMMwL/9QfwgkFYxTy3EcF91hGd5tYJnX1YhavEcTNgdlw48vWA8yGXRe
	 UtRDE1mVAIJaKHwQg01C+bwGKdMd7TkJW5sb30YsOKFYeT3RbJSOKBtirEQ5i7AAJ2
	 LSfi2pJ7HyEABvxJDhJwgZTR8peAg6N8qf/ACcQlJJQgNti40yzlXAGtVMKf46QAo4
	 UbBRkQuHiSAHEbhz28fikA/cLQlOUL0vjolHkEkS+AbshznKZFWYHDf9etC9wEJX48
	 ZuFf2uPKcnW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAAEC54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819299357.28469.1966397029569203052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e78f0b3fe1a70a3eceea9b5481cb0c5cf7c6eab776a3f9050d4e1dd28e5cd1e
Date: Sun, 25 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748192993
