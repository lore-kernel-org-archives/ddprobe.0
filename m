Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E9A34CFB9
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761672593; cv=none; b=upH8DGH1S85DVhij/Ze5BPAaV50S0fl1uDXZ8DSBu2vo2/Z+NTmKBYcWgiSVfm/nFERmgQkYX+FSolOHU+ly8uSv8HVytbnWpjrME9c6ZMDKXLAO1cMEnv6Q7EFFZeYnIpesKe1vinK5wU0GRwPZzf5UdAkw868qltYtAIGJN/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761672593; c=relaxed/simple;
	bh=ofbyuYHVLCM9WKc1+EiXeKXl2yFNr+rWVm+TzYzgt1g=;
	h=To:Subject:From:Message-Id:Date; b=AHr6HTAcPklIqxlLkqrb4y5EhEunfnnjQcZbqyl1cc1BBLlOd9rYA6y8BOuyCF7UTvLTSHl0xVGzJmCFuJ1tX5VPr4ecVIiXdjxtp3k5rmRPoIAu/DUtg4XoNaUNcKhQ5lNBlhIoe5w91MxDckddZmk7NumZ63to1U8jWrlJp2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPHv4NQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPHv4NQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FABC4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761672593;
	bh=ofbyuYHVLCM9WKc1+EiXeKXl2yFNr+rWVm+TzYzgt1g=;
	h=To:Subject:From:Date:From;
	b=aPHv4NQ8lXbYbVFLi15QMJXrBJZClLb33PY/gba5+l9KndcVeoxXpZJvipVf5pX0Y
	 HhpfzGxD+BlmTrH1BwBIdJqlxGF2aUQhnzDAI9dOr6ZaGSX5KU0mcLq/ppW+tPM01m
	 9Zzz5UmEMGF02Ym8CXbwN//5GDYRMdcXz0yHL7jCHH2kL6mr4mEL9CREkLRI79vU87
	 6xP7/L0hB+k7iaFWlwzSqz+JrzyCmD2VjK0+ruCWamsnvFf2tFJ1jCHhwFlTg7VPQf
	 gbeLTVTp65966gDg0C0iNuE5p/Mbcyhz+vCbTstuKHLL2an4sx9WF95AJGfxNqrGZk
	 IWWW5sK1YTETg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92428CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167259358.23543.14988589101104484758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b05ee26507773c0a99fdf4be0b3314e66a2eee60de123cc3ec4ba00c579000
Date: Tue, 28 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761672593
