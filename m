Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D9B134A8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718852963; cv=none; b=jmu5XMWdg7TTmp51YcOu8YmEbhDjhF9oBUn6Bf2sSZGfsei+lkUVwnKyKNAIYnQ8jXCLj8kTWOJqGJGg6o2WDRaFW2FXSXfqPRTXPQ5yRL3yL4yBEKNMqiv+eEPwMxKxihG6+QRN7rMPs7Hg465HJFiB1nXO5zBARh98Lfc3cj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718852963; c=relaxed/simple;
	bh=OH6S3WFFBGZwaa56SKVvThvpJjZVMdN2/O+QNv/CQh0=;
	h=To:Subject:From:Message-Id:Date; b=LIabkQbjXO+mAD3ZU+TFEbyrvExhOpsy+Ur2MA31RFznDlbULIpZI0ofo9v/TwJXATK8ch2ARgP/J6BnOLu+1iDOjiU5k+dqI9RM9gyunsf5Spu2brFCI/eqf3r5lVa7apnY6LJpB/AZq/NURrojmAxHE/ojZPraQqU34gxw4KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvgOvbqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvgOvbqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE196C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718852962;
	bh=OH6S3WFFBGZwaa56SKVvThvpJjZVMdN2/O+QNv/CQh0=;
	h=To:Subject:From:Date:From;
	b=JvgOvbqRj0uSTTVERrvMzoAP0NTwcWzA4fpc7j6f2o8KDWuaUmmbjsEzVY71XGze+
	 GcA6sz6WK2rHvhpRFFeolyfaRTHfUZzwWXgbUgClP4NIOhCLOBvGeZIcJ4IkPE+Htg
	 cQ/OWNpZu09qeB0VsDXEsHHugXW87i+H7YGWNZTBQdBQn6r9KZM8GVerr3n84cDV+P
	 J+9Uhp6j3nAUYCrWHOHDdOWXd7XzLct+97Ray9+WGUYNcEElYMtjufT5Nuh6woMMLE
	 QC4fp2QEVG3PK06bI1SZBexnMM2HrGmkPHCNQNu3jVcvo9TqN7lS6xH866J+hwwpyq
	 ps43uu4Kf/Pvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E07C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885296279.22497.5289427137699187890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181129a46928dd18c65f1f061e9ac0fe18b4f6c7b6f03e1d05ae3855845ff2d5
Date: Thu, 20 Jun 2024 03:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718852962
