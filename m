Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB7539D6DD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790114436; cv=none; b=S1W4V92eMS8NSperEIbLLW39SU495Mm2ylWsKe94fTqeXr6C721+KH6FB1scSVpIDyMfYCWSROmj0X0fjBnM4cCkLnrukkcMrkzNOD5mu5l6g+FFzLvixhYXrGkIamQdoHVhDTQ1Qw/t37ecCVzrsDc0n4GFZFgnQDkpIGD6YVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790114436; c=relaxed/simple;
	bh=rCrgWe4ockHEB+EUzS8FnTfr4EdqppMxwgdKw5Bi6f8=;
	h=To:Subject:From:Message-Id:Date; b=Ya/+aPGgqvpjJdJVLjIK+r9njEwY++oQlCl7tEI8VlDcRIv/zMeLf6mMjVkkui7qZ/QqB+iTfgpARKo1BNaV6CqXI6wMFrg9vl5dTNyN4IM1YkusxWW52BRPxZlbPGTlk5BCIZqE6dzcGoAkxlINg06utZOHS4HNTZmTqhD1hIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HreDGQou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HreDGQou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06A8DC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790114434;
	bh=rCrgWe4ockHEB+EUzS8FnTfr4EdqppMxwgdKw5Bi6f8=;
	h=To:Subject:From:Date:From;
	b=HreDGQounS7nuiZUsTrLZgYgmtZgG8r6eCfjgPMQSxhPANbK3msDukUeQOJkRfhGZ
	 9LR7Dwb6cJeqL/q3a49cPQjHd1gSordSOO6xAedWQ90XbtzysJhV1H/UCGUnhvQCyU
	 wJWcVPpMn/JJt7Puipeg66TFEc5jYyGj3kLubiqF3J2zk61VHkOCioCT766p2EfxVD
	 Di9Z42+bSAKtjYGr9Huy7eGX3tqj+ehRZojh9ZtOUJ1M9GvlnibrOk4Anl5OBihMMZ
	 KBPYKuvjpiKrMhwcZmEClZ3vzRk6MgoZVaeK6m0OLoIcoUfUXQYSZ1zOYRi/P9bVrs
	 ymQFk2d55st4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA31AC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011443380.15381.7939612223269912890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4de760173defc4958a83a822f01212085a5a738f3b4eeae595a4affad4cd06
Date: Tue, 22 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790114433
