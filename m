Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492AC286D70
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772068494; cv=none; b=JWVDUf52sOmdI0D1sCQ61iPdeIFI9hhRnGUlRvsF055fm7OlBuiY01hYQchnPmTilaWESp7EuGN3TTD/yLphHb0HsIYc3xSGWUU7nHzjhcwHBDXrs24Ce1gQ/mQ1zyb9GbqZ0HyCDdOC4Ca9TDc+PgYZGdJMH5YvwRjbqv9B7ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772068494; c=relaxed/simple;
	bh=eQ7478IOBWIT89yd7DdtRrlwjzYGHURaqPMLCfW5oEk=;
	h=To:Subject:From:Message-Id:Date; b=JqJc+oVEjohd/awdeVqKbuqHU173NZ4U/k5fvPBxZmFbeBydPA21BgFIG2qKE7q/0KZUpxO1w2kIAG+pNVS173YHxegKwbhGCWRlB6a3Ty8ededlOXONVGgreCkCYiMbfI8zIfV3YUxm9ntZO1tGOPBOjr2hYEKI8w0XXlb2Y2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhjyIofa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhjyIofa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08FCC116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772068493;
	bh=eQ7478IOBWIT89yd7DdtRrlwjzYGHURaqPMLCfW5oEk=;
	h=To:Subject:From:Date:From;
	b=mhjyIofaAt9wZPAcvca/h0rZGZIVKsibslR2kKUVc2kApQz+JBTTU+Pm1SpPCCyqE
	 jeeLDWsXDLaXdLkmRZ7/4SNS9zejUyflkyxTmCJzGglJ1orUnsXsBjcnnXmyHR/zGj
	 kiQ/36DQu1otjm8QWyY1e9bWrgeOP6m2HWKMzwI+JwhunrXrhZdRk4stBOue+sZ4rF
	 jtpuGfqBzmWh5MSWgrfqj5vmWNybkyyqZljt+Bsbf+TLBEBcQbF7DsxSWHpQKfP62j
	 6KKlWOK82Ks9UkBPCbfgcP6tmsulHnb/fv6B25KlAezAxjrEyFINf6MsKKrhEO64I8
	 RyWmtMMugq6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7BAFD45FE
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206849360.29480.7314905399301818200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f469111764eec560e8c207120ef40d69610675451a1670999b2c8c812e017d2
Date: Thu, 26 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772068493
