Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D44131BCAE
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783652914; cv=none; b=oyT61Ap1mXhoI4ivHZ5A498NdFly7KMYAgA/jH/s755T9rJiC7rxI3sLO2moPPyJRSjtgtQs80JyrdSOdsNK63+XKRK69FZr/QIvqJx7kw1MjLcTz93ypwl3/xfuwUhyj2pVRYQEK/xwcfdt3/RNqMsx/m6R51iymLtLtKGPQrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783652914; c=relaxed/simple;
	bh=sq8TU3HAMdn8E29ktlt8wNMJW48m+1l5/PNnXcffD7Y=;
	h=To:Subject:From:Message-Id:Date; b=cTs9IcdhqPfzL3GZBDnW4GY/66WiSpk8E7GogUye/ODlJUrLKQlAcuA5fxUG0IKdo0I9Fw9bwWs2t1qTkkfRGwYaLTa364d1EeXcUxPI29PQMlEYMWc2+WYc7Y6El508HXknq49TmOI6NIAUUCjUgFXVICixRAYTKblD74w05f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCJdaueE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCJdaueE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4351C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783652913;
	bh=sq8TU3HAMdn8E29ktlt8wNMJW48m+1l5/PNnXcffD7Y=;
	h=To:Subject:From:Date:From;
	b=nCJdaueE1+HewXoIYueQmPckHyb943M/+w6TAFp3g8NxTo+26gsOoa70lI9Nvx8S5
	 Z3GfAZ4YHWLWE9wfpcozei/pXWUnE+FeFIpWerodNt9CD6dgrI2S1Hd2S0jhMjC/eh
	 eBdmxzSwC9CpBW9r1Lwe0W9sKbhVB6OFm4gPhVFMY22P1ipdQm97hreRrkqrQzkpts
	 dLe9I2BStfFhvwrVbN9IhegVzQpCfc4gv5O2I4J1+tS3rmbyd3zbo3FTp0go3LWpcU
	 G+D6jSBIULRYfw/9czZsdguQ1soSrL3IoFlEH/aEkNasBRGYZ8cUNjo6nJy3jT4vPK
	 1R6PiNq8ACxEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF50DC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365291370.9858.2517035061318421904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f376ba1a88f7d8be3c3d8eecd756be800b9dcdb193e43843ff5b9bad959868c0
Date: Fri, 10 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783652913
