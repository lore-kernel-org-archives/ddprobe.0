Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A8D1DED7B
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754950194; cv=none; b=XFNK5r4s2Z+EdmukEVGh0YCYMwH3tId8oGvYtMaCUhviUbiS8nSwUQRNmyWM/Biw+LpLWUAk06rosmMwQz38N40YqtNtCP15GiRqjqezaDZs2Z1fCvDShJF2pARDcJDPtpMygiQr1MxPTe5lxl1avcapaTRdHs2RBTFoCAua6UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754950194; c=relaxed/simple;
	bh=3SwrshswtgnBkIm69XTlwoP1H/6ZfWgat+iApvUc4Oo=;
	h=To:Subject:From:Message-Id:Date; b=d8BiF/bkGxn1mqaWzSmibuiOqhdTQdGJYZehRnMCIHPrtyGNEwf+XBgFjpUSbPvwUs9nTezi4kDjBBwad3oltfIwKFOjU0Srr25eg7IzAdQf36hxHI/0JMelt2uM6e2pQREnqlZnVVuSRWQdkj0NNpUnBwM24BT44CwkfauaZa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6C0JNLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6C0JNLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2234C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754950193;
	bh=3SwrshswtgnBkIm69XTlwoP1H/6ZfWgat+iApvUc4Oo=;
	h=To:Subject:From:Date:From;
	b=a6C0JNLGZ18y7/LYRTI8ZB0bYgkJAAwRKp9QVxhdbrTo2t6QmuulbFvIFHBUFKGy6
	 JZVpPO2QhkR/3d45nw+os3f9ZFVNIpBlYi5BExtSmLIdxaJCMuyciAS9TIl4ZhaCn+
	 tks7C8X5ZwwnFfeZ2X6NLqjBhQUBuLQEb0Yhf79MsniuL2/yYXZxLOt2VJg5THeZ+c
	 tO5mqRE5MegoAZ3n06vHriQsms0inmh3Xy4YhH5LNe9CYRGiDn8jkzicqtBp1LTtmv
	 V1y6VRQAh0WhH2ywCiknURuAzax4LoyNXCbW6TuYde/xDNQI+AKp85X3pljCacHq+3
	 8bQP7cY92IKwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E20FCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495019357.11814.6020645907887055850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7888db4139ba791f66289e89a5e819ff144e4e9727aaa8b50835ea0fbdfc5d
Date: Mon, 11 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754950193
