Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E69822FAD3
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740670134; cv=none; b=B728JqJGtdvjtvTqIcQ5BFbyMOD8b+FBnquDTaRpCpgX8Zmja/vGpIckSaGXrFSqgxG4P4jCTdgqRoAb8ThWmdDGdqTP6Y3hEtPgMEkdMiQihpMqKZ3C9/uMHvkIzI+O9KRNeBgkDczOafbEn9XW3WQqmj4mUsEo1q0yf9aKqEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740670134; c=relaxed/simple;
	bh=zqv83IJFVbm99WpHekQnw6sP87APDT8XPAE9Z10JAjM=;
	h=To:Subject:From:Message-Id:Date; b=kvAbG8adxsxxD51F6yzTEeL/Kr1WrxJJLdqIErmKl85ETKjgnAnYzi6u6k02p3DnBLNxDvPGBuIlERDYv8fNGTMX0JA5RbaTPV5coot9vuY629ncPRxw8uQV57s+e1n93xyoPPg/MErdcP2AE9kNwhkbA9upS7wA250FXjN6EDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDn6Mu9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDn6Mu9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF055C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740670133;
	bh=zqv83IJFVbm99WpHekQnw6sP87APDT8XPAE9Z10JAjM=;
	h=To:Subject:From:Date:From;
	b=cDn6Mu9VaoMqWuLyRD/70HXFu5cse7Im5U6ZuISj96xjTgpeMyA1VWwLxla5MmpnE
	 y9A1phHcZF/v/Mgh6psUu8efNrGdlRpa3bYW2Xwq/qe6Oo4WcnUdwgND/VnHivbmF9
	 /8yzmI9eDlTyGVRWlwhddd0Tq1L/6NPMnXvbYVUuFotu6KCNdK2Qj8FZ+H3ZVoT2T7
	 QtUO64B2+snJE31CpPKtZwXDXY1U39EZYoEzsT0S3rGCi6gQD98HrECzy0Z06Ktayg
	 7HceHgD32VBejpO+duO9VlFThDx5DOtVPu2/QUKnVFe0GU9XAUPS7P/DhLRdvIaq2d
	 KHVi6FyZj4E4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C25C19F2E
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174067013360.27044.6148992189244800585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83b3cda5d3f38c9bdf025281c1d4fea9b1ccf6d1920ae25e84dff31e84c36d0
Date: Thu, 27 Feb 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740670133
