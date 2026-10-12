Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47431363C51
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791817234; cv=none; b=Ev0CKjQItSioN8ybRyV0l+XA0O3Yzdg28Eqb/lNL63PlEUW8FGHutnkq/cdIUdga89cztOvAz7aR2BwgkRriTfvKh3KdaSnEQKv+kDYGryQk9cAfM29r89Jxawie31sY6UpyNwnFz/5f3B129l6lbbkePX4QPKqjqbChBwD1OKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791817234; c=relaxed/simple;
	bh=8jW16NO6KsJD6fSFoEE4fgkSnoWuML1inXe7fcUWfiY=;
	h=To:Subject:From:Message-Id:Date; b=I17rduoPGYbndVwuPiNcyAFJEDa8umH85PKAPv7taJbD/Fb/rbMjGgIGucZV9SK33ggkQ/75Z8AsfYH7MRxC4LqpNJPzqUCyW0srM+TJyzVfB8lZxnhKTmWmbhP10UreEdpteZgNe8qbU2KCmHXbdKEFSauM1Ct7mfy8h7Ng0kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NADraYnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NADraYnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23F6C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791817233;
	bh=8jW16NO6KsJD6fSFoEE4fgkSnoWuML1inXe7fcUWfiY=;
	h=To:Subject:From:Date:From;
	b=NADraYnQdu+f8orRX64dMFG1XMADGLu1VhP/hxVINxZZAaIwqucNj0GJxAf1squRe
	 VruaCIH4ApG4eolqlshDsNwEGOxfCYIfKR4N9IUW3DZ9TuGvmFbkYqUUNR25Ovigr/
	 cOglnYRUOpq7ILR/q+VUM2j80Z5LXkNGngH1MP2KzzAC45h6bkD/VYoLArxpj2ZV43
	 QPalJt68Gbu7Irwg+5sKVdYS65U5h50Fb8hyY4XXxdCoC5wymH4LN4Nt8r+J5877kZ
	 yDBx73qsozZIoa7HcRxycsn4+D+CS/GE8e2vHjGtao1ZvhFGOv9uHN0pSd2w9hQqfy
	 KQSEHYYXjoWTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF13CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181723370.17649.15024950752485976138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8419be0f6c8536e817442b0adc33108fd18c1d21ccfca45ee939979227a9646
Date: Mon, 12 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791817233
