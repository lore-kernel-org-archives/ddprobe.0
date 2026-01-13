Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E944230DD1E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768328034; cv=none; b=FJ41qErhBGy7WWyui0WW4rVdJ72xga4zHSOw2rh8pQqJ85iV6LkmDS0DQtgnSKGaUFmw4T5eItcjB0/S2rmcT43YOZ6Ub1QgzCJiskAwT4gUuUREgeCkKZfLTY7uvOoSDoR9aP3nJLT8xVsnuUVqxKtKQvqvcztRhsHH2XpHI+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768328034; c=relaxed/simple;
	bh=qK1vv7HQAJNm3mXkp4+ip63Rdq+BL+y1K0bWXsuIqws=;
	h=To:Subject:From:Message-Id:Date; b=TqvB5nGBswmI7PjyzVvz1vlw3tn/m2xnBgm4PnRHrDiBhB7O6U4iPE58YujAW/GMTJU2+hDnzlpOqq5LNOU8fRWjdcV9jd9ErdLrL174i5IKTGmzduX9M/0jHhgWaDkWhF4DkrI8PYpLl4C/GFW5MDlLDi3OGu+hFu2ICeuhW34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J16WFgCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J16WFgCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96239C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768328033;
	bh=qK1vv7HQAJNm3mXkp4+ip63Rdq+BL+y1K0bWXsuIqws=;
	h=To:Subject:From:Date:From;
	b=J16WFgCS7qjz3+y8uTo1qgmGoL+PfrwhYu5FFzS2J4CERQ54cmiVUv55/7FljXOm/
	 m35vR2u7WNp4TByJj2hTgpI5togJXRVaEWC3VGBRdM/fzRc0RQBQBjQhaa5YjN+Uy9
	 2aHL8WvTzm5iswckgAqk70O+6iX4vNjEugFTGTfca1Hy/tGIQakuVDUI6NjgqI+n4H
	 hdOBPdFW6/ZjfzA5WFNsdivMNRcHCnrOuDwrS+UGXvgc+ACThjRVQCFq6OVqUfjEFo
	 6rT4ys9+QAYc8/K2tFxtiIEunOQUeP74byeqd8Ga+5gWD3mHrfBrEvmQK7X/YCd8Nq
	 aXXAMu2/43Fmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F736D2F356
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832803357.10106.11812422325770589510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465a6e6cc3d6f98b92f6c4e3dedbd31fbc75bc43549bf8fcd38e7e16fcb0113f
Date: Tue, 13 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768328033
