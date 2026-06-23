Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B608358373
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782209194; cv=none; b=epJ5PH9yBQwvTZbj+c9z8HMMYl/wN/GZIQmcGIn7lrNdixpvknL8XFk9foYRoGtOdt1uUE00VjGRriHHhCRaFsYV19eDqnHALecZccYWcInnk2QhB1kl0zU9wjKFZFdeZYvKnhEBCTE73uuq2ODNDoloGQsiwg6c6ukkqCgk5Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782209194; c=relaxed/simple;
	bh=tjiTT/0xlXkL9bX0w0DNQDj4xZvU6XRC1POcldQA64I=;
	h=To:Subject:From:Message-Id:Date; b=WDaUJXgjucH/0ugQeiaT/vcuAlfl1nGXVt2QcwT5WzpqSfaZiEz82tDefaVUK+KQqtD6qaH8QlffYQi/rOJOLz/VPkImv/kO0/A6BO3MP5NhM2Sr9TYnGhIYB8ja2BeMcJ4YlV5j+vG6lG6b8kwfRukHQiEgqjfh7GBfP6W4cpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfc3l/6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfc3l/6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C587DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782209193;
	bh=tjiTT/0xlXkL9bX0w0DNQDj4xZvU6XRC1POcldQA64I=;
	h=To:Subject:From:Date:From;
	b=rfc3l/6hICR6VW1lsYovjnOUFHTws0DnJioRCzS5tLdOxCQ3kOaDCR4p7Kv6TBfpK
	 ZC8DZfjqAGVlCasI4VYjv93Tj8vBwT2rE2FoGdPuF5eZgfvXJ2U8c88ku/Hnn2e5es
	 zksEBis5w9NFkM73hwmCotBPbG40+5/aKtGlQGza3N8HbZizbogXCEK6OiT4udHC/2
	 rmIjON8MMBfBpSLYc5pOVEL5MVuNHCdNTxihcpf3wQ5mGOuqY7npX+/pE2gdryd+F9
	 wukA4sThb0LEn2CJSShFEPySw2eTtjaCjU7sNOTnadm1Iftrd89sJu/GhKmWKr1KpV
	 XKLAci9dht81Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE70CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220919369.18690.1439181331657518013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1e5f565e2afb8f495eab7d90bc3bc1bb5d2f75a70c089047b198384341742a
Date: Tue, 23 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782209193
