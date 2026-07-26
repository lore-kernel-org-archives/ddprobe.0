Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E1D169AD2
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785028234; cv=none; b=So7ImsdM9FKcGnq8pWQONB+oa0446VnXictrGqjOD8Ehe6iOz+VVXXoq/Cmw0mBPKEi1ZhLE3Et0P6+TU16/U/y4hy3ihkmEcgFWcZHQahrvlw9YKHNdphGn6c/xpV2Ax5lw6Kfi+/Qm0wimVa5RsnqtGLXgSJYD5lZXwUp4X8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785028234; c=relaxed/simple;
	bh=Z94ldS/NMIp2NGfSTFeTXkHpaMW0IhSs9JfsiE7cjJs=;
	h=To:Subject:From:Message-Id:Date; b=hAViPSUGYBANBIVWjaqAA0XOoyBW0Py+WPOPTjhdAYlMwIfNmkPLuAdY1ArNrBNGh0LUrKd9OlzMJJ/ap+UkrNOhB55vWeW0/4CABigCNgBzLkZIENRyqt89TNt6gyb0IkuIwVxP/BcYksm17uXtUBgNNRE4XA5Q45qwAzXvn8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKdhLSyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKdhLSyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AC3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785028233;
	bh=Z94ldS/NMIp2NGfSTFeTXkHpaMW0IhSs9JfsiE7cjJs=;
	h=To:Subject:From:Date:From;
	b=fKdhLSyFdATG6y9FZ0ephbOXusJ3R7XsAyDM0W8r/JmnJa3h6TDcSso9UR+qV+GpC
	 r1RUyY4zWDPYNve4rJlmb+Y5jLbGZzb3C72I9GX2EXJ0PPdULAWCKUO5QRGKEA5Sgd
	 GHinhxtxt/CCke2FrVTo+rvNQf4PK9fm33RZPra20s/O0KyxT7XJumBaj/l3v8K7RB
	 /0oWnKGUJOpBLaIhObenTgvLggxZ8hZreoSg0I18f7LzFvz7BaTMTxTVORr0RnfQxv
	 SitNBwgbGftAybm2C0xaFi7AsIWtCVSQVr2KrBm9EB+Ex8CdIfcugftEU7EvrxGSh4
	 adY0zZIWwPPsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF339C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502823368.19686.16696282526008703689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3818366768e00013a562c4c2e936b2c105f6521fd608042c18323e406fb6f11
Date: Sun, 26 Jul 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785028233
