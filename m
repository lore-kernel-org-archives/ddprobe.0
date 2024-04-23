Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67ADF612EB
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713871224; cv=none; b=aqt8TP12d7Qcz7iWRv7/bPB+OaeqJt0Tf6tEbc9M7KDLtkUAXVdqBhFlkmic8EIyai3KZTMxMWRVyioZk3BauUM3GhrZJpP3zRnT275YmA4hlcCV8xcLSmLuhrpctkp1ASpZwa7hwgkDCLKoLVM7qMdGMJJiEZm1dg1wLulw7do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713871224; c=relaxed/simple;
	bh=EW0lgoz6EsZMrQv7hUXPg7SXd+MEcUhsIr+H5kuO4Xg=;
	h=To:Subject:From:Message-Id:Date; b=MgjQgjljHUdcqdTdSMHEXJka4yEA4GaAiuUBWzybFstYSADqFwagRcIGIH8o/5nCVFvunw3ClAO+wI2TBlpjFFp0sdW+s5A/4/uJkExVBcg+pgHmT2VE2qrDU0dAJh190NuPEosTNoGO8xdCAZitxfPSlGBwQZtfxRJ4jcpz5Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dr4xo7bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr4xo7bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2C7C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713871222;
	bh=EW0lgoz6EsZMrQv7hUXPg7SXd+MEcUhsIr+H5kuO4Xg=;
	h=To:Subject:From:Date:From;
	b=Dr4xo7bfAUYEo6gPOqiMnqL7SgwpLzWurYxMv9IjQIQR8atNPzTBXi9oa/7Nz0ZLg
	 gPfbH4TqCrglsA6ig9838zga12Mm7IUBAE3NYV7CXPWi6YDBJiVRw7XlWQLXs46/k+
	 pjBbXK3fPa/08n36PKLeBzMikJ47FSdGHP4f/PRqoH8YDzRxtilMmUoaId+78Gn/Qy
	 wkVbyCb02jBUwIilhbN9BCneGNMUsvOx3Ua3ufd4zFH4bwzWbqtp3bungFR5FzA6c+
	 66wWde8067e3hdCxTrdy6qzmbjRMeYiNYyno1zeehsxmB9EFbohCjq+bRp8k1ROCPw
	 JCe1JQTZmxhuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E51C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387122280.7979.15215624627930083913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8535997228b3ed449608460474bf91e529c9a118f9731529cede2a8f544f82a4
Date: Tue, 23 Apr 2024 11:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713871222
