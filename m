Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5A727CB2A
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747975194; cv=none; b=oK+omhw7azo4lFbOdj9h4QbeOVuRQqkkTMjrYx3y/O5W4FSbKKYbAOQGO0leQ5LDUlMqtigKRbDFcGUDY9MBQ3ZcmigcFZpyvho4bh6QHGvcI/sXU7TERqD/S3XlUzxTOGyCo19JoUGQ4kG8/ZhFiOU51kycm9jDNzl5tEkz5EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747975194; c=relaxed/simple;
	bh=K+ImBYepIIZIslkjRxsxBvH0XsiKt4Atqf0ZA6CUaJg=;
	h=To:Subject:From:Message-Id:Date; b=H0yIG0FSr6iF3fB1uxnyBVnZIhqfqXDT26DpiZItGub8pAHY49bNg+VrOmpWjMbcTMLkARO7gHmSf2AoKIjen+sZYUpRky+8XOkH7bi6NQa1boFNJoBGE8jlBfv85mALztImalF8xxUH9hUibu1/zNR5z7HEA6r0lNTvhTIv+zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNZdXW+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNZdXW+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1872C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747975193;
	bh=K+ImBYepIIZIslkjRxsxBvH0XsiKt4Atqf0ZA6CUaJg=;
	h=To:Subject:From:Date:From;
	b=mNZdXW+XKGXn+fh7AIdIfY3/N1tUkx94zW6Hvq1rPc4yHpIsseWee2RyrGj6Wf53F
	 2UWCHIPC3vVY7nCaSlHvVnX83vzbKASpGDWBZbu/Qw7apVWP33fyik0BuYNh2JygG+
	 8hiZu6O4FkrYyV9F4cOoYE440+pjnM3AXTOKSlvm7/E6WSw7UamppzgOm7+KofU7LC
	 TMeXKZIr43RiyLEnqFJfz9J7qtYOgssn0Hi2/hzJnwe9yVaHerREdyFSuMv6rqvzu/
	 F1FcF/lvyNMg8CusjPjBEqz4GNbxFs/4lArLiRhDmFJp32BRjmXHjoCMDuHWoKRTTU
	 gGWh7VXsqFjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CDC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797519358.19142.10966234909019062051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967b98b086fad15973346ca85e1c74623997583c4d6493f8ea81ef127bd98f2c
Date: Fri, 23 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747975193
