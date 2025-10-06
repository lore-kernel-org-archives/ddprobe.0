Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6A418C02E
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759746593; cv=none; b=s4bhzmA9ZRiZREqgLxmWcuUeiXsOK1MJ7FXUwO/GObMrD9WecI8LzJdc0W6sSxoTe/5byvD5Nr4bciiltMBhURkkh3D1jq/gDWcVWMIvriQS/pJtaVRElQTTtjuqwHbENt1snbp7FT2mIBo9/6OXpmdEmqnBQqn5ipEp+nAFXP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759746593; c=relaxed/simple;
	bh=3671nj9IMnvsa1+R84zhYv28k3Jf6Qk+ZUBIecyXIJU=;
	h=To:Subject:From:Message-Id:Date; b=iZYvcWIjZDEvcXliHbk6vtH/V/y1qLqv9CP4fJv0h193crw/dlryYc8hrv7U8Vj4rBxzOp7zVTdikZRLmwuJt7pqdFIcSXjFyFuT13GYzAyVdMn1m59fSoxNbi0VibJUJYi9OTVzLED/vXsRN92QrcmJo/xLKmnS1y7DC2c7B/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6Pra/W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6Pra/W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11FFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759746593;
	bh=3671nj9IMnvsa1+R84zhYv28k3Jf6Qk+ZUBIecyXIJU=;
	h=To:Subject:From:Date:From;
	b=t6Pra/W1vyrdQB+HllzVc6whm4feD3G6bQ8vS80h/XdXewiZPaD6gjlcNtrDUUqdp
	 Asct33sbqFgQpymVXSFqfCXkuXhEh1pKpVJHFfa2uGjIjeekGNbQE94OgcbQOKIN+h
	 rSvTnNZZd5qN4fP+QVUNsLzfb5qo6Ps25bPJQ/voX4qVlzDXH7vFzicZ+Tyt//mEeD
	 2zitzWuhnC58rCpB/i3nX5y6Q+Z/18pM3wsg3L4GRxp9ZJuM6Eg4ZHaMxQtW2lbN3W
	 GjC5m4tZPUMuR8Krunz3KNSLlgrgnZhdoRZ8/2P62qqImoJ9WxnRqb0F6Y8otqacoI
	 ILKB7GLCDz6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B2CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974659357.29621.930843966912929921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72430fba0b68d637b01faf3c0765337330fed83e1468c52f41e34a023c3d4a6e
Date: Mon, 06 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759746593
