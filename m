Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CD02147E7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748869194; cv=none; b=dUQvYr4kP7jN9fvQTxil94Pq9jS0+NYTnYLhMGSMkATwdP41UlGkiNRmTxEX0ij0YQXiE95zDyke0loh5/bWJKK5HQxCZheLm/QhZ9/9czofb+K8vkd7PzGYBpFhme47ZVUP2jNvi6noBt7siU+L8nIa+0NOaCY+Qd0AnZtnorU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748869194; c=relaxed/simple;
	bh=5Z7NQQNF46ztAau6uQPb72h9n8wmB++WmqlNxz1KX1o=;
	h=To:Subject:From:Message-Id:Date; b=AdyQGoTY9/PtQSaxKh9sRxthleV1ElQlrJr+/Qfs/2crq7sC8Bx7Nnv4kuS2AABz4rnkG/l0LQF0Tm/iLR7xBDx2P34Tj9b3YaOy1vaIOgMhl9Un6sGZS/AJbLqBDNbXIGQvee4oZQh53y2MIZObAxHta2qdhzi27b85vm1nsXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0hgHPXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0hgHPXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AFBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748869193;
	bh=5Z7NQQNF46ztAau6uQPb72h9n8wmB++WmqlNxz1KX1o=;
	h=To:Subject:From:Date:From;
	b=L0hgHPXTq2l9aHfuV3bHhIgwXLZ+k2OiFlCupSap9GiBHWut195T9bbiFIQfYg+cK
	 netOOLhNFEWbjvkZRNJyynjWZXzaYTpTk5n24+Ih+zUFW9tsW1irjDvs9huc1jl16X
	 OV2gYAW+3R1aY1+NLzdPcE9g6Lhojxm/tB/iHFU2gJawYQWfztAUiY+xgjEetNlvV+
	 xSBo3rqV2fZeaDuwm5r1pzy3Y9eHZ9e4A21BQA3myEmiq9qWfCUJZNZHE1SGRIL/dr
	 0FS6VxVITu335QKWB/Yc4YCp5kpPn/9XevNEI77Qtgz2byrzlvVviyWiwu5J4vwY7Y
	 2KJH5layueE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90257C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886919358.25949.7880586121368946479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1105b027c3065b32cd06e94492b717b05c6eb98e0e10599af3a62730d62bc1
Date: Mon, 02 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748869193
