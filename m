Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2661410F2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750638594; cv=none; b=HG5q58iLOA4HAHF1UTG4SRafLevZ6+5Uq6rC23C3e7rzILMcuzTxJ6GQWOKX5DT9JooYgG3LTSUTtFxE+SjFhgY4L8zR1EIsM/Pt8FnyN1Wfh338JU4BsPuFRDnN05bv5Gq524NWKuXfjWSmQn6ntbMciq4thp+Rf1FcJSCycXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750638594; c=relaxed/simple;
	bh=CiOUxYIAZA9JUWKOXyA1+/XWIJLHQXW2d5QHw0YG/3c=;
	h=To:Subject:From:Message-Id:Date; b=OlmHFaw2Q88UUZiJo9ZJM/7vWJ3N/tJITYoLklhUe0jmtQjZV3PxPqGGWd2FnzKDt2vqnDxgu0bzxqHYOiy05ytTFvRcG1GWHEsfx5iPsqnUSkzi80QkH1q89ZQ5PayBTZ0ROgrbu1iEdi4BbCcehsQY6qcBRIeeJng3egb/meI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGCTkq7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGCTkq7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EA7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750638593;
	bh=CiOUxYIAZA9JUWKOXyA1+/XWIJLHQXW2d5QHw0YG/3c=;
	h=To:Subject:From:Date:From;
	b=mGCTkq7EmD9MR5H+kkqVMY57n2QN4djVdqPUriS5SH/6mh0oTzTo/61l3MySbmNBl
	 Y08VLTcE5xKv2chYCXlsWvqnuA07VAVs04WDwoA0YkZWy6rY1EBaDgfwvAMo/04eRj
	 SNxdH9jYCacWd/WB8hYKJOgZLlc52/p8+gMQrilOa5K0D1KWCDrDKmiT9tLuzb8bip
	 aAhyVZ6CdxGjNXFFQJQIFBwntUs4dHtYNHiwwP7NoV/wpH7WALxeNeeJS5zQo43JFq
	 Fl7d+PXMSRSsh0Gafc1W2D/DRsgJ5ATUTfdcg4kxQYUwhkmHK35WAPoT+xdjLZupqx
	 5YOXlqJn9tmEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E07C7115A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063859358.2838.15391423914149538396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bb007c5c9a885141e4dda7811e652115ae022e3ca8955e96153cfb2f62a74f
Date: Mon, 23 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750638593
