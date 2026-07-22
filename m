Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E3E5464D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784724514; cv=none; b=Ta1AeocvngQ93afsqWrQEeuwx3ZS8YftVcJmASV3J8kliU/eASl3kCo1HIrc2pByPFA7oDlOyUNYcLSD0+RLvT/JGaj3eNGpPP2cmhfiHQ/ymSO1SQbnFHhQqz7oqpq7+0l2mkWNGkfc6SlYXLPKtSXjN0W7MqqHVYVwlYN0b0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784724514; c=relaxed/simple;
	bh=1QyPBi4Jbl3gNQId9gklfyWt0KMqQRUrkaTLwmwjSQ4=;
	h=To:Subject:From:Message-Id:Date; b=k9aYfSMpcmYl7LQKExmGG/rerMot0jDMA66nVohoga4824S/iOvMVPy9G7xgTc7sq25JGdZiqzKS2pNOhmwQ8EAOHalm5HI62N79o6E9xPwIPqwGWRGvhiwU07K9930eIJm78LjwU2nqCWiUcZfkoMTUevEo1C3H2NhSx0Q16Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FosxxvBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FosxxvBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4239C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784724513;
	bh=1QyPBi4Jbl3gNQId9gklfyWt0KMqQRUrkaTLwmwjSQ4=;
	h=To:Subject:From:Date:From;
	b=FosxxvBNDBCSdDYcsjpiMX6nYgElyZu0pJ6LLpJX0AFsWqxh8Qrb7mbVgXVeNBOec
	 bXYxYiS0SJ8X08S/E0K6/w7U1SoX3E08SAe8YHjy5fuKi6fEMp0m1jDpZmSqP093e2
	 AGETDfqXv5fWOgdID/ysDixZn2Uo04mB30VJdqc3ELwIjnuZ8jirHIn6PqqrZU+737
	 sB6kqcQ2a/OOQtK9rA5slkKeOvtBS5f5/T/IapkVKghugEm6v+wyGUdT4BfS7+e77r
	 X6hVlK2/CdhOlPvxjBJDdLyB2ro17xTgGyOuC5F/73bsu+vcgPizQ21wlKtXtP/Lr2
	 AQKVWcN943hKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFF1C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472451370.13599.8336368010999682435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b816b654e83ae64945cb96e484217ffc0462e0b0d3f47cce2e1095043d84cc67
Date: Wed, 22 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784724513
