Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16684A92E
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736367354; cv=none; b=AK7YzPjBLVskxov80DAlrsNJryDNO+VmQdaD7I7YBjwiXrQzg6af+5G5mTYiPcTyk1/wv6fBP5nTIiHk2QwTe4wXOq8oaRfDjj+ovGBIU2TkGZXful3gKYuLSu97ouz9+lZscukzsCXtCtBJoq4vwV2q4mCiziDLnoSfcQ42C98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736367354; c=relaxed/simple;
	bh=IdSlMGAedZUutrNf8vKAuQx0c35v3Ij8w/BG0bLalgY=;
	h=To:Subject:From:Message-Id:Date; b=o0BAp/qI2BdqtOVtIT05jQZIg42N8EdQMeZsetFAEOw17dj3HO+M78zHkJBtpi3LxVGCwSdk1vKu/xYN+7bpJd0N/QAZsBm07+6jPxt9jcKZThgSlT+sntzFU54l4himlQVjTcNOcZKcWF6lMHV03KvQQhDt/0Dp7TDC2lADOpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KN3ODAA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KN3ODAA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB527C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736367353;
	bh=IdSlMGAedZUutrNf8vKAuQx0c35v3Ij8w/BG0bLalgY=;
	h=To:Subject:From:Date:From;
	b=KN3ODAA1O/AjoIT+Av9TLbU9UxdQS1TdNYWKx6dRjnooZ9TX3LjKECd5RFFFm7ej8
	 1uGi6Pnqwo5Z5tTv52ApaoKiX45v5ltJVhI2lvpC1uk3Kf+fIrU6/CGdNp8dk78EKb
	 C8hTDKZ0TctQ4iA9PDBgIXur5kH2F5qEP21ya8gek9rvfRtwNS/YGGGiBrBTSTn32l
	 +ky2D90dyT972KgDEaRAgyFW4NSj6HP+oRZSuZ69SLo4i90tbNr8ushcZIWR+Z+OIS
	 NMU2dJrUTMGmK4eLtfDuiKeRm3QBdEztZh3SX6PaImWm/WuP0rABmcth6ZF3Ujjs5j
	 RA7PDo4jGVqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A705E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636735362.5899.14582549225454709120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efa25d1a6fbc1fba5bdf3f5cc69be839b8391b8441ae1deefa57e19f1507add
Date: Wed, 08 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736367353
