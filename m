Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7A139FCAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791882634; cv=none; b=Ig6NBMbhJbM7gWZu5uxbSePEEHsUvNmn7oqc9SBcMYXkmSaUzsoqA5aExM/w1gBH6PuK9+RJSLwM1y+MrjE+Vp8l3q1xxuy1XVXFhxl4a+34CUMkocB5XElJ20jXcbeNYKg+uw1lAi91lwqKJxHeVF38MxLNbbcn1pds3oJjQFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791882634; c=relaxed/simple;
	bh=pyaWdOYwq9mQC7DUkYmB0AXw4/TslZdow2i3swRT3t4=;
	h=To:Subject:From:Message-Id:Date; b=LKa/pV4BW/XOh73iKGLVTL5fzS+Q39P6Fy0VUSSj2ud0aeMMsW0yVE4GxEUc3JRe+yrFtooWhq75qF0jGZcU8cYLZ0h5iapq4txAqSsSx5165OlAoc3usYipQUFCIDUBQbP4ZGHf6GkUi/Qmejk6qiNtnn96QbYUOZ43TLL7HwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJhxcScA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJhxcScA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDC1C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791882633;
	bh=pyaWdOYwq9mQC7DUkYmB0AXw4/TslZdow2i3swRT3t4=;
	h=To:Subject:From:Date:From;
	b=IJhxcScAmrXLdWFYVeKlkNkpGLR6H7TTL0dApxOWUHgtZ58pPWQLgvCPndSHdGf0X
	 LWcrl9I8w/STWOY2ZKk2ReJIh2Rhstbglj6G5LJtNe1IzqGP5enZuUqVMmjOFdihRu
	 oNSR6UrEO5xMxi48GAkwL6TfsqiiWCJNLLQU7D2lRtDSSj/hdXg5weS85BGYlcc+Ik
	 qwuNgGO6ATMJU7so6jRpPq2hdBFgTvtjD6+E8aGdhgdvbuSY/InptM4sQKCwtKLcP8
	 JXKGKA/8AR6cxK070kmhqtAsgW2JdUAHyuE5+i9GU+CAF6X0dAJpaxBbxcy0LPAgQ1
	 /+y+fbIRKHmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D1ACC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188263374.21969.14248575574507175130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfee359d884411d5a4f26c0b23e4ef4baa19121e2b2144986ab81d89d650dac
Date: Tue, 13 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791882633
