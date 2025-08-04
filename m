Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227CB245031
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754300994; cv=none; b=g5f3nUOmAkJ2rzRfuEMjQvp2tKY2AsBY011J9lP0pNpBGBGf6p22m4MqUphgkX5Fp7+yhBWOTiTcju2c/QtBjMvYaBnSyuD+ytThdbppMVNpJm56vqSUT1cweWESS4fdfvk8LXB2ZwpyItKP9AE9m8oN74kbMSc+G9owK0HQtP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754300994; c=relaxed/simple;
	bh=kbmJiFzygvD/4aCoBOaXrG9SCYPmhMk1CCsFhQuo7VE=;
	h=To:Subject:From:Message-Id:Date; b=NVYcF0vzVPTeegfM/a7XvAas1cdM8LjkwiYUVFtyxx80L0UaqX9TZ1Dtfrchv1DDCUu+SuVbS0RhBZ7HHblKdITvR5a2pSk9eyPAcwmPYn0LvGg6mend2hU3otFeq0fD9nBU+TtB/WJ6cM0SatPPRbuiCJtwlZJJxNqowLD4Iuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jm8TbG0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jm8TbG0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B06C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754300993;
	bh=kbmJiFzygvD/4aCoBOaXrG9SCYPmhMk1CCsFhQuo7VE=;
	h=To:Subject:From:Date:From;
	b=Jm8TbG0gkCmEA7EWdf+tISTGfrMmsIyP6ADQ5/7UihLVkQMfzZahEhA1WdqnLF37k
	 ZwE8EGtv0/+jQdUzwXA/zP83HCanCryCbPa5icHiPYolJ+WgatYF0vWdFl+GN1EfeG
	 OnumGxWxblWvaTlp3zx22N+8B/axd+/VmrRDPclBa53NcPsYnQdk7rCfSit1W1EKct
	 szc74s36mmSQ5d+WzUKQIVbE4mElhIz5yHTkXJFyYTCFcxFQkB+3SG4xch9G5A03zM
	 kBV7T6Vsf2bCOPBg0xnQSgL90D5y1j0JICzHSen/m78bfqlbIxWc9bkch9Suzws1ga
	 urHXHCw8RA44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A6C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430099357.30480.9771120563001359352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078c68602a00d29147283ab72e97d05ba0ce7cf7958596a0316781a6d702c30f
Date: Mon, 04 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754300993
