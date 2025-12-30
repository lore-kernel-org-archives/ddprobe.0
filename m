Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B7DEEA8
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767137034; cv=none; b=irJ2lwEOetqdVhgzz1LXovKNnoqhovDR2czbX1F4qMaNSoYBk5jLvK2E9YV/h4e1ycal/ymVxXOln/VgUOgQK7yCcw1dZOQzE2Xod70v1d5UP1KgvtdgB0qtlp4HP6PQeAQvkc/pwLWB6PsZpe6nQoI9psMLXgbsvaZ7r2E1hNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767137034; c=relaxed/simple;
	bh=e755uMKjKzaPYyjQcOjVluY2I5tdpQGXQ0cu53YNmWA=;
	h=To:Subject:From:Message-Id:Date; b=QahmHQ6wvGTZpjY8IrXn5Dd32nV5Pq2t6mj7vYsoZdJXPRaK/sao3qidyHuJcAtRlvzZKWcJmiwrqFLucwsdw5M72No2pIoIC5Xf3M2RiWCDherKs8P4A6smeeKyc/lu/MhU7K3loB2d2BOSGnbasXOx+EIlsyenHkqpkPLU7ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGR56kjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGR56kjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC3C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767137033;
	bh=e755uMKjKzaPYyjQcOjVluY2I5tdpQGXQ0cu53YNmWA=;
	h=To:Subject:From:Date:From;
	b=kGR56kjlN4N3SG3YrAh9B14/3RJzytaN3fLFehCi3mv02jU5KH3l+YdtjC2cF57Yg
	 BB49AOOrpCMUwvgp52iaM95+TmbC7Vic8VdZzKRB2aF+ac0FZ5BmDBqtonw3CdYkUn
	 MVqI/vrhKYNKBD3aE82phI4vPuWL4qAtF4ambcSMGBjaSFja9tq4ttrNRSQCogNC9N
	 Mhrd+Yh3Uo1kXgzvbyE7baEaHXY8W7gU+aOeulMdLBNgu5v8JKGzGhagzucVV8TLDl
	 XpENAnbZl0W9B2/DCd3VDhq4wFYoymcdIo+/zFaMCiHMwbOMVk9ErjxjIfdCSs08UD
	 j4UxZ775wmkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94991EE49B4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713703357.6877.16726767757160575099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42838b6965a24c8212d93cbf24cac51f79bdb08a38fa32211808dc1acbb8b09
Date: Tue, 30 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767137033
