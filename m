Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FA04C8E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749343794; cv=none; b=NdKzEeesScM971MLiGat89I7R0u30Kqty8TXSwcIBN5dSKwTCTqZWPj+5wGZaoiTddn0cRYy1LlluUf/fgIHIZGkX3jRyB8gzcmCyEjv2kehj4h8gJTmqdCk+3cYytrPXjylPGp+jLXsAbgBOkdNW1Z6JNSVlM1ILo4gJ6h86tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749343794; c=relaxed/simple;
	bh=9IM+dY2qRhgG44e7cvtaG4Cty9cBmGeawHCDeVhNP6A=;
	h=To:Subject:From:Message-Id:Date; b=jHBpGMKfnAPS2HNa8KElCIDpvrfjQb7mw1zJeVlKZU9jiRrwHZNEj6JlCIt1HHR2bCj/Wm3NPj6sT9ufiDqo5vOY9gm1m/iQq3uGz9B36lzA8G58dpaRyrEhT8r9WHL5PlBexFIMdOMjKF9vdN/IeVT5VyFGezg6ONTl3ArVGSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojSZ1t4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojSZ1t4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E3FC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749343793;
	bh=9IM+dY2qRhgG44e7cvtaG4Cty9cBmGeawHCDeVhNP6A=;
	h=To:Subject:From:Date:From;
	b=ojSZ1t4eDi7GDwwsWtqspMqpeJAOhxGZaN0wgvT6BmzLp6/oaJvSVWjqHPwuGThzw
	 n/1hkhkX72BbX0c5lvayfRdSbHvstRFRxx6i/PhOWWkk0T+KfXB+Sav8WhINrvH4B1
	 Xo6h3ovZ3K0sJcI1DnLiCjwiVyem5yoI/37L4tXzf78DY7NXQa1jeHYKsMa6rvuSoZ
	 DBL4iHz/bzPzroBEy5nMc0pxCKimDTC4ggjJpQApPQC6Ljao1BD0yz0h6KytkKePhg
	 EFMaXqZY1pmk9XyuzdP4fzYMdH4TFVFPR7V8WiO3g0WbBHftqQw83ZWgHuiumh8Aqt
	 Kfsc4EORH5ReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164FC5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934379357.30203.9887032497711785643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2147479390160c83dfba9d48262b0a8e31f9728c2a3435a7927a61f68708161d
Date: Sun, 08 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749343793
