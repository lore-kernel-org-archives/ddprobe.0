Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024C835B62F
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771694094; cv=none; b=lbE2B47oeAl66q86Td9Jg3AN3MU1Ocdf9rdZhZ6SfqAOM9tlksh7oaxv2PwKcebX7SNK7frmCOJLcXZMIWzPX4vts8QjFMPnraGr1u4MG7L6kVCNq59lBK/7q8xHIz7FIn9fCuDaOseEJ/pSPYuk9xzRLMdb7fKT4Dw5T5+0ugM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771694094; c=relaxed/simple;
	bh=j6u6MnzqWyaBowbxqz2ycMw2r3ghf8Bj5lH+MFFv2Q0=;
	h=To:Subject:From:Message-Id:Date; b=TqClYxvyYGaKOeR4tUge/jziswcq94Zj1zQnaK/HM7CmOBdCfQXWgIaN2tIKX31tFy6WGZ3u9YwnFeT6Gi5Hq04Sz7DcHyXyFPYITQnYDS2Ho+HJ0ScnbWODOXMZrEWHFAaf6IPbYuWCytvDOCPN6bxdJIRVoScJcOYWlGPGuVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz0a1+tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz0a1+tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771694093;
	bh=j6u6MnzqWyaBowbxqz2ycMw2r3ghf8Bj5lH+MFFv2Q0=;
	h=To:Subject:From:Date:From;
	b=Iz0a1+tWkodJWuff4qYqXYKtJgnV/tdkHNOIRJF8VLgE9zfhoCOyRe+tbPrAsQoY2
	 4wEg2dXwxnhCb/M/o16Xcg58YOWSq/09rS8M4I2NpQtMYsNHt3nowEq2tFwlE4PEzd
	 Nq6tEzmtDfAs1RHgM8WpAQMRxtkQ+pDGwiXbxJBQPOzwuUdxuwhlgnywF0SLaZWH2U
	 UzLoPk4AmSH8GUezMjxIlrh0lCINFbU+mssk9yQyOsZ3QU5MeqObGZNwXmYiipXH72
	 oQX3gPzl1ht7t13wakuMUKINg1KsUZRWT8EHgKdHgWCvNLdZm0g4yNn1G67LVwfKfk
	 s49IC6zCAnTew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B419EC61DFC
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169409368.17687.3414707338103722627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a729a2b10fe422a2700965e755ef621b073203e5014e2133bd48c6000d3071fd
Date: Sat, 21 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771694093
