Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0073C4657D7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778684434; cv=none; b=PTKa9X1m/xjl+3xL41ZE124LkczTSw5VSEGzn+22Fu0n7pzWOKUPEf7J+fZgc6KMHNeTi8OHT/gowxw6yoFOGb9SiOJm5jiNnUNmIJC4clemmhJF+jL0q6xFP2RH/JeM5MSy3KlySrTZZ5Xo+tu85RuQPKwuqF9fy+Wac9yujbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778684434; c=relaxed/simple;
	bh=ppVdr110iQoqba3zZn/xjiTGEZ8cXIhvHQLgzKBnP/w=;
	h=To:Subject:From:Message-Id:Date; b=LLmLTaUhCFP5gPhbzxGbkFoZLNnNjdyau3ZoCiu6EBWowyfDRCpaJMzaWZgY5/81yUTkTeURo9kYjG41LRXi4guH19XmjKC1uLxeGb0Zb5NaIrTcWhYP3AKfkvkznAyKAoHAVqxA+h6bUiwClf67KAhihgbeR5rEGAhAlcMhGlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt8buKLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt8buKLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF032C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778684433;
	bh=ppVdr110iQoqba3zZn/xjiTGEZ8cXIhvHQLgzKBnP/w=;
	h=To:Subject:From:Date:From;
	b=Yt8buKLBtTV7T9p+jltaFLtC11nBgO02xIBtojbm7oHACgQU0xl9+1ZSay3YMgP8A
	 hHmWDqLHdnh4fM3JS2uSxt2xSfq5eKQGBAKBDXZTylj4cl4ZwDVNCl/3FS+ogGvf8+
	 EV1ZtOOkk5/xl0Atv4CYS8LyiPRx5wqJ4GLaVZqEft3fh35DgHujZme9J9EgcxA4tJ
	 gwqJhAvxHji2MI5sffUUqWkS4X38DM01rgp9lkz7YSHbfp4ttqG+sy0eR+dJj4yDRw
	 C68xedo/u3PJv0OeSz7t2H/nCZn7mBgSKigiAUx+Y4jHqtJ8T/+cR/Bhl3DVdKRz7L
	 BpsWa/DVbPQjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEBBCD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868443371.19470.10021647921625408898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26eeef78966ad5e8dc5b0dd741aaa51a47340b247df4d1b1898b1440f3e3cab2
Date: Wed, 13 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778684433
