Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFD32F2E
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728189954; cv=none; b=SIMUlZIXEHc3cwFgiimufUH+ZBRlO4L75ypmMUcnArfI1nrhlxE4wd6hddpvZy8nKh8MzrCkJVjyewQtYPYxBQcA0qZ3rgUYdyKQ/ImrzY6W2f9JfF/4y2U5OfXtfgOy9BjR2zzkpWfn80HNr3q8AQ3uJWL48PucbMHiLdKI6XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728189954; c=relaxed/simple;
	bh=fLBLB3Xvgp0ZzkMwLO325fkzRP7Lw2eXoDvEtFQsLvg=;
	h=To:Subject:From:Message-Id:Date; b=oJ8l5/Fk8W/GvysPGaMipJyQuzUOUqhOHmvfDSmKQ2rwLiFt3XT4/RbH1JfRaQhdc2BDb3+jUF0hhQcWeTqSL9hL5b37VU+8yMuyJNPJSsgpLkjRXiB8sexdl4BrcoGyWlaBjcbWYrfHNKQez4aRrCapuE9rxQyqXHU0FNpxdic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCQOqwdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCQOqwdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4073C4CED3
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728189953;
	bh=fLBLB3Xvgp0ZzkMwLO325fkzRP7Lw2eXoDvEtFQsLvg=;
	h=To:Subject:From:Date:From;
	b=aCQOqwdSzAx86jwzO/ao1SabhK9gLehcezUojScrtzQEgqIRzHk+9LAjRSdQlYd3t
	 CO1OgIdsah5l5hdfVpOgbOx6KjtGeVg3WWmPuL1fzevRyUdHeD6JwfbEYEZfPne3Ol
	 wVhqV1db8LEENFUwNHhNNzWcDbHzOGaZ4OuXiThhE1rK2pBrNd47qKnfoCmDxxwepC
	 63uwRYdZyVeQwygKdxz6ReGqscOULp8O80g5syq/1XPs0BN6cIHENsSFe/Afh02doV
	 z+v8O1ZNSzsNZgJf+tubDXbvKNVvvvkygGwmMM5N9W/ySypNJ6WxP9y5TKXApb2wZn
	 LI/3t7a14winw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99848CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172818995358.1360.15662570935894723075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93b05d8682357c93b61ad280ac15bf159f9f1da54da0ef195bd599e7b32ca66
Date: Sun, 06 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728189953
