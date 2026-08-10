Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE9B2FBE
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786325434; cv=none; b=OERi36UqMobh7VSR2XLHfJkS7lyUb+9RsU2wGXHFyPZIvDqtU7YbrD4id4cEnRvVxHFTARI8aCaMlaGTcWIEhxhlfBPkbHi3KVw5umYrNnfDcKP1qLEJKpjHJgFiYEOnMh61Pire31U8gz3V3y7W27oiod9xMOsAjolGZi1KI0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786325434; c=relaxed/simple;
	bh=e45NbyC7cQ9G+ivpGjsXn5YB5R1W2Bu8SQo0NhNdrNc=;
	h=To:Subject:From:Message-Id:Date; b=YA5OiG4wiMorza8vD3KE76LaaEzp5dW5gQ7/d5b2qEvW9AOypy1rMf4I4+H9Z/6qX5SuvhdFGk5gX83sH8t0bJrCyNVBkGXc0LD0bJp9N+RaonYSEuLJ+ozR0cVVghpB916LK6CROwrWL5RpZek0Z1tKTr2klv4BHJkE72Vmxt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wa05wy3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wa05wy3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE353C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786325433;
	bh=e45NbyC7cQ9G+ivpGjsXn5YB5R1W2Bu8SQo0NhNdrNc=;
	h=To:Subject:From:Date:From;
	b=Wa05wy3WudIWD+HfOxLsqJ5g9eJGMnBeQhlZFixeEQLg/DE9a/3wX+3+xeVBvRZFt
	 Rt1qLyLC9fl5h1375dqFmFhSKXdQr0yn1Olt3AxQNutNEedXGifs6uLDCBze7qRLeQ
	 yahEE+t80UgDL3Ddlto4OFoYj5antD2KKyVSz8UviLiylOZEFSiJqkX7+NnQqYfcy5
	 3ZRXVzn5/aiLjO6RNTpVYeTecCjCV+ZjAykwv443lg6i18IbUFmft7s2PpSkJTHWcW
	 4beXzJJ/9bpJsAJL5GifHF/NgOIN02DFAlRWKOUcBnZSMXAlJy7AQjV04ySLdemNLg
	 yWx/gRUGaqeQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA275C5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632543368.11040.3121415902290691896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf4ec711755970fd3c5319ca1539e7020dad7784189052d0bd2667f4db91093
Date: Mon, 10 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786325433
