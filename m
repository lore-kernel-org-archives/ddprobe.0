Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122DC2C1A5
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707078497; cv=none; b=QhDxwyNe5VPQKQS3w7nZEHLJpgfSTEEXimS4OY5yXbYrXWtNQMd0wTrXDCEV/cJUiO5Y2RUEw8eOUuPQJDnI37KhyWdEJ795GWUcC1TGQBupuRnWpo37Z7U8tDPn9eUeD4vxzz4AFzqjGMTpfJWlaNBjQ7uiK76VNQmR/sY/WEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707078497; c=relaxed/simple;
	bh=u8nVr9a64IQYofu+6E2YIlfU68eQhJVlNtQiWGnCUTw=;
	h=To:Subject:From:Message-Id:Date; b=EbeA4MZ+3KdjVDzCxHUhJ25eBUF6skSxvZAmqLudM9EttzeGHPCA7ZCtJZt6U49gxLm+0j0IJiZDluZ6STmopJb2Zq9iZ7SxobvEoPRWMPevHK5gzpZjvejpI9+IhT8FzHxpXovCJ3K02ymqWfoiKwkj3qbliAm21jTDmrIILQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNqGnnto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNqGnnto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82720C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707078496;
	bh=u8nVr9a64IQYofu+6E2YIlfU68eQhJVlNtQiWGnCUTw=;
	h=To:Subject:From:Date:From;
	b=JNqGnntoaP86JIxpwbRm1H4QBBIlEcN9NdDmBxRWLViw4L1/XjFPMQvjtyC046XMi
	 zf5JCAZnvtlLUZDOL2vxr/ZichBxPR6zjtdC9BNG/cCimIByt6qoco2QxClcWXt5U0
	 KKxUOrYrsWng84YG2KFSVEyfohi6+/OiURkVVHnciCdfAOfIHbpYIbQdwBFzvqhX/D
	 Kqdi246YZhk5BD/nSFF3PQVGzMH6zfKLDqSjXF99lwiDUnmETkqZYJh6V8bZk9v0tT
	 YENwlbDjuwApWkzoItCDG8VJ4TM7l2V6uzrttbH/nVOR+WENGxKh5DJhOMGfqhc/+I
	 M88U+biHKsflw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641F9C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170707849638.16394.12252835290338208460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee2a25138a189edccabf18108a32d4f227f0a5e449dedf5bd7f04fda7f00f8c
Date: Sun, 04 Feb 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707078496
