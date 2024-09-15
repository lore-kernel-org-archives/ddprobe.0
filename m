Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412DF17C69
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726432554; cv=none; b=iOc8qZ6xMtuuYk1SFuqQ/baEYS99NBzEs2QS3yIpyBWJGTPwZjygJIlDyStxFuXQxcSeWZMMta17JA3cGDEBxXVXiDZYAsvdDvoyGMCZITiDKpTVkrEV+gXeWqc9tcnIeL9XSlli4N3aoEirC4+lhNXvBP0MY5D762UTpiCfr00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726432554; c=relaxed/simple;
	bh=fgyJkF/qQBrvoEA4NsHqIWYuaHjUWddywK0GAal+ygw=;
	h=To:Subject:From:Message-Id:Date; b=HEIoOi8Sxs4ZN8QUiVu9TdVGfoU13EoGvGOHuX3ekBoW5G5c+x0gCzNp7ily9Yv3RNfUTx9qCJD3+ROm3MsIx4xuGNYbv9Q8/YXNTD3Gls28mNqkRViJkXZbOCFDa/gY26pPCUbzmh5vC2UGB5tEco1smHYC0o4vVJc4AxUD+Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuK2OpkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuK2OpkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC607C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726432553;
	bh=fgyJkF/qQBrvoEA4NsHqIWYuaHjUWddywK0GAal+ygw=;
	h=To:Subject:From:Date:From;
	b=TuK2OpkBy0OxK/JisftbAFnZLGDJZxjjZB1yRMpLGb/S5eElPrMJzPnoQlqm2UYPi
	 Mqe7Cw9+ju+7RBqPtmEMLnJx8B8Y7CI4tBnzhoYYN1WBCHUghsZ8Dql00p0kfwJ6T5
	 E1ChiC1++D1LNrZTRrhEZq5smxMeymbVEOk8wVPf4ITjxKwiNc6rf4G6ovAVvMNxwt
	 mEs7eBGHeeld6d97+OMAs8PkO0qVvsxJnOd/4RLic71/41ZJ0jK26XlUsDXaVE1t62
	 JhBa2Wvr2Du8YS+/YuWasqV6HPGpd1FLeGOmWON53MqmWvdVDJFSDZi1ionrB1WAwa
	 XpWRNNOW+nMCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9991CC3ABA8
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172643255359.1625.7280371022288761879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cca87eae328960b1f6819ab166bdede677e50f01c77b8d21a233cb9d07afc7d
Date: Sun, 15 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726432553
