Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6B3883F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768097034; cv=none; b=f3prJFIgsugqB70DizNkqjUr/UzC1kAsJ0pBbE7ZqFjnNcHetMj5bHmNl+Jy3ZdxMPLTM9jpBRqFCYCYXdcwUTWm2KtrKQU5d/FQQkhA9zknyDYdDoY80tL+qdDi2f9bit+/ix9wB5ZHQlOrIEZkYxj4H+dADogsw/pFRSxucec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768097034; c=relaxed/simple;
	bh=xhWyiV6YILwosU7RjTvE2Gge1mjXIT2BMHL5zG4H1gs=;
	h=To:Subject:From:Message-Id:Date; b=K0AhuzddsO1kEs1AHNF9lbfR8/Qld5L5zH8XMt2gYR4O9Zj7YqF7NsDI3eM0tethIiHtt7nLVUlNZp/8oZ+6julde4ieAzJEM64B7IqVEZKI1vE08PiWKwGU1ZV1Ll/MrY2CE56FYUjZQkY9+4bQ1OEETg4+xHlEwIkf36vfLTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7b/TaZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7b/TaZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768097033;
	bh=xhWyiV6YILwosU7RjTvE2Gge1mjXIT2BMHL5zG4H1gs=;
	h=To:Subject:From:Date:From;
	b=e7b/TaZTsywFyThB3cH58qXp518JgJC1Tjhzr+dVVKLL6iWjhOaTAKrzZa+AZHeaV
	 VX8o7U0WY6HVg+WEwiYR5T0ig8BoD4Dir/OHFWjBJ9koV4Vq7k8YqrSOX4lrbbZwSN
	 vwgGBJcVtT8gZF0slbHksc/0N+UmtG4rWqKzhJlYZXQT4W1mYkvNxsNlJNUiMB/fXO
	 tXxC+0F4rmm1nViwQEZAyGShpJy7QzPKZiwwnxq+kBTdGudAE0wcVU1WEmkFubT4D7
	 g51gdmrvI5U5PpAD6TDEXxLp+oxljLr9Sa+IHaChC//6zrOEFVb5nOksCE4J7cVap7
	 RLV0YeBByDT0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A34D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809703358.17658.3732099011971850673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a989af22e4b26ddd53d1e4955df0bda97ad3e15d925b5c3cda251781040bf2
Date: Sun, 11 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768097033
