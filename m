Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126AC1FA14B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736877354; cv=none; b=nn1tDkqaCFvaaZ0E3Mn+FqLtPBel05pfVGtAw6ZU2qK73ZKHi5XoJowDEiqqZ61cGGZnFat8tFLORGEdimcRte9LeYIm+Wvvi4TMNns+RXsmDzk8xq1pa+FelPjXW4tLHf5ZjAn/q/0njV2U/ppn7dnZTkPS78D5VEDyvjFhyxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736877354; c=relaxed/simple;
	bh=e1v2CQbtsC59ZPgpOAZCly5l3jtwgTuFfhwMQOL8pSg=;
	h=To:Subject:From:Message-Id:Date; b=jrNwLEAns3K9Ut40lrjWUwMy7uQ5IbeK1JbtSqXHcyr7/1UGx0JixDg7VqypreZl7y+hEw+lN0iwLX66G6HbDCjpr4yK43I0GFcYzFDtsYy6qCxaYZfJ3JE8kc9U8HizbqBXDkENElGGYSUgSk2gVSFP+czN6VN4jkmDlYarH4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaSOtqMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaSOtqMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D19C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736877353;
	bh=e1v2CQbtsC59ZPgpOAZCly5l3jtwgTuFfhwMQOL8pSg=;
	h=To:Subject:From:Date:From;
	b=BaSOtqMJNWtuidxY2hIchO0YJAe9RZwaKrXyt8CXDusTNkwVx6j4fDhGEM8vo28HY
	 efIL7W4EQaeVL9ArTmKqe4KLNQgAdYFiMhwiNcTHShhQaSKjrEwEDoHsn2/dY7cevq
	 UgOSr0FtpFgpXLfN70kKQKVKrvMhtaSf3cqfi1YHveyOraPp1zeuUqZ8dSQ9mBAwQ9
	 ZN61KPXnz+gvNz7AJB9c3/+uXDEgayONGxY1kQpJuezXSLkyHVFZCts6QC3mxWQ1zX
	 lp4j0Mv/oCq6qEcNZq5tzpr17t+iUd5jiAvy5/G6NHQinCSttXH+oWuS2oH+vET39h
	 mZ2yHrRLjfnpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F3C02185
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687735359.18229.6420005140091875742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7637c5db49815f2cc5d3fb26613a6d4d27dd943e3eb573822afa380af1eb45
Date: Tue, 14 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736877353
