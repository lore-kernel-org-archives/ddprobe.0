Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619437F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714356143; cv=none; b=T/60oHQd1nffDIvzYqVDmRcIQBo8n3H7CgTP7K+JSZ9WhGB+Qbm1egtZGnOx9XZN+RVnFAfnX8PKgYbjOLfqA8ku9VE4aR80mZp+mURlkoUykRF6x+M9QOzF/9IH8TnjmyrFVK5GGPG2N+5Y9JX3LfcvAvhrDGuEbMnHLGsF4Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714356143; c=relaxed/simple;
	bh=GR4b/Dw/bICIVWG+l1201SJoJwcpzPuVcBpJnZnmYLE=;
	h=To:Subject:From:Message-Id:Date; b=mpGnCLH3s08k/ZRwkrIYCsXhTWUDCAXLu1fOKgPKxoXpdA+2xIzQuboNbxYylTfALse9BXdNJw0hC/hS3YGfH1Bg0f3BZ/l0kfCeRRTNBLB0Fu0s5DROvH08woxtf9rZL/SJDHse7mkYaSu0CR1WBjB0MK/IpTq8YzbuyW8SChc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr+F2i0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qr+F2i0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC15C113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714356142;
	bh=GR4b/Dw/bICIVWG+l1201SJoJwcpzPuVcBpJnZnmYLE=;
	h=To:Subject:From:Date:From;
	b=Qr+F2i0HVhpBpfNK7srwPBhW57gTXUus6kTUDpXADRkyUNDFcA4fLDJjhrLMTZI4B
	 7vt8C7H9fKbSHj41cW22aPDiwqyf+pftBnSUvutUW5e2cHJwkltCGAQIkBE6sPrGCf
	 c2AN8Ivck/oEo7atuAI05hKgMRHPt0mWDl5oC27W1O1aQUvdOn5+JbECu72zGoyGPg
	 GOAdqn0d6F2RbhWtbmYrI6bB7X89KbtO5Pfk5w/U1CESMSZ9Bf42X8cczj+pMzHkQi
	 0DNbiVbTdo9Xc9OONlx/Efno3sIfK7JrI0qLp9RfFF7BmNUiqZzlurXoBRa3lGxpkv
	 8TkJw8aiKI4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACF2C10F1A
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435614275.11793.2503585079723729226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e23e4e33e4c0e585a20ad5dec70f585baba421a43270486d57fcac1f00e4965
Date: Mon, 29 Apr 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714356142
