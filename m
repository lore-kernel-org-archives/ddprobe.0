Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E349E8592D
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711043297; cv=none; b=MAPyiVr3mkvkUH5FR3lpoWaKKQ8UY7WZ7xiUOyB0G+TPEgxEp/ksL24VHyeI+CEYy17GmS94sTKQSO/FA0pYb6D15YJOxfQZsLg4IayBjPNg7QbGd39bLpS/YQQEi4chZM46Z28fitRsuJEiokneTdnke/imq+GURRhLPhidWf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711043297; c=relaxed/simple;
	bh=PU88C5rMkzM/hFGKEQQmB1PJaqkHtvwrKWZMTmpUhIo=;
	h=To:Subject:From:Message-Id:Date; b=O0SQA6NP1ndqEl8zJuxMUbgZ+E2tB5rIURkCxWkheBDZwXTaAo09dNqUtbxbcqqj5LmauD+vQdq4BsLutv2LT09VeEQZuEexzOXyPPnWkiNUHH5HlcAThoQA6ymoy7WdxWNI+zd6MrJQQE5PBZ/dFxgcHc1oKPk2Mnu8rAYDSqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUo6C68s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUo6C68s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D1BC43390
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711043296;
	bh=PU88C5rMkzM/hFGKEQQmB1PJaqkHtvwrKWZMTmpUhIo=;
	h=To:Subject:From:Date:From;
	b=HUo6C68swLxq8C4uo0xFXNf5UZbLrJRUIxs4P+UqSb5aXvxH0xMlXuw/w51n9GZA5
	 av4rrHsQlJCuUPmztQXFn2DPdZvF2t2PTGRNUSGB0OqA2gjZYHUivJZ2XaB+NZ11pU
	 cCTpz32ez7QRnci4/g6IuZPQrs8O67Hrk0r4UXAuY4M9u5/PHyA6wnWieqB/ezMlUv
	 Jz1HMglkYGPbMLQVJRe2XzxMtBmfity251IdjbCI68dI5Gx4u/ZPcwZoDdPl4yppXH
	 zH6BlBCRs3oNuWE+fb9LJpYjlY5qC4/JrF5ziUxQLdiVzyR8xZrNxicsH3fZv0NKNT
	 J1gCRX0akIBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F904C54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171104329637.8026.15935627070981363063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31622001379838acc573821cdad210705ad6bd59079befc90f2ebeb59e04a541
Date: Thu, 21 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711043296
