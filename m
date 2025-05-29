Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F541A2643
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748494194; cv=none; b=aBpEjzucsLglS7CYt2fIydpMU2XzOxuay1FKJCFQOiPkLe/l/zP0yiBahpAtSn6qReTv9nLZ7HvtYA0o1wXSzgiwlj3bbjiI/06eEdqat5beqH6i2elj9TkFVlcdtM/fmDiUoPz0zFCs1gTUFiBCuZmT33aDyrNv71NhCbbCpDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748494194; c=relaxed/simple;
	bh=k44Fz/yAgeWCwwhQhCOp1lhzopCjOwWPcihP4zsIjuk=;
	h=To:Subject:From:Message-Id:Date; b=aE7QnbGYKCdlx783pmu2OfxT/yatVJezHCR3K08PTuSNv2PNHRoSUSGbsgupX2B3jIuRdc7k/8/Ry1UD6TI4tT+2AdM2yzWRHgyHmtN7iJ4jNPUe2vYHAh7FhtLqOQAHaB8VaBZievrBI+ukFM+ktaLM3zMKap4HLB9/Y6zNJd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH0CV/ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH0CV/ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEA5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748494193;
	bh=k44Fz/yAgeWCwwhQhCOp1lhzopCjOwWPcihP4zsIjuk=;
	h=To:Subject:From:Date:From;
	b=UH0CV/aoNVli1k5Os7rYnO9Gmk/o2jM8NNptD8gqNgdJhTy9i3DsfmYioLOIG5q/c
	 O35n1gR/HA1kQ3Jkz4v8BhAHYimni45/9ucJ7LtJKCih+jcVvAhQnhD8u09sIfUBZu
	 5+RqTjV8jGgA5b3BlxTdBflFgiR53iC/GS6oiqqSmPqJ9j0OdFwm5vu/lgEZLFSQKY
	 bQF6BlDPavLesHo1srO206lvD5ETVo/ekLB425/gAUIxP3jdZ6NFTiQt3rq5fS4i9/
	 eUOZwG60fvD+/IFW6hzNmu4qtsw/rz3kiZFOMd/A9iayDFAQ0cVSR+flajizaFSVd7
	 e2uoJ8VCUU8eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B30FC5AE59
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849419362.19826.3406193396457461975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1268ac262089325e06384a398e74e9c9354034eac634e0061526fffd587f5836
Date: Thu, 29 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748494193
