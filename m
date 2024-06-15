Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6525E2907
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718419703; cv=none; b=mV2Eax5gHDsmO4TDCTZs5YgT3GtPT9TCqjZ6GORDDqWMT18KBCLDwUrfHjthqceDayqeq3hFl9nD19gSegxvZUocItQlR8HeLWWylHBwS+X9vHkjnPBZpi9UovFGqCLjaZ7EX073XOQp4INMbUnfgzoYcT+m5kneAPHCqIuncmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718419703; c=relaxed/simple;
	bh=vb5r0vLCPXFyCq5gMRUYVugC67vsJ/02kP4prpETK1k=;
	h=To:Subject:From:Message-Id:Date; b=oyq4rH/+qAMzL/ISdoAlvaOFRTlFP1K6QJYSwFFewoN6NJjPGvWZgjRki2yBHnTtyBh5mfwNMA2PNO/OhbhNSbkutUtsPjbS5U0DeUWdrKkXN5Flt/ayxDyBEP/Q2s5ShO2gK9saqh76cKvtgjsjwS5FDX9n5AuKzTgRzOUFEbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXchocwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXchocwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF24BC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718419702;
	bh=vb5r0vLCPXFyCq5gMRUYVugC67vsJ/02kP4prpETK1k=;
	h=To:Subject:From:Date:From;
	b=hXchocwY2JT8j9GijoNCHUOh6oDhKg8vPoZqtGZI8D+xk/s/6/XQQ/F6uxjFjYjJQ
	 4ZqlrkUW4lzKQ1rXD3kOKxhWebdfkzQedgQ42o56hrpCjW67f3drDotneTDgzdHE1P
	 Tr7zWbgMHXvMkejxRwMwFT9H8Ku2xAxiO9yxQ+qoTrQPIriVy+Yj5ioRvcRjkjxIbI
	 guSTLMTtahZtDySAA8WCabJUcjGLU5NzshcwrFAZroNTFpiK7eThGcy/IIjLyOGhDm
	 lG8K7IO1rNgoWsGhtU51SoUUTpa3TZHa4RuZlJJP+Tugq8SrhIVd8JOJA1657FrjXB
	 ARPqeEHH0N7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8989C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 02:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841970281.23646.4984721757864054355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888f3da11b7dbc07714b44b6d86a361e034cdb0400b6475931f953fb493177a4
Date: Sat, 15 Jun 2024 02:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718419702
