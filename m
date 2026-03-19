Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082203B2FC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945894; cv=none; b=MBBRO5YxXiYeG8qs6wqiLw8BiD+KIApA9y3gUCtfbLI0uxqVTsxafwzV+5OdtqHBJ8JeUwRdfs9chbkxvK7fBaIjL3D3OQYanQWXnUAZtro4e488PJ0Q+S8FXFlDwMi39X2OfctQrbuZySCvZW/NpQXmW8130DRamyBCOOk7Rjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945894; c=relaxed/simple;
	bh=CPrbQBFjc0Vz08Hy9bsY/e4jSIC3/ar4CqMniSbx7aA=;
	h=To:Subject:From:Message-Id:Date; b=WfuAOghLGC0gpakg9Q6MR5kGvEvErLheGtHZk2m9biACi2gobmOe2qCpIHnJHkJZWg+jrpE9yHFrJm9szZ6DbgUvZEXTZ6s04iwPbBge4VsfuOkHXwA1HcQRq7XgX6yV4Ju3LoO+8KJTziwW/OsQ2hzsyrOYRBs+LShFLvhfnEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tcqi+ZVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tcqi+ZVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00F0C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773945893;
	bh=CPrbQBFjc0Vz08Hy9bsY/e4jSIC3/ar4CqMniSbx7aA=;
	h=To:Subject:From:Date:From;
	b=Tcqi+ZVHlDhi2V+RWcCT2980jWy3YnwxaKcUK7pZv1vvhhQ48orJkwY3s59tFwdxJ
	 1O5lfl4mfiL9n5ioaihwLkoT77dLzaP/wRNuldoP65d1oZILCfilYQJferG3CHlW7g
	 s3LMzxuT0o61f15a4kihKMnM9qH9C4jS/z0vFLAmEZH+AhR5uSuw5u/yCcXZrCEyx0
	 cZFGhvPO/GH7cP6QUE9R9caUG2Z9HmFq4AAAyaqcm5kpStGtuy6E392X2sVSE9CMsa
	 xhJ7hE9ibYVB5ZKjn4TOPWdK27nYXKVvpnIdcXwRCNR6iOH9VZlzq8MRflJr3B2/Hu
	 NtGD1V9ry+unA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D1109190D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394589358.3357.13512496913386357609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fefc8465bfe3364ad53cc1fafb5034a863df1094c5285a41f984a5ac6ff481
Date: Thu, 19 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773945893
