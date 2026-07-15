Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D984483A5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784115514; cv=none; b=G9HwDLkYPqOuaoJg6dbE4IBpawCe41YkZctO5PBeLGAX1WL9gVdyJBmBJIi0dWfcxleQ6T6XHO+L4xjSu8rphyQcQDOr1zpJcGnRwzD3hyaDpTwhoGvwVmQVnL6WjEmKp42jQRUgNqG9IZmVmfw9gNsDboPcOuyHwghLwV2uU+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784115514; c=relaxed/simple;
	bh=vOA3vu+ff5KtCDUDtALuzHSdZFzbaO8adJYMznuJ+K4=;
	h=To:Subject:From:Message-Id:Date; b=rGQPB1TdQfTxtoVlP8oekezrcEs6p1NY9L1L76WZnupWOXBKuG0U0/uVh8DI+eVuZ6LqRqYZFzmKRXbsjvmnVvgrTyeKfy1LMFZ7i1xVIC1BpzjO+jzdR9zv3AdrV39D8CC7AtXBC8s0GIZWDHqaR/73LJhKZ+OC9yz5k6R0IXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuSMiQ6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuSMiQ6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE1DC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784115513;
	bh=vOA3vu+ff5KtCDUDtALuzHSdZFzbaO8adJYMznuJ+K4=;
	h=To:Subject:From:Date:From;
	b=QuSMiQ6PQ0OhbMZHUqKlPivluZGzHIQ1zJJq0bi42oYTTzWJRuCxrZgulaJ7BjMw1
	 SXTyqdGOz2nkPGOdNGzODirRa9bZJn0MpFkkzGdwBvlLwGXYlr3YyUWkUbotkvza9Y
	 v3f/ODA07Kx3ZxctIGrv9+Wu2T5gvIHLEouy+xvNF9O660BhBNnZ/dTRshGL2DStWj
	 IpVJ7ZMdAJKOQ8+0qF9cwtSrK2gwi8/4oI6rU8qLUhVCc/1SZn2rF36IFTV8OOcIHt
	 +cMOoLD/ynUrKv9OZJZJhMdGV+jVi3rE3mri0U6dbZG9iM8IvEs7F5Lg+nBr6ufmPS
	 BcfxstjooruRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA345C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411551368.10698.14868021636598033858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e29f5c665d64ca36c17cbd7441f301353fe65fcbe56e4d92c6203a05d0fe2b0
Date: Wed, 15 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784115513
