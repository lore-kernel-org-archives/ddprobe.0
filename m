Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EF63C10AC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784830835; cv=none; b=s7XyWGfbTz/5eOcOGVvWtqsn6eCvO7QvjVt6Iq4BRU8TjOR3GqvacAcR7qr7fdfjXgYwX4u+rU8zKkKLwbTRoMLwqOZZjXq0OUUpemQVlb6pmW+6JF1uhlfTt92IdmfNwyyzVsRF1xNmRsf9vjSbyyc8ye2dxifPu2NE0QncsEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784830835; c=relaxed/simple;
	bh=RYZ4BwXxx7baQSxbYsAwrLUc3wTOED1sJRBzOfEbyJo=;
	h=To:Subject:From:Message-Id:Date; b=EpmG62wITEm2dfCz9LzaFjiAvxGkeQ2o3daBNZok1oLb1w6NYN71H24R5f8bMl70AgL3l/uEbeU7j1IgVWnzGDViOmBbSjmCsAgGQ2Toaf2EaRH8ytd+ggHSyg3WjxkDksXkXABUN0eJlxpjFproGzxUKLGPx1NZmhBWPmSl/PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXOrTXm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXOrTXm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB48CC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784830833;
	bh=RYZ4BwXxx7baQSxbYsAwrLUc3wTOED1sJRBzOfEbyJo=;
	h=To:Subject:From:Date:From;
	b=YXOrTXm4Y9R2TZOttg0TSFYKk06x+B3JisbU9hq9/d+noqVjjcc6FDERnuiofmSAN
	 MHxudFDhHGWnlo/6N5thfjDQB1vHle2ACLf7lKwOBS5Q6V1BHXNYaJUJcMUbbFNXMf
	 U9NBSapjPKW3/Ey4Iyp9gz5VAp177ag4LpUsqAPoxx5S7kxeK+29LpqmvOn9ConWkX
	 i4A+Cv3O1gMzEMNj1JP1wcwuiKSNk55LOMnIH8Z/FUHw1z7R4CP4MYMb5JsRvt01/m
	 RbScEm0wL6NIeRz3ox5YBLZT3agJlI5DXHf1gE7KMgox+nLbShks4rMIYD0DXBNoqB
	 Idx86mOo3p05g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7BC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483083368.27565.12439233434926761415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5be4af17ee646aae3ce32569c73406fb16b062a4d2f46d3e925617b72ff0448
Date: Thu, 23 Jul 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784830833
