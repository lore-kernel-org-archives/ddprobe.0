Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C4E22D4FF
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758003594; cv=none; b=Ji5BQUPEl7VjhhlB+KHQXjGVLwAYUh9jxZKnF8mV4veHJz4BAiSJCg7P8Sh9vur+3mutG0lgq7N/dH4KW9OG7LOvAFrKbCOJipoAqgp8rQkm4uTaxSgDWfkT1GkjTIFmMx4n9NGsRRFVKw4Ob80Qg8rGuS12X5Pyj6SbHaqh3w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758003594; c=relaxed/simple;
	bh=+3k1gzuyCUZMWfeQCMAwMsQ30qXzLN6fZx9nUXJOvxg=;
	h=To:Subject:From:Message-Id:Date; b=dshNFiMkIdwTB4sJhAh7zKTE/p/z5fNs9yXfGnbRzDoBGftiPC7YFs4qjwpNQw/cflYDW8tzphzbYTTYK/Dqe1KIPtrZxaMJwr017rmdImzSDklbarGubyTUgSfu9G6qTRsoISGq6JJhwGSGFRMXEBxNSjQJgq1M2wAgwWUA790=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+ukr625; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+ukr625"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C589C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758003593;
	bh=+3k1gzuyCUZMWfeQCMAwMsQ30qXzLN6fZx9nUXJOvxg=;
	h=To:Subject:From:Date:From;
	b=j+ukr625cKqHOJqQtnucNyRRhPFiiGYjAYmAWF/iQhB00X9FWJrMTdtTwTx/RZQDb
	 strev+hSSh9cqSqDpHxBXwIbTZb8QDncZ5tSnmQGZmGdw8MfILid8nm4li6U2jht4X
	 dyTP4nrssxGcvKumowUx+cARkKPCATtH07GRy8sXOIi3dB5T+PI+mZfnTXwRqIFQzf
	 bK+MnyOyGQiVBJt+qkIXs1TihgW1VWV7IcmscLhbpMv1eIVfVUFVmInxu1YIcFJSwT
	 jg/dSh2IDw66T9bdvEKsSFUfP2Rwf8eZRFA5gwyQfuLfVOH0PknDYPOftGd9tYPTjL
	 jlxaYRpkFHp4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF4CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800359357.22220.9232403773400045669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd350cb11c8a574c9b03b27dc3b8275064cf16184a849f9eb3fded8fc7223d0b
Date: Tue, 16 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758003593
