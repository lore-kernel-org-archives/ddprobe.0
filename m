Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9367D417
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712648297; cv=none; b=RI5r/fvTIl9aelKFzi6frFWTWU00YqxwV0Yv5kM42WIwOC89L/Y2eW8MssIbaqNSbdwEa0jNXG3VkCmi/XRANhvHpPF/wnVlDK+7eNcou1BD8xzfY5Vw4MYVqYCNEo4SsLgfjRBeJ2VunG8sBDGBFq3OEob9Mpd7Hs5Lg5XKfsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712648297; c=relaxed/simple;
	bh=6Ze9K0u/r5u8bQkBb5b4CCPKscXOlubxOSrmoCAbm60=;
	h=To:Subject:From:Message-Id:Date; b=UyY+1oVzsGAqwMzsuwdCIBhGZNyxSY/l1+yxedPJYOhXY2h64phKqtuZfsy8DbDccdunKS/ZT0xx3RmOj+3lc9bDixihZFiKhNeJwN5BTbeLv1me8hJnrQps8qk5cICgz8HWyF1mXD3Qqy04kdPdfmejmBMNcVUMgZKgWk5+22U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkKH+TE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkKH+TE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E701C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712648296;
	bh=6Ze9K0u/r5u8bQkBb5b4CCPKscXOlubxOSrmoCAbm60=;
	h=To:Subject:From:Date:From;
	b=ZkKH+TE6exgwauaj5r/fQwG0otMm2pft+Mr8fzDcu0tthn4lh5w8Bh37qyQC8bGKV
	 P17hj32GLtky54JB7W6HJ4wRXI+0PDK36iT1IxVew+v/1ZSl9CKc+fB9vv1ADMi9aH
	 BmLTjXo/7RiOifeP59jO20J8F4g5GPiCSkBQT+VSTNZaFe1HCC2+kGDX9SyhPCI7zi
	 n1H4lx68diY6UpftM1huHM7xjA2vixCBgtc7udgYpPrfh2ceD6kinkh6fh8ZZM1XZM
	 X5rkCqtCrvBM68inScT/7m+kxrP8k5h8S8izBcVNKywzm56aXfyJqcPYUg7rR4BcqH
	 oA/Y7Reh9mw3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 775BAC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264829647.10992.3492675514468415870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2936fc0ea70b782f1afb7edbddb018ede51067982b606426473d4aa440a40551
Date: Tue, 09 Apr 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712648296
