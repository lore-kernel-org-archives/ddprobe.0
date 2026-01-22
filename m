Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9242C375E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769119435; cv=none; b=dbFCpmZKRvG2T9VYT0vY1RuRSzndt9Udd7TPGMD3TE8iILmp4jZu/2KdENMUTS0AJiLTlUg5qwtDqca6IgxiIcWz+dbdHq/lPZzzz3lJmCQUrDxcKQNSlUbxt/QoLgmHUoXiXITq6IGSyRszgu0EQcQugUeDOu4MFV8IoWWdLMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769119435; c=relaxed/simple;
	bh=D9RZ3L81YH4FOwkuwfXN7DJRYmr4mX3sUXaHivnP/n0=;
	h=To:Subject:From:Message-Id:Date; b=bNtWSgeo5yng+xdUrqO4KyeP0pl7r+tcPHs46p8zmayHD/Uf5J+OnqGsYfC5igI5EGk3fgOt2QM0pUP0oiF9LX7/IbrF4Omos72XA7hmhimuiqSCOcQ2DLwtJWvEpWVe/7tgt5jEjR2xahqnw0obKkBKpRYg4jujA/B1WXSsq2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7/DQV4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7/DQV4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF61AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769119433;
	bh=D9RZ3L81YH4FOwkuwfXN7DJRYmr4mX3sUXaHivnP/n0=;
	h=To:Subject:From:Date:From;
	b=o7/DQV4KR9Y2jNc+S/GWhBdLbzoTLFQ4m7u9jgXFjO5l54paeU8GKwA2c2uGKkyJP
	 lc2u+1IG/b40Q0zaY9d20VZxS3ed7d6Fd82B72gdMxlXjLY91J1BQKQXouoTGrAI+q
	 EXiaDM7XM7na2HiLPEiH5MQ31mVArvADF3R/NfL4PSBQlm7mOGRIDdEjGP9cy2n40j
	 ImAHcuEo7MchjAiLpuzWuUoAp5AYsjAqWTiE5RJGgjsyrdJk+sLC0ZtKHpkvwISiqd
	 TZRnTmrZCcOPGwvETZOw/EjuKINLRjqPphipJl1Jv/PqWHEaxCW3VBSsQSTckSyNiD
	 csWUTythPwpzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A987D6CFA8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911943362.12790.17823872155045640127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67dd801337abc17a0dc1d7fa6390a754d4e443bbfb30d9aa6f9f04fc1fd3e15a
Date: Thu, 22 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769119433
