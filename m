Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6092E852
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713220764; cv=none; b=et8un11NbeDrNJmuuwkj9RzonY39nVD+lX2qh8f9hlaganr15+PWlFCLVyw9LisEL03gbh1Dt8/mKJHn1AQBbwyBhA9MhfvQMeLtiaIwfsT0N/FxbQcLiT2ShqatiPToZpHkJaFSy5GJ2yxRNZWX+GJ9+XdqnrX/oylvqBuSUfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713220764; c=relaxed/simple;
	bh=5LZc6WxA+5VwOcPI9VoOgnotlW1xgQwZR9m4MHi9iRY=;
	h=To:Subject:From:Message-Id:Date; b=Ufm9hc/SwBdjUtTUfioq1moN83/M7EjHioKjE7lJueDJUNdV2sk7zKtg8rwpx6dC7YH53g6/CLAR9z9JvZkiACYtqKmwlhZxeeoLxBMGeRdOUnw5mqBorqzEJzmWNcE+HaYDiaWckLDBq3WVW6wJfuY5jR/9TEfwuiOkSijRPvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdZP3VSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdZP3VSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D608EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713220763;
	bh=5LZc6WxA+5VwOcPI9VoOgnotlW1xgQwZR9m4MHi9iRY=;
	h=To:Subject:From:Date:From;
	b=rdZP3VSF4E+CWoCnPRt7cDJR8pEgG9brKwKKBu6JacyemeRq+6KOjh8cg8iERAoCN
	 AOA+a/aM+QdMoekkk6jhId3p8KljsM0zL2aDU7IHg8ZO+YHLef14P7rI6rhdWaTg9b
	 C6I2ZW7+I4iLk38hJJB7Da8psLpfwfbEtTwIIs1SaXCpjuUDiZgzzsFgUE+u9N8v3b
	 /wYLZuSiQWcXIC707uaFxADa0YcymbOe59TFYR4DcU+0tO1x29l7OMK3WqvBSPc/7f
	 DxDvHu/niyhWzIYICoXNSvLKla4EIaUgwTlS5I46yj2H+5pQLkTc8Sf4z95ksL5tpY
	 TObbDCmiEiRIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C243EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171322076276.21204.12557547868884098478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd53e6b28e3a167fd11c687e32ce122167c68fec2d596b72ac683b6107439fd5
Date: Mon, 15 Apr 2024 22:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713220762
