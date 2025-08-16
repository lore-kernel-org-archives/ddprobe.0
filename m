Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E341DA55
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755329394; cv=none; b=AqGAtH9VYxbZYn5zjj8lmZYDlT96beqEj3ssUU9vxVvUJd21rfNHJnXKJOOaGYBlF1EsJJ3e72xHnqPJuDVSYnltxuf6wudgTAoMi8gBZHfQWrxvxAfoE2LacMm0wrBMii54xfpQ/52EjeGSgN7PiOse6yOhk3iDlDA43y+oX1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755329394; c=relaxed/simple;
	bh=gNG0AjBzABm4mXHgTA8tEnaocJBSwKGKga+RgKIO3k0=;
	h=To:Subject:From:Message-Id:Date; b=ClVH69yU/ihgEFgwXvK7FQRV9qFETosqwXgmq5UKeqZw49ag4kRUuAdrdZ4Y71JTJUKcgkpIDeSYi4TL/ju4Sxbt/YQX5QbR4UGp5riqFnVQjB7hEUzrdJQBB2r3yVWIyl6dwLquV/1w0KJfAF3kf1L5xkYgpObXi/fHCiJy3Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usAb1Tos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usAb1Tos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E146C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755329393;
	bh=gNG0AjBzABm4mXHgTA8tEnaocJBSwKGKga+RgKIO3k0=;
	h=To:Subject:From:Date:From;
	b=usAb1TosnOS6pIYnlNshwyd54uQFHKUegkkEeTUF+qBj/KpAE7DY7G0Afql8xWON5
	 KO7kW/cNClDKm9rWvN6PgLwOLTqSzFPWhe6IgMZEXo4fKhVWuZmyisfMhNen+Mk0cs
	 OmIrEiq0exlYgyvD5YZrLl/rjvnGUBs0zdUHtfA5QDU8lJbD4Np5CCT+qCxSrcJ2lY
	 XgRWuQaM185pJH7DxZXnAPU1cGRMG3rsRPl98qPxPCA2177sOkDQ+RCgitkK/5flyA
	 qSjCcyDG1gQ0drhNyNNYpoNdYd5+EPWwmSX13oLFp52JRd+TEnYUAIjH0EJWnCRClC
	 cU6p6emQkyhqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DDCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532939357.20659.8758163838618764418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfab1520eb9f498d386f82e49f6b3ae693d71d25abd50c91f2520efc1b14ee6a
Date: Sat, 16 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755329393
