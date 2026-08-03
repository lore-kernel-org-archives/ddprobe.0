Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2952A27603F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785790834; cv=none; b=Gn5I/vRQwyT2KozUp63R4e2Y9T4boxusEQGJvlqODR2UsfHLeTi6CPaReFy128WxYnLu7OYM81jE96XD7iWy397RZSVf/yJj3B+/X7k4bT+r8uVxuF60/520EnD9j+KXhOxiqHjOicdwPEzh+c+jIpWGwojPLACdsImiHkBKVWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785790834; c=relaxed/simple;
	bh=EZrZN7X9opWULkcj2DzsXh+4edmQjfqTPGoxFpsGWqg=;
	h=To:Subject:From:Message-Id:Date; b=l2BQ/OPhHrlyPk8DKftxUhShuGks/7CAfQcjhqLBWY2v7o0JM/ErZj7rEmmYiQWinPCP5FN7Yno1MRKVkuSHTldr2IFoKeVNCLhvLCZrAU3/jnjQvSvN//Yx6XFi+8qPDl2Cboyf3V4V0/iZOJxgsvO6ZHca8QfMMJX3ME9rvkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rlo/nK5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rlo/nK5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14CDC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785790833;
	bh=EZrZN7X9opWULkcj2DzsXh+4edmQjfqTPGoxFpsGWqg=;
	h=To:Subject:From:Date:From;
	b=Rlo/nK5UhufPWLMpb4fPqJU1z1ZNW7Fcw39jEvmituPjRtEZq+P7yKeaFvRuUTp5k
	 4Nbt31kA3cWLQGw9k6lBO05ICxw4xdEGFhI1JljQv+kRPbPvVKF3adVqRrlhgDzgot
	 tSFNLGxXiwZgEwnPRO7emP50qxy9+Yl6TYTqNZIQeWb/S09eDyQa8MoGgBFCuiAdFs
	 JwExqqOk9Ma/vPXDQImqlVTrhctrlfD3xdRhYjNG8Wv94npw8R803J+4YIMCNwRjM3
	 HyJAxU/JvzHqOaph4hAl817KFbCEIL/7i4JZfuR/G9Csiw47d11feEn2md7DCb1qsX
	 URe4Vturin0Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE1EC55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579083369.4170.16761416199178070729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab029fa84eb6eea83c71d297afba82c42b8ca4eef9a40d4df44b30609019803
Date: Mon, 03 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785790833
