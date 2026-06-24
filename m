Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB9C3033CC
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782331654; cv=none; b=Z7yPsIDVlQmCrFWIRNcxiMvjlaRQeWHTeZ7KtOYYLuBvUPwiFxLWJyCVnjxg8ESz1GetPtP21w43yiRxT4Dp+b1XqzGIV0uF3Rmab7Yn4WQDSO/AGKnY3cbatxckQDCXDPeNyJ1YHneYqrLWpnmh8S8kPzJp+GCeoMVUXaGd6ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782331654; c=relaxed/simple;
	bh=FgrkT9Q9BkN1Sh1vj/VKs5QBmBTiCu3ZJ3R7/tAmj/Y=;
	h=To:Subject:From:Message-Id:Date; b=dGcUK3sC8bXnZz1WiFWqXeAa+dRe0vdiMRQ3UFiItU9fCg8VDPyxpXBHjSafHB8LAD/Wog6e+coB9XrsxGH2oob2dQ7RRMzf9qyqq5ukdf9VC4DBAe4ezhSuQ/HGpUB+GNQIpeGB+RpS0wW9C4U1Ka9BGsuWNFZsoNpIgTFJnlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGqtAGIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGqtAGIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE789C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782331654;
	bh=FgrkT9Q9BkN1Sh1vj/VKs5QBmBTiCu3ZJ3R7/tAmj/Y=;
	h=To:Subject:From:Date:From;
	b=eGqtAGIxkAcpTGFTQm/xY8aQC7dJ7V9FAzDo6qCtnENPse5CnnPlxtqcDdLTgZJNs
	 fvxWePnHnJjf6+E8zuaY0BYsYOEqnpFwieDTLzEO4ytV3qHytyzE1YnvYc1Xt0/mEz
	 X6qKSNBVERR6MGDlWQ0NHO4M5LrX+Te1SO+7RyNlH1bC+M14KrUezG3hweE+BxaVig
	 ciSPkfj9PSurv9HA3kAQdX0GkX3JioBN924KBLxJgmFbYD2Q3mppRFkCU/VtS/7khY
	 tKkbWSuVYk0MOLQG060kMoREkKd5NaOHKkf+D4KnYFM0ux1KmOeg7ftx8aYmJd2g9n
	 309WAJw0Q74DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C795DCDE009
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233165377.25470.6496676255436083446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ddb61e2950cd5089e01c07c9a3a85c50e2d0c60d9fdb553568cbc534677fbe
Date: Wed, 24 Jun 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782331653
