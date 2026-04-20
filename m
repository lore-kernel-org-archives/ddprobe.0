Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB50B38DF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776647854; cv=none; b=rdqAmailZIp3lSIcI8KfxgZXQ8JnHBhVAavjhHpOw8eJE9xWDQIpL1J+++cSHrTusoeLzg4n1UqZ9MzdEr0+oXF0miVo7+CZD2wfsPIDCnrifi7K8Jne53iFETviNUeO/YkB5pQZlMfCcNL9ENi5yulvk+PNTFGpeYAEwUC5tkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776647854; c=relaxed/simple;
	bh=IUdfJbA0j5Nk4PbUHO2jQVXhNI8pkKQUng7ionS+Fno=;
	h=To:Subject:From:Message-Id:Date; b=BrbZVHXIotlf1jOqXAcpYV5d3YLJRaCHvnvbdWdg2o45Hddpp0DZP4PmskkfqqW1o6Hd2uaGYWvV7NZ40ZDj/9deFnP/99GIpASl6udpag3NF46POz3Zad0PKHCk8e0XFFIOeUAuGEm7A8D3QhOrnUTsZS/39b3CU6S0f5f1i8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbjDnAin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbjDnAin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB217C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776647853;
	bh=IUdfJbA0j5Nk4PbUHO2jQVXhNI8pkKQUng7ionS+Fno=;
	h=To:Subject:From:Date:From;
	b=PbjDnAinFH90290A8tmBBAFmoaSR6xO44C3zFWEsTf2u/NlBz8/19jYabhmsq7Aun
	 6+g9F5jNwHoeUeZkQAHAhtteGNOTJzLJTJX/8FhgIbs/5yiQaGjcImtgSxgA3iASEK
	 QgrLrFyPRmZg5Y4CIWqECtK76mTlgY3PvfbH0k2FiXW825Dadn5T8kHc+QC8WawWA2
	 xoI6UkLA4nLW0H8o1tkJ82VAi9PTxdCucJW1zK1O6YoP4dnj4a3UQUHWRPsAcpu5gI
	 9JI2VCP2tmhXWdiQ0bg6xUj/VOs6+/WNbpl0ayg16wCgTFHJv+1hcumtDU1qGYdA3h
	 gVJthFReIz9Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEC2EA71B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664785368.13184.9964012467544519855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5794ce101c3bc505a42d2add3a1409f4faef4ceae50a1d4d8e41d9beb215d6aa
Date: Mon, 20 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776647853
