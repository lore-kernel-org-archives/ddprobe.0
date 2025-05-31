Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227705674E
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748694594; cv=none; b=HbBLSQxkp/DUI353RGSFW297dnDwpkkKWFjjcgxQABerm+K/LqRs6GAx8Q9w+r0KpCiWBiYfazLTfTyGJdYiSjBoGFPgBxCnULHkhX+dBeyVf4G3xNQRM8PL+Ojp1jPK1l0oYwOrRDD4N/rQgWZ7/7uY5wL9oBFE2SNFTGE8FZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748694594; c=relaxed/simple;
	bh=Kbhi6VrppLr9+hk3WJioIxjhqdoIwoa4OuqRaNkQ+1M=;
	h=To:Subject:From:Message-Id:Date; b=azbxM5NywWdN6EluCDvfL0jmnQlVlQ9VeELF3pgeZpdaRh9KtGnrhPUq5j353dWgdzbWk8/Q1XfvQ9/xkvxYOp+iuMiBpgMbwmoqgAskLFkJhCKZLsI8qgmfxVc7s1qrne5mfo3XFd7GlYahobuX9nnsmSuybu+3vnRqVsuu370=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJDJ7cc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJDJ7cc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDACC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748694593;
	bh=Kbhi6VrppLr9+hk3WJioIxjhqdoIwoa4OuqRaNkQ+1M=;
	h=To:Subject:From:Date:From;
	b=lJDJ7cc2I+NYmBmn1xiJe8ByxwuDZ8qDi7HoGfalzIW7jBIiFK/nKX1s2pK70bBlK
	 v4csgLBpSNsTN7ODIZ1i7dIiuE0a2ubVlUo4cYFlyxS+Y2G6R+u/CRDL4mLU1gX3Ri
	 w4lHKkzD2SfSYOVuhgBAHe9ukfoyB4pr84SGEEFashjpXzl7hL6H2unPT+UfjRKeCW
	 KPIririSNIDTenmauQX91LrQ10JwouXdNxdk43K/AOcWjYnILBt5qRPbFvjUzzSlVF
	 7oe0s+7yDMkkMwx7oVVmtX2T6mcy5pZ8bVVSNrM+VU8h18U4/KZTLwlS2jcv3xTK9N
	 y/LOchEIaCmBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E778C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869459357.13602.1878505958389095575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401a79b223cd1c745b4deffec3ff7f3786e02fc837070fb81667eee6c1e7d1ae
Date: Sat, 31 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748694593
