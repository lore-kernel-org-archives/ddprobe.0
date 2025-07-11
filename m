Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2777C1E521E
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752263394; cv=none; b=JlByJXRQ/umqxHZs51CaJIN0hPROnh+P4riIf+sHvW3iQ8XJpVJtu09mZr3AqHpXO3TJ7Xn882l+GoX9OvXkYDUT6q4mfep3ueLEunDxi5D5V8+8hqXHQqR+xHNC3mt/MNhyPpZYvMoW9WLq7347G2CJALNM59XfVAbUadJgKso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752263394; c=relaxed/simple;
	bh=YRLtvcwZdxKe5jzdVBwtvVjP6GSMLVU70VWnXWWDlLE=;
	h=To:Subject:From:Message-Id:Date; b=Yk5ROWyoehxG3N+EHZnVTPegUNFLuzuskIehKRB/d/EUkc9tDxVGE7n0A0ulpGOPbrSlslwNYsstk/D7MdvHTJ9ysRJxh1w+5lA82YwoBpKczVMk2q0pbG7bSNvfUYOzr84WMom5p0KB+KjS41F5/UPYBZOEsMw4FBrcBFvy/Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awm1L7pL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awm1L7pL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D86C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752263393;
	bh=YRLtvcwZdxKe5jzdVBwtvVjP6GSMLVU70VWnXWWDlLE=;
	h=To:Subject:From:Date:From;
	b=awm1L7pLzlJSsVItI1ejXVL/Wd8s26UPloIpF3GwSdxn4KsCFbG7Rhxj4ZhJonQ/w
	 MKUP8LYnyiNVnAAhFT4g7lucd75ym/0DI2uD+Kze9tlspL8kGRf2wY26PRaK0IXP0k
	 emSECTwhgebckd/uaacw23LF/McdiRWfwR7nluyvpqMLjn+865or59aoxAWMMDSK+d
	 jlLOaGJoGRg0qHnkCTVyhe2J68FCxQ41a1RMTOSZqXTARz/uRePgzOGh+FR7sFyoFp
	 bb6iuskZtuUL+DXmpuQyeSlUVSffK5dI2DcT5BYffiOd6Yp/Zntt7wnR5WjlvlYMBg
	 sks98OqZPTZ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248CC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226339358.1852.17433425993735119551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b84a74b35cc4b85cf076e2da59e45e26c5306f98abd251fca48badec17544fc
Date: Fri, 11 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752263393
