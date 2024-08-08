Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321CE184101
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723101354; cv=none; b=PIKCq7n8myu40MjlxIlQRI2UisGvy9V7MWRWWZHK8iJ9U573VsidFLe4Fwv5PRt9QB1I7XxigghTC/wA4MoKS2YVSaNy3ldZ4vJ+XFFxdAZP+oxc98ZzAi3uxD804B66UkE6zjfTzqQhpJbAS3+24CPpoZampX4NlEJHR3PZmtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723101354; c=relaxed/simple;
	bh=fPFGd6v8GIHM1U4qfWe2LaLcZ8o0vzlO8mxzgf+J4a8=;
	h=To:Subject:From:Message-Id:Date; b=GOIPwFVY3epBu9pP6WDuECaSDhv5HozgPiRCw5/awqNHu0+5EAyDbjLlK1S8mZlJpGe9JywQhf/IfwWPJ3HzTvbByTx5ut6FkKbgagCY91X4OI3kQ+/i1KkmQnvG+qVumRfkYgPdusiAlK6IaQYYe8cC3QmwoLl8amLtYgo3L4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmFIwXcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmFIwXcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2BEC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723101353;
	bh=fPFGd6v8GIHM1U4qfWe2LaLcZ8o0vzlO8mxzgf+J4a8=;
	h=To:Subject:From:Date:From;
	b=QmFIwXcIh0enuapq0guFALWYgiLWkrNu4obVFUnHugGWwQu3GYFSoRbOnSaIHG0d+
	 v5NZjdt+YIR9ZgUdiMt5l0gW75btlyWfmHgXl1EaMU7TJ3mCRHPtwIwIik0g7+uZIA
	 eOQ9mwKZxf8oHSNdQMeHLUmLSVbODYhxfaENK32blumHLYXBug0gCOqwhxjK51z20J
	 BGuVKKPGaERxrvUTk12S3VXGkWDrJDd8N7uienTPIlOHxVU116GJaCpO6tH+P5w1Ca
	 X6oK0zr8Y8gXu0oLfILb9TA9b3t3FLdRil5q5Kzm8wZi2yUYSgfyRbyJuA6CFUsbVZ
	 rDXcy2nWVnzQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C84C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172310135361.8981.6041089030619807884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109237a2095433d28c1327ab87b399377bf738481e5778311d4258cebc2475ab
Date: Thu, 08 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723101353
