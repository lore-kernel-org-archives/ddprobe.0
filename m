Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A35623AD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744087794; cv=none; b=BPRbiyWzIA0pnyfljksMr/GgiB6bppo7r8tcjsB/WZLubbn4vP2AglwfM3WSmW/YIUVYrepFnTie2VfF5uaiqZiS81dQtSH8UIfLIqRkAenQ+9Mo4ZLJSBIJG19R/HD7vLmRwYt20HvHwchLbpvF8Xr1aJ/bZ9KMFCHvE+ysdJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744087794; c=relaxed/simple;
	bh=HqsEWAQ/xwTQ9VmQseMzRKEsA8H3hW321TV6msjG1JY=;
	h=To:Subject:From:Message-Id:Date; b=EfkEPqtBCk0SAvnumaTX8CbKBu/rj3Pnxfixu503AdZ9VUkgbIkB9POdEBn/ZJEymueIS+gXLFg528X6KkTyrSe7uWDm6W6eWyZkUf5cc1UOUMsFxiJf42BfceWaskmIqgvv475aQH7SRbDp624ye27oQ7xz4NcLxFbhN0ry5KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTpvp/pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTpvp/pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F5AC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744087793;
	bh=HqsEWAQ/xwTQ9VmQseMzRKEsA8H3hW321TV6msjG1JY=;
	h=To:Subject:From:Date:From;
	b=OTpvp/pBNJNv/YSxdUJtsbkE7093nPtFVW4HhRopvH1/CQzkIrGPSMs7SO2ym5+tR
	 uZ7v4DkZDmPQZ38yVPcdnQ/beN5yiyptbJph2UlGLrjWHhLRxDkwMQCMbSA4gCQA8b
	 r4I5xwqBAPDzJ4FumF0xjXGoYq7LrMOMFNlHyGre98pQwNKQ20dkc99CtWbt6Ha2ya
	 rVGH8sDRtvm5x8EnU9gwt0Tl0J8nvjGYHXERV/Z30OD+21LcszYEG3cpJFpQdpxAKT
	 K9GYoWFa6b5U4XJUSuE3N9qQyWgikl+DzWmReJ6VcaVwQo/Z8TD6HXEhBy9w/uam/l
	 Id5ZKyJbFfe9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942DEC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408779359.3040.16276051094995823208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67c89a811e9bf895783a854aba58b474dd6ecf57ed7b2223b3347dd4bfeaa0c
Date: Tue, 08 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744087793
