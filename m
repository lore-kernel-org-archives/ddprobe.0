Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5567C1A9F87
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784862634; cv=none; b=PpNiRalxUymYzZO5WqA/O6sZ0ovtpr1YBHSA29Ga4gJ79SRvzs57vieTNX8OZbwDjMoUoeF8ALSWdY5uA29VRcAzis5SXW07zJ3INki7tggMR75CabwABS+eRZTd+MR0ExEalevyo2JlITZzEJZsuW3w3PwCeGiH49v1ecgH3cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784862634; c=relaxed/simple;
	bh=ZYHt+d5VMihwwvpbAUyk2vy4GZbuI8l/dI3RbxNcQKo=;
	h=To:Subject:From:Message-Id:Date; b=iNVfn97WYryNIQk9jZMWuLSI96/GcZ+STS5zS0RgknA6K3VUmVTzr8fz/6q0Zt4GOhQPxYHDVedVO45xsFD4LHoIfKTiskke7UnMAt26N9jLMFsv0vgLJ31zTEuhnPUYL/DoIX/F+LDTOKVQDDRe2EXQXdCZcOaI8HFf/D5tYUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0Iw5hzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0Iw5hzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2765C2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784862633;
	bh=ZYHt+d5VMihwwvpbAUyk2vy4GZbuI8l/dI3RbxNcQKo=;
	h=To:Subject:From:Date:From;
	b=m0Iw5hzvshmUlK11c5FjHZYQZ5BKEG8RgkoG/2BdVfkLk/X3qUHx1scMivUoNTVvb
	 kxhs5SZB0UoEkha/g+Mou8pBEhm1O0DUfCkY44jYfVY6TsLYZMBko83qUHoWu7ntk5
	 3vmlfPjHd0l86PTnByxavus5RfmShS8BUoQ1Upfd41rBhEuCygCGLXPfb/oAhiljW5
	 IPWFVORBs11y8C2JW77/OqbHACjpP2K3Ab2NqWn2b+HMJlnD1g9/8+kinKQKD/0fgr
	 coYvyRzZ3j1/gvqhPtqJh/UBnMslEsm9HB9CJs7XBTrz+Mi5kuOyWkr+uzslcwfXKg
	 B0Z8bEI+A7nXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C99C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486263368.23284.2809488813330748108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c23d9efcff15a3f73da1fb2c9de32a5c487646c09983904c7781c484131f0dc
Date: Fri, 24 Jul 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784862633
