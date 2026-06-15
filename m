Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AB7128816
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781492194; cv=none; b=EIOVfuaitiDnr0dxK72JBYgkTZITZ6EyRnKe6mN9BJuX+sjqwcoPqhwkMJikgBY9DjbU7bhjDp28vmjZtNc2LHvHNHV4G8D9ZIdJi9kEPbghcWRHujuHuvlNAre3UJoWmCJBVXvA/ZztsmMk+dozEeIhwLjaGh/BRauVO1JUxoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781492194; c=relaxed/simple;
	bh=xudDIG+9IR/Y9odZBVcCCGrnTpced6cH95osHn7jeiw=;
	h=To:Subject:From:Message-Id:Date; b=ftHv145MhyTJy5wNhDG1N+1ip06WzeDLBUvIjqneEcqfcdxeKt81r1TtKeWszuIGvRNDRDRzpSRkfKKbIJBlSjdzBrP1s1OJ6/KyrcvM3bRB5ljLi5l371u8RF8yAonZSbY0CNG2HHZpnti3ZnfOcFMfkgUswDMr1d1zjGcaJRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIRX7yeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIRX7yeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD53FC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781492193;
	bh=xudDIG+9IR/Y9odZBVcCCGrnTpced6cH95osHn7jeiw=;
	h=To:Subject:From:Date:From;
	b=RIRX7yeHCSZ0IB/6tIFun3zHW+t11jgEBLeCgecQbUvSL/z5yCfUU7sr8aCIbQTpz
	 j2tiEpqHDAsI+l8sCLiR8kXwxOcvAvEljKnKCs9SSThpgt7Oqu5D15QR5sd/6bpVb+
	 nIl3lE9eJwcGPY+Fj3z+e57kHxfhFfgMNczdNaZQ7VOFYY00nI4sBUuLa5vFQH5B/b
	 o5CGykq9Ut66Fdvwb6KhQCdjfHgcFUjTy54L6PrEqw/B+Zslg4zfFKA6OXb/9YofUS
	 En0kPBd5fjtVaSVWqupx+Sn+xJfD+8NxaNzngYRDVs2CCzODlnUVEAimdt5ds2jDGQ
	 JE/ARjZFt3ZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD073CD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149219374.12521.10074512142860743764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5542fd5c884e385e7ab742649817436c9a2f741938b91fca2c390dd462edfd
Date: Mon, 15 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781492193
