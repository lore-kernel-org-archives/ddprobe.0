Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32084A23
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751263193; cv=none; b=Ypun4KC+fvkkG7xTnnEB6ZCtOMgkG7zozu7yiOjh2AMzTkx7d+IlgXfTEhRZYv1QRmRqMWY+pWdueSprwfCCzYsb0mR+kHHwKeIM6Bh6TzvbJJ33Ng/uQkDgrJPLwIppJ/m53UzoiHtVkXvQNwkTVxzUfCHOlbWJu9abgfAjFmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751263193; c=relaxed/simple;
	bh=XzFWj9VYKLhqlfiEwS+SqOHr6yHw46onDpdKzQE/oUs=;
	h=To:Subject:From:Message-Id:Date; b=dp5llmVVocx3ZUWRnd1AHCgCrqpo9ZZ0iBqv5oImLuu60flGxfAta2dLOWXntCFRLyWVOb6jy7B4v8ICnkdwVlrJzOxA5EocnQAsxp8hhf+SbdAMwjnyhs+BY5rNC/dny7jDFkJNwyI6AV3+3m7kSM8e+hS6vIjPPLP0CzqNV9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNADz9wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNADz9wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F52CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751263193;
	bh=XzFWj9VYKLhqlfiEwS+SqOHr6yHw46onDpdKzQE/oUs=;
	h=To:Subject:From:Date:From;
	b=hNADz9wd1gEAJ4MybVK46axgQqG/JuhcL5jZX5NL6aeLZD6B3c1qKrd6jZ++HKHqq
	 CFWllKJp+zBvb1C2/Jo5TQwQOGT0HgxcTo2T018y1o25Qr+Sq2SwrymLVAEwi53NfA
	 Gy0fCAGid1kVHKElZq2MS6ShdTKFJd7R4o92dRdOg1jOU8M39AKhttJz7Y44/hXuRi
	 Dov4Z87ulajdlzouE9SPCNAGreeWJxtdJCWblEAY5g1Tb9HCsvIjMamU+9menoaOEu
	 U9wx6q6qeOcNEx+cO3mGf6jQgJQmojROc43baWKP05D9JglRGBrMQe5wLz8B0Jcc4w
	 Ib/Or00jxpABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE97C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126319357.4477.9904750280594741328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b342a2d1738c8939ba03ddeb25930079a0e227f35b86aa12e469aa2168295e
Date: Mon, 30 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751263193
