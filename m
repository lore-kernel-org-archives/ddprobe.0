Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3819F20408A
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744921194; cv=none; b=R26yNF9qjS3iXkI8/SxgJ3OwQKclnNBHlFXg3qjABjlsy/Yl5FeuJP261Fk3thBHr2OIV5t2YSgR+x05MHrnvEHGtPvnqfYadjObz3Qn6vTSK1njqMChGxfZJT7YHG6j+iJ7g7D4bjLMwBXKMFfJYfXYqtr0qpr+bABzb6Y6oIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744921194; c=relaxed/simple;
	bh=Mkb8L4cfB9XLgqw8qPoXZnMO0TJmc4cIJeeWE/HvqbE=;
	h=To:Subject:From:Message-Id:Date; b=p7BOVl1XWUOJhmm3VA+AM7TLULQsxU6UIKyfcNcAOy3CjjRIQlSrHaY9xUu3dVTDH23YykwyHZ4eD5xWzO0gCgN9uvaaoEY1skFnbfD/7jMfIVN5mEy48mF2QRWSsaKmWdkG7mBbOuK8qz1ANsouBQbmBho2SlVASrWYzQQPWsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sb6d7i65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sb6d7i65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8914C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744921193;
	bh=Mkb8L4cfB9XLgqw8qPoXZnMO0TJmc4cIJeeWE/HvqbE=;
	h=To:Subject:From:Date:From;
	b=sb6d7i65VM+1EnTWuX+mF2NL3T7rOqfVRdZGMkIptkNFnN0aalTgEtVB7EMFmhDBj
	 UWpF0zCQ/ABGfPpT2zqjQYVLZrECNyNn8uwW7xk58tfJ39Okvo0fn5eczGK9w0iwuN
	 ojyCVLGNo7agStctWuUdpfKD3U5zT4QRUdVUdlZ+m+f9/m7NDnqLSwl1smTsyGbwEW
	 nyEsVJgjqaeXIKKsT2x5Qh3WjjmTWZSW/8dytipINMV7H9jeCAcqoUYDlq/yKYlXqt
	 eboEC0JjyNOobXQTzr0/3yzozucVwWC/bRi8nVGz3iDRKv+mTtvkX1DUq/3zkctKEE
	 nFUnZ5ZkbAPlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A15C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492119360.17876.6900588052790047191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ecd47c3abde7835d0c08bbffed910f3416a08c9cd1d46ab7b30d567ef89106
Date: Thu, 17 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744921193
