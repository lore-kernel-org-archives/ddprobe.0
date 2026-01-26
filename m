Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199430FC19
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769471634; cv=none; b=Q21jhyMXqj3LRyjqX04IzBX/f2fU+KYIy1PK71NSpgpg5zamlQmPI39Oh5yZs2pmKLvkOn9K5WNH3C98t5eKkf5OzAOMazpqQJ21OuLLSpjdyguW5BpUz6K2TAZugPCqkA30k8uOBr9XCjz/NZIpJdhi2g2/JQMkuwsRnhIjYgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769471634; c=relaxed/simple;
	bh=0PELADUul4SO0kuMDQqrptddmWLdPVVWMo8edc+7tS8=;
	h=To:Subject:From:Message-Id:Date; b=ocnlDfbPzlEGGeZ2mQ8q5XywHZf3VBojJuV8Z6N/boRvchF+n8NIpQwo0RGeIF7SJ71rdH4QufYLHJkQZFH0hN1wmAkGBKLfYQcjZFoYCG6R31wxuLqfF8wymXB9+tnPOYyySpHEue3KUSuoDoO9XoEvM9xTQboKdw5yDXCAS18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2XRxvIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2XRxvIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7D3C19425
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769471633;
	bh=0PELADUul4SO0kuMDQqrptddmWLdPVVWMo8edc+7tS8=;
	h=To:Subject:From:Date:From;
	b=h2XRxvIbi7CWp7XdS6CnrU9CXNwZENyYuqWw2MZHJChEDhbA1AM+4YZLv36NEEVlg
	 kUV4AvQOP2Zg7ObF+v8ySJYyUoR5NxexufhNTb60dFp+zVUmslpxURDVM3PHmiRMc0
	 h9t/9B5p4vfi3wxHXyOtkC7PSdADvVbW9evt8++okO9L0wWSWNE56ZFvyfceuyS1xa
	 2mkq9IY2L7gyWULNkbPgeFv6buDyRVYrzpTh4LhBcz0KefSv4569hYPG5oRnLoclLI
	 qNLyy+kvmKfoinoAi6qJxYg4kuvSalKU4YgXlodIQwVldgnjEdJfoqOxLfSop4RQwF
	 FKeBaO5hDGgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC3AD19523
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947163361.26306.9972110940792050548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb887c8a63b6a3c11b57af2bafd5a07053b38794d37aaa6bd0dff78525bdd02
Date: Mon, 26 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769471633
