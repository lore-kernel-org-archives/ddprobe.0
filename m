Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554B612B89
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717225463; cv=none; b=W77u2wCjzbQTRXVvXuCanCs43ikeYY31e65YbHJqoL1c5g8xtYhrQG8Y5zdCT1R8gnp71Y05S2vRMQKIx9r/h0FyGoV1xJrc1lVL1Ed0gJcew5Bk7ZWytMvZDcZthqm17ENq1BzhBcWCqMc7d3Bo6I3bmCzpfN+aLxlxbSbJ6iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717225463; c=relaxed/simple;
	bh=bC96khjAGntzsg40W4OPauW18xQuXs6yEHGj7VuVEfQ=;
	h=To:Subject:From:Message-Id:Date; b=nbfRJtuGgW7SgcXZRFtKRt5kdJvhRTdiYRyBL/Vl8scCD7dc0wn05jrsMH7YLA7ACvucylPT+4klmUd7RLo88qCx49csH/QhBaA0t9/d6rrYCSKkW4hAaJrYQbVUT4kvqwoCuBw5WHI/0yh4L7wouSdcUlwZAvI3yKhsTWxQDhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtRZaGjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtRZaGjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D13C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717225462;
	bh=bC96khjAGntzsg40W4OPauW18xQuXs6yEHGj7VuVEfQ=;
	h=To:Subject:From:Date:From;
	b=CtRZaGjOx55yWjfMtjvjVfwJkpUPy7yed7L7mUhyO0v7bwNq1i1FhmUqgtInNwDxQ
	 chA0AcBD5MDt6ylYDZKU1hwYvdyw3/973ndlfOcJ3CDWlMebbJJg7Cgudvn6TI4rJj
	 /CkSBpqteX404gJ1DnSOyAdkNThqjaoVL/KFHMLEkghbXfgmwC8j4iBIiXuBZ7Zd4Q
	 B4yocrBfZ2IYKUg4d1i6gDybmlgWj7cvUqNjTDWEiABdrg2MRhR5tLlqFCyPOyIMJL
	 8x4xV0GriWWr2eqgMB6v+jcFITknQeRbGlzd6e+7nLVLsp9GlOa+W9bE3WNqz7qdtc
	 3S2SDPh2LOorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3FCC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722546281.17394.5000759256470905797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd85c63adc4cc6badb5597334f8804989fb48649551970089e669f4503eb7410
Date: Sat, 01 Jun 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717225462
