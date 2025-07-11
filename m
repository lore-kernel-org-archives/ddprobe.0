Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247C63D6D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752206995; cv=none; b=mC+mEocpw11IHmN/NxYIlto56ya/JFs/mv2iHb8QptQN8GqMU5fImhNq/ibTFC4YyXxCrcPS0uZX2siKaMfOeq9LtC7mOeAK7NOeE0wZwFaDhf6EDtIMQt/JgZTbFDYIUh8e7GbF7mTHTyrGEWtjUMFooU5FL54MI6A08hHJyFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752206995; c=relaxed/simple;
	bh=rbrp2m92MMNSxQHNNdxyxFX0Of1oqh2KBNiT36fFrwE=;
	h=To:Subject:From:Message-Id:Date; b=fVkAgEJtp9zuqgVqnh5XkQWAs/8qow9s5scXz6W3ZEIkGf1jnfpRr0M9aDBwv76vj0IBrz4DBsqSL1vqp6+dZJ1gcZLuFQxHjbHgEAISgmnenZevKmwHfAHOEI6zg2wRzmvy8PDOiOW3U9n2QcApwhyRLI3eFjU89ErPcs6+LwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QS6m6dFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QS6m6dFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F719C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752206993;
	bh=rbrp2m92MMNSxQHNNdxyxFX0Of1oqh2KBNiT36fFrwE=;
	h=To:Subject:From:Date:From;
	b=QS6m6dFt/5In1HnNYpG6aymVpW23Y7781r+A3NZE+kDgteoW8F8yO2m5jqjgJBoYi
	 iOwbdKvXNTg9FJTpYvlF5WkAIB8no0r+6J9SbPu4psmame3QbfNM+/XSEatHYAPOdo
	 nbi7GWX15PYRwLjmMyH//OvPBZILZm7m7ywXlKf50OOCbDs7wh3xU9DZtr2P3TdK/M
	 M+J4OJ00MSk8MANKOYF2kCjEQ1LeCHmgvCh4tFm6W0tCXWx6FIzC25UB4oq530xuqN
	 uRHP6VFd9uoTy2ML6zxs552DNXgt+x/QgPoAwrZYgZTx2HxBu0fufJpfNCkpUl03SL
	 9G6btO5TrZCGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD3EC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220699357.6186.13806496521564969528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1833df58a0acde816eeecf4cb3525ba58e71c5078ec6c30c3bc2cd9d8baf421
Date: Fri, 11 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752206993
