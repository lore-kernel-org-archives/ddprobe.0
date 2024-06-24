Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738544AECE
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719217343; cv=none; b=pTOEx13JrZmHzq5f4g3lUz/VRIsJRkV6DBcMNwjO80PppAaYd5FaTlVTosT8A/ks18VE7/TFusM8mq/bP2ecFmosXatadCTYxoUwY1glj7SFt9XmQQqEZOoio7d8WVWHxFPyTcF/9R5wIfWWquUqcDD+wSmJH2VYNC7lm+aqFWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719217343; c=relaxed/simple;
	bh=GTCYItprSnRCu2bKHNjLVQ7t2r1ARZkznu32y90IXQc=;
	h=To:Subject:From:Message-Id:Date; b=HzayG1zAYW/OVo95JjpuqhJRkox2hIF0ypfst+1K59IFqk6aim9noxy5awYKTJ40/OCK59uR5fwmpyxx9JBg/mBfUsgd3xQ1I5bJW2DU0kiIu21ebOpoDJuSgMR4MmMUDd1DRqVOIDeJrTSTIu63edA1uyg54jx0b+gLRayr2Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKQZ2nSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKQZ2nSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0810C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719217342;
	bh=GTCYItprSnRCu2bKHNjLVQ7t2r1ARZkznu32y90IXQc=;
	h=To:Subject:From:Date:From;
	b=aKQZ2nSMen3HI24IrJnxQvu3C3IkEJqZsZQIVWmJDSSjwDHVF9hE6z6ZBjKFamwDP
	 uhUP1v3KTq8/N5PXP61bg/1whPrcMj1QNvE9dPlKh3Uj+/2cRndayjzQ956M8hoN5T
	 Kk1P6rWhWzuN8cuijvdZybJ8X0kjqs9W56ZYzGiAGaZ6o7YqifM8tTz6VKmNO57xPs
	 QDVlQEKakSxxHt7fH3qHG2BN8qj/e95ue+RsrdN1XNprOb02ecTufNJD1WwQbn1Ofx
	 RsE9WFgr53wDskAh3NQSJGpJf/EYl+REKGianHmr96mPdqNgg3HUhxCpNYCQQ9Q6Km
	 zzAjWDISEA6jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2C2C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921734282.16264.16649267837684447097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b405aa07a847f3e33127a667dd50f41089e07799205f3e8464271c5a40b85d5
Date: Mon, 24 Jun 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719217342
