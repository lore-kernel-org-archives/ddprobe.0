Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2009F2F23
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721606755; cv=none; b=eYgb0DIIcXS0CXBKU4X9i47ZTtyRENJM/b2Yt+RgDGp08u4hkYd0ZxjFubnZGLXdJBtd40duck3qMoP/gMALMQocJQ9I0yyPPZYJ4X58IZ0Mt44qymEn1k1locJwTTZkI3J56CD7yhxV0X+8jV/nvOjN/vOjiIPCNLfVM/9hsuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721606755; c=relaxed/simple;
	bh=QtbfYxcw3jeDy3CgGSR4duYeVHh37ZuJNNqiMBdFo+U=;
	h=To:Subject:From:Message-Id:Date; b=nVwoibkRczdd+9O044kKuVrdKKFEE6uQFjuUhuEEMklsKRZwGIaLjxxRuWbOUiOwxlN7qnnrLiqUag2brY/LZp8uhJbIaoPAgFaO2WnAEbwP6wkzYyCzo+aqIOrd0NeWFsUZUhDU4PwvBxj/NTkrjhf4blHlT7gXLkFAtd3z2dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYalij3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYalij3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4282C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721606754;
	bh=QtbfYxcw3jeDy3CgGSR4duYeVHh37ZuJNNqiMBdFo+U=;
	h=To:Subject:From:Date:From;
	b=VYalij3vWj898/cjZXHXyCyJYhHD9e/My3d7iGhFuWNd9uJOrklZEuVXVV+uibNmL
	 zrzGUXjmpBI6xyrtkQqDU6obNqycNw8DDTOc+d9PXImVg8KUf66yqaTMlN3zkV7kci
	 wTltKCyXkrta+CGlK2b+Rn5+7eXpyhQF+ZCH+A8OBTb7+evZpWiZNDZpdL+pJqn3jq
	 IuTBHiD0xBytafPwNzfnL5NhzBZZ3sYPGSbfRYxnKUiWvwEezBSYV4M3WJ5aOrtVy8
	 fbDpC7kjc8ScYnelqdqON6EAdOf0GoHQDHHwDBKnAuqDsBAAyCLqjS0MX7mEnV1VRu
	 t6nawN93sfrmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E08C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172160675358.7244.14685642713879048303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e797e15cb8387b2b1090d1bf297378dd048ce53bd0d6ac669d2d11b2ecb252e8
Date: Mon, 22 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721606753
