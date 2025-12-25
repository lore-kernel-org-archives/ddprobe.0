Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E1254AF5
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766629434; cv=none; b=BoGLWdf0hbiXqR1g1BraoE2NtjhIQXCtbSRu4dF1cThZhM+ZmiNGCEO+kWRg26mkrlc5VF5n4qgcYGAfFv9FdqUUEoOujzyNNlYFUIyCUmKHqwilxXkC2pYTuNxJ4rAt8HYaVzOg5zYh/QBHJ5kZ17fl97j6Q45FCA2QkyyXSQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766629434; c=relaxed/simple;
	bh=5qwR8dUesvijmQAS3ElDqY8Y+0y0si62Rl/4dRmyXBQ=;
	h=To:Subject:From:Message-Id:Date; b=FoakcYWSjZ/VqtMBJMsjVpkdpfeLucAjLn8T4yrs5h411lVwYyQX40x+Ek76+ZqzZrB8Roy1qU1YSjqd7IkbQA4zPEZuscwdpQTp9tzn2JIWdhaABwKOjKwA7ET/MgJSLrWlbalSh+buXoBHBWzEMdfaVuBI8DPTnEfi/+tHkic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3rOzzZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3rOzzZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D88C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766629433;
	bh=5qwR8dUesvijmQAS3ElDqY8Y+0y0si62Rl/4dRmyXBQ=;
	h=To:Subject:From:Date:From;
	b=G3rOzzZ6G51KPaTT9dD6tZcgCJUQKJSzZNECbcY0V+ZjlLEY13hTxni4MSpOGWR8M
	 8ridQzTHqoun9fmx7WXCIu7HdYjVEDN5Nn7KKIsYyRP39sSfKDiKiZxgpbz6LO9r8T
	 cccP23hno4PWM5mK+qMfr8EMhx6OYYHuMzQx9ae/aMkcy4t4sODU8icSuDNsbU4Gg5
	 g4I1I03poaF1yoBwIE79xHYKT/d+x0OzCZrNqQ3wBM1gtoOrarKnI2WY0isLmjC3L3
	 Uf3XTwWc1V8oI70NLEFFYhD2uGfkC+CiD7nDEIG5xM+KS0gFYKO+XHjgLSa3Sp+I6/
	 nPgG5lZTuaNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60AE784BA
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662943358.26238.5262674221366740494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6297efe78d9aa5dce60da0181a0fe10ebbc10e4d9753b4e2252d279a4360c4a5
Date: Thu, 25 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766629433
