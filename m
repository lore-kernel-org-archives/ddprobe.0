Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE18315D49
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790904034; cv=none; b=uu8U/GQY2pXTb0Xh6CdzP5iYJepxM8y/4tEnkaWpRpFLfhEl4UW5+Z6s23fZQE62Nlmm6vp7gQ430m21wLoNJ8KgHtxAvx3rNC0VkKegKjaU7SOLG9ZzqSTFhRzFo2E8/j8MlB1kfVNIwqjheR+AtAxM/0bz9uxUx1bsVGRtFag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790904034; c=relaxed/simple;
	bh=ZZx0T2mDFHQf68e7cwO3qarGOPdbhG2MSyaqci0vLlA=;
	h=To:Subject:From:Message-Id:Date; b=O1fVv4CFIUMSyvvqcW5RG3jKJsI0yjc4JAAmBWMLgjSDj7dkOl3HY602HFldYdIwsQE134zjOvVwatqLNkIX6MlvWJCHmA2pRGEG3GnIUTFehM9VBZkY7qGMEX5hoCWBevzbSxL7yPKSpntAVqvUWZs9+dzNmVvn8jhmGoigt6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFjYZl9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFjYZl9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3589C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790904033;
	bh=ZZx0T2mDFHQf68e7cwO3qarGOPdbhG2MSyaqci0vLlA=;
	h=To:Subject:From:Date:From;
	b=dFjYZl9N5I9ObbOLjMvoVPXK+rUuFtTCg8l+yxD3uGARZUMo+BRXLNRS8pRUZbmMA
	 SzSZu01zjzYs2ohPW2FzNyP83DhA4rDJe7mkUi5HvsMYPQy9si6YUQnKa4/Y5OUTbo
	 dv9V8a2CRU5aBJ+iTx0toTOyxPExqeu8KKd/DPQ0Z/djWZRwLTih+I3/wGY3IwmrVg
	 oiLpJbU361LYddA+gd5YY1x/zFbR4eGrKwCxJtI6FeD9pqipITp7Mqd1vHbewdP9Aw
	 +8Rh6uHQ9fuf5/l79uZ1IJ2FJYcOelTjy2uPjl6IZjUTDoqVgy0q6AjlGCoWGzQchz
	 nXhWV6hRAAaJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD482CA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090403368.15165.9705509040357397905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d13a65942dc89d2269da9021f67bc66ab032434072fb3e78aafb2f4215fa587
Date: Fri, 02 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790904033
