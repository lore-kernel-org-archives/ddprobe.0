Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E8826ED3B
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763979714; cv=none; b=BIdfF7ly+RbrEMBSm2IRT6yQSVBuhqhLHHbYSe3gc85FsvFHlfXQWBxZDJoO2+5yugQYKelzNawIZFrE+eQG/XGIuE/mIVjXWZHnplyrpa9VPLas45clrUJ6kkRaNuU+Pw7mUSz3tXALBDGjnIl0g5A9teydKQj+i1QfRXBT7Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763979714; c=relaxed/simple;
	bh=TYAPDnDzCKQ1q3FFL7mLmUHjh3gAt7dmmRZzSiuBv2I=;
	h=To:Subject:From:Message-Id:Date; b=J523hMrEDEGF9V5MgzAChbozOIV86rforYtgkOuYanUeqHwr8bcA/Max6jNsoKFJ/d/hyzu3e0/PLt3quKT8v3YhG+zLJpK7Yt0yOMlK44/II7lePmXa7sN1ZgasGE2Awz5Tjnr6YSpWL9RjeNgEJ/WpTBbCCNcCQ7YToAL82nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwrLZL0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwrLZL0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA130C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763979713;
	bh=TYAPDnDzCKQ1q3FFL7mLmUHjh3gAt7dmmRZzSiuBv2I=;
	h=To:Subject:From:Date:From;
	b=AwrLZL0Od8aAzZjGmkAvOcaxwUAhzw2CF69eqyBRMLg8OUHOmXMtoKJNHb6VBu4J4
	 O9YXmo3tGFKkg7pTcxyj2RLJYMkP8Hu1oezSUKHOgmtfS/oLtlRPeGRVb2dwhMDu3k
	 AhLxD5+y2aE3eXtnTnexAQs1ueVU+GfquGm0tk3OpoJWoEFAY7SHy+TMA6WHUPs9Gh
	 /6J9x+GqbkZiHEC0+nWO0wXHG91aY3QnPN5PrR5yOpumhU4zvoeYjWN9h3DIGCzYNW
	 KJ/vStFZRLqlVY13VtZHpFGDz/OCcGbw0FOq+HxUHkEyU7k/gLxLze4pnTksd8WtHJ
	 s0lFlkfg1ngKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974A2CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397971361.2344.10846449134570136275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78a5cdd6b89e77f3e9474cf1ae83a9987ba43c969dc694eedd146c5a4950a2d
Date: Mon, 24 Nov 2025 10:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763979713
