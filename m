Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEC228315D
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789806034; cv=none; b=sRQfZ52xW0J2LgQEWl/p/ljoMBROhs3sZFLX/1qB5jEAIMOWflzhZDdxoyd0hVgm3ngto/xiutuoxDDCLeuTDO+KEpLPzpZ02yaiQSg9mkGPAF+546A0ry197pQPmSTW1mLC/kQ9PQamqFg54o06Ooah8HV2dF0JOVUQULRkyuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789806034; c=relaxed/simple;
	bh=XDmTvVbi0T6NuMyFZx4lMlc5xofZzrbeJrsqhgwnAQY=;
	h=To:Subject:From:Message-Id:Date; b=qmGFRjHhwkk26yO9JZ64XHrNmS+RUI3YXTzWgi6vV8hCoIdtwJFNrvlBbTxyK9ynHzxgdL/Wddj/eGGgWy7C+7zmY2w8fZUsSh2MIzlSz6is9i7zfA5aFSqNoSGcayd4/nqZO8lUeOtsETtmeHTSesVycyEiTcyMMoGAsM7JhIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAN2kFZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAN2kFZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E36C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789806033;
	bh=XDmTvVbi0T6NuMyFZx4lMlc5xofZzrbeJrsqhgwnAQY=;
	h=To:Subject:From:Date:From;
	b=kAN2kFZjt0En30OLFsHbABB60XVkzTO0CluFgE4hD7T/xP/SKnWZlUU+HPzFwl5KM
	 SHtsgybFay1jzHTKi+GesbejH4IbgaEJML/s6jwzTefwHF5f71HNBPNJixe9W52isV
	 hQPTdlsk0FzpLgk9h90xA4YuvmnzpFW2qHKp0i8KDTcozZFlqsJ7629yCMT0Y1itBW
	 T3XaQAwr93nXgblgWEj6O0jwrMxjZHPS2BEAw+qaBWk4aR0lEAnBc1AleS8KRwHJe2
	 xtD7C7QRqsv1fVT4s5RxAn/B7jJDSKNnI5ubk2xXwRvlNXyP7j53FizfezoLfUQsN5
	 VMRyEdl64h0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95A1C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980603368.32482.13803425943615771310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a979744970daca6758ea64956005f3b232eff9b210d6b6a7de433ed1205430
Date: Sat, 19 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789806033
