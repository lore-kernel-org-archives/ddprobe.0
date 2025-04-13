Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2D811185
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744504194; cv=none; b=GHFUvfbaG6xulFqvdijcAhhBidMRGXqcvIJXBJFVAx3/ONscuZvkjfib3piZkhhQA4apBc86jCAJu0hup4Fzy1H1h672HfGsB5RAxsjaN9jSlplPvS7gMnaKo0VS6xUfmhOgPitlD2aLHitG+li+MbS2eIuQgMzcAA3u/+ifsIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744504194; c=relaxed/simple;
	bh=GCMENXONRVTCAItozrgfGOkrTO2QSzEuU+iM7uUwh1c=;
	h=To:Subject:From:Message-Id:Date; b=qYXGxjZwmMWZOnCHsbFmjC+APbsj05fNl5yRz3cx7wbnVKD4MuUkAQccE8y9SXGxC0T3Gcv2hhBqnqltK9fPqm33YRZHfVmxunpTb1Td7XW+0BalAx/f6ps5CsjEycIjmbXpFtbVzt85bYv/waUtrBCjdO0vcKZKOWLMvk0Li2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWhUT5FQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWhUT5FQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71C8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744504193;
	bh=GCMENXONRVTCAItozrgfGOkrTO2QSzEuU+iM7uUwh1c=;
	h=To:Subject:From:Date:From;
	b=lWhUT5FQmpEN8w7rA/UPSKDrk6UU7RxSlzCXFRVIFOBYXp9PnHAY9IKsGLzwKXVFt
	 o1FbD4M8XLKQxRV9UaqYNDAw6ryis9yqtVwmSdRccLWyRtU1I/wXIQekHQkFCHUlPB
	 WQR92+g71yDYGSxrvfEQegS5e4Gx1emn4Vq7hcE5IVLvpUqTrg5DP4cc8txNl7zPUJ
	 JxvkQO//p8xJnEOU2IFyacm5wdGMRo/JUxMABl2TdN5hFHsaC84gBXhiYGlEklKJlN
	 mHOyU9wDZcRdM0D/bO6I7rNp2wcu4bDEmhHW+Z3xupD88zv5JV65r9isnY4DklHfCa
	 lKRzyBVE7HEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8B2C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450419362.30299.8866965822457419615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60b5427193b87a5e545ef4da61bc9dcdb2dd99b168f3eba7c9c7bb8bb7f913d
Date: Sun, 13 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744504193
