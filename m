Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2043002A3
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758715194; cv=none; b=aUDldPgMXOEhOHU6pwQlQmGdfGf37cBUM/cpzW49ldrlMMJfZUqyoESCbbHsZ5aoAUbTYzfqxQ3CGfPMt92vLlGtGZI0Twr4QKrbSWUGp+L/5mD+MNtmD+fc8niRNBsX1T+SO9Qvi8COwMglnLyLMN/ik0Hq4z/VE5B+BwDa9sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758715194; c=relaxed/simple;
	bh=AZuazAjp/8VZTqkm/z1pyISVOu8/JP99FYpqS4a5EFU=;
	h=To:Subject:From:Message-Id:Date; b=C9mxlAwMNqxbCw2SyfLHztvxkReHTm9Leus3HGzEp+zZ19FzJbwLhsgJkeHToUBx3JwrwcWrQtc8Dkrv/V0D4o9ktDxe/+3OAuxsmgaTIZQ0AWSgK6BjiJ629aRU8PLPEeV6/2alo2/oaEwlCimUl+GuXtad3QX8WJ2cQUHB+Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9B34jXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9B34jXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2875C116D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758715193;
	bh=AZuazAjp/8VZTqkm/z1pyISVOu8/JP99FYpqS4a5EFU=;
	h=To:Subject:From:Date:From;
	b=C9B34jXS3o/XxGiH3M0BiJeNUK3b4eWfPXpp6iTAjMrfJ3/7a9nCZ+yKMk6QPDYXI
	 gDvS3vkjSAfEzpZsxy5BQR7wE71Yh3YorLoB51HPzKusvDAY19LMxTO0KgeP73xK4h
	 MAu7qU2zCejijkHTj873LVgQpqsTlaR6+LvUOxJNSD7PRDQnKhrC+BJxZU+rVrzIV/
	 4hd9MUzWgENemZkV39xjUJQwRKqLatgUf77Z8exBcRYftjfaQqzoOO/269YrMH4CEX
	 Wj/9PsvemaRfpvZzj+BxAsetd8JeJeAkimbJqz22xtLTbYIOjqpGHUTIIHt3XJRIy+
	 cMWYCcfeGBwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B8CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871519358.11435.2149597585151602844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd515ff0738a7d5e6e45b3e41e34f82f700704e9407e73771ff658d43b80d92
Date: Wed, 24 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758715193
