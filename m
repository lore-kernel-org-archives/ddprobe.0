Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E6C79DA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754454594; cv=none; b=tfDkxawlt88iOp/ZLKqLbVuSNgYQeTmQvsThwq//JrPnLSiPDExZWYGoiJAkD16dCw4pN92A+V7bBkST1sGZTZJXVM1S9EcAmmvCRMqwBeVPREYyWRBpv1knnQIwTH8NmLb4uv7wjqKvHFIS2DRWrH8qCFOjXNNRScQ8LVh3+PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754454594; c=relaxed/simple;
	bh=FMcnEOCYrxjI9Fo3WEpbL8F0vRohTMzg2eRRg7dCuI0=;
	h=To:Subject:From:Message-Id:Date; b=GjExeHgqtdyWMLVG5xfkI/TgXL6a1br9xjzJMRnSbJLYi1bM5ABdV2SMD8UDSvSX6FdmTIZiq6+sGF8IjlGjNXQNHhqHyyPkxSUKaoBo2zWu80Nsrh81c1W8sp5aDS9rkFOxnHWI7CZ6tTOYBVfvfSKEhxA5KfAyRdw3GezCQdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pp/K5Ie1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pp/K5Ie1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB051C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754454593;
	bh=FMcnEOCYrxjI9Fo3WEpbL8F0vRohTMzg2eRRg7dCuI0=;
	h=To:Subject:From:Date:From;
	b=Pp/K5Ie1XEmaegg4RBPNyQY9srrr/ddFALD3kiLfUYgahC9oQ1uX8A8Qbps2ZQj5k
	 YVZSO8mXhDStfYEIYqAYGiLcxTERfsRie6HfKlwXsWJreWkwGhsyWejRLF4xf2o04v
	 Wv97NxEOwgmXF5NEsxCkyetXS1XS4EEcrbeoK2pl3+rUaR0hJr+Wf2lYLTukPUZugM
	 Xy7+6jRChyTlFSflJ27dBX66//RIFULo86Q/1rh5R0W94Xq0kqyNcUYl8w0qbDILoP
	 6GloaOkJrmiq4THjXbFGC9FsFIdtYvM11w0MnaoiE1osrV31kyQD49rixOFdDhjWEu
	 ae9fceZLCSIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9769EC87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445459358.27715.16140107809422300278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcc75a28c2d53ce1c05325508433aecbabce3c76dc9cdeaa0c2c01f30127fbd
Date: Wed, 06 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754454593
