Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBCB2EE270
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751058596; cv=none; b=oD2teqP4ZQ7T+/Hsx7/lgq8C7bk0OcA/wmpfzVLmr5pWzcJ392/6kYxZsj6ncU69eloFF93N4osNbOlX5fHts0W7B5Uj50coNSxfMyHM62/F64voa6wmRQltCgudFtJO5O+XrF/47E9WWylJ5bTNfdZkFwKgp+qdvgiVpiAPuYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751058596; c=relaxed/simple;
	bh=862scy38lSRCGqijZXQbxlhCJzk2yCVLRtv+2xOuPhs=;
	h=To:Subject:From:Message-Id:Date; b=djwMIfvBXoYBJlkcHEu6qhBlz1fHWcn4dhtTrZuoHqTbwRUAxkXpEeVejC3QMFPwXCbJPJEQTl05izW0dKy8Q/WJTukybDl2jdHEYXG3sXSYsMlP7ZGkvlr7iXYq7+7WpP1K285Zji1QZm4rewb28/YmdNUrlGglvXvN/TWQfaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itNWV+aw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itNWV+aw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B77C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751058593;
	bh=862scy38lSRCGqijZXQbxlhCJzk2yCVLRtv+2xOuPhs=;
	h=To:Subject:From:Date:From;
	b=itNWV+awkv/D1PpboeeJyTIFLTkzhPqwrn472VSSC/m5YzlxmrwIyi+P93g5KaA0Z
	 YkVwp6yM7A2c5tOXtyN4qxVJqRKouxnmICZnFQACTKZ1ADaQmKcX98Ghjwyn4oNwcD
	 jfkbgwfpLQIzogM5PRhyck8WCUZfmkOe+nX2obLGg/f1+Fw1CcZLOJN+s9rKrYiYIC
	 ABGpickLKXam6lrfBndKuA9/HZdbjOpZniNiiQF/7X7ILpbcRpbzOSwHiVdf0kol+U
	 BRf45YoPj1aK7g//eG8PqHzYp4AtTDy/bAoPDD98cHZPCKPhxVoh3a+E6BUT8MBMVg
	 p2t0q5DsdD//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96114C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105859360.23763.2139796439785931002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79dcb80154bd3b9fc071c60b7f9d1f8f1cefe9b7e638a1747e79573830d2fca3
Date: Fri, 27 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751058593
