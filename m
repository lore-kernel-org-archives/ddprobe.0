Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438F118DB2B
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739717335; cv=none; b=fxWSBEVOJaQ9ADjJkRLOiYbIo4Amd6z9crT8yHLjzC233+xJ3o+OnCVMtRJW6O0KWm+gTbvwBkhcF1d3uj7CkxkWgae4U+kk3jdP1xtJIANo0X5e6XKp7x7gyzBKLb5MuoA279+VffCDjtKSxUzDShCzG/lydA9wh+JEhjG9mjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739717335; c=relaxed/simple;
	bh=+DvO7Zm3H0qRSKs0ZOHEEBSSCLtKstK3YxFxGKuagBI=;
	h=To:Subject:From:Message-Id:Date; b=gQEs/vezjmBUt1pHKlDltXKaLbeMMdCNvQGaH8sYGptGS2Jp0CTtRG/do0CmQChkh1+q2XwU9BL58tIwuZAG7YevVUORdQF45qTdZbZdX1uJKul7WmlDDHJ+lSCJV/mMG/27M+aRmA6JB4ChYGpu1AacSD39lbCjULemqMMES94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUVbsFcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUVbsFcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B630DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739717333;
	bh=+DvO7Zm3H0qRSKs0ZOHEEBSSCLtKstK3YxFxGKuagBI=;
	h=To:Subject:From:Date:From;
	b=AUVbsFcv+HeZFk/fEJwv6D0xIg4+nQaMG2xk2n3Gpj2GerPqCmiifLPp3a/DGYFEj
	 A9yCFWPXjKYgWSfqxgLqIIfq41TGj7YaT1Djos+KHbD1uvhWiv4supOe7Nr3IN6GGb
	 SgXg4ZcmWCqOOewoBtLmxdqwbHQcsT+SjMqfki/+CvuqRc2ZzZpqYRtB+NBHGNqUEj
	 TPPZ3b9JV3eJ8LcJ4sSF2UgMPgkUKk7bKtlVVKpZtpYELUTc2BosPfuGhVD6QUt0Q/
	 8Mzh8Bhj5y+KC1LTzwmes1IOtVPfnfHPsMsdfpzTxDd8JF0jxSrU+kNSDkFxXUN40/
	 7cm6Td9u3KX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6AC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173971733360.12440.1229507028056658757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a6c3153fd41c122c04c5c8c18227d38a0f9cd661bf0641685b1bae909938f7
Date: Sun, 16 Feb 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739717333
