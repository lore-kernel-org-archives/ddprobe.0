Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2964C72622
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776538054; cv=none; b=BVzammAQUy4kWB0R4KOM8A8pq1GgtwYf0UwnV5clKBFVVLMVQDM4tdSy3SNbEJC37phvZBhotlzLwkjjmjNQL2jBArkE0EdGlkkb7VlYuQzYTa4Ha9QZLXH67iYdUSl4GLnsMNNPeM7ElnrY509w0Dgl2N69Z1lHo/H/3oQZRgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776538054; c=relaxed/simple;
	bh=agxxo2JXvv3AnvEeLb6Cdghi9KIbd+aEXQ3af9pj/qQ=;
	h=To:Subject:From:Message-Id:Date; b=Bzv2UgT5ohm3HVS+2duzjifdeyYRUAyzDdxHaDEavAHwciLmyGpwBgZ/BQ31MjkXLyeNoywylWzJUT5wL6W/6Sj7VmRrDVtVzTDTcgUcChguKwhql48o4ayPSTI5ErLIPsYF6ZMCl2+uyhqBqdo+sPTikRk/fVgBc7sf9Ify7Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfjP9PWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfjP9PWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF29C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776538053;
	bh=agxxo2JXvv3AnvEeLb6Cdghi9KIbd+aEXQ3af9pj/qQ=;
	h=To:Subject:From:Date:From;
	b=EfjP9PWSWYfwPd+c1+LsQM9tQlo99WrpWOFz2vl+8qamPztsBNOu+lRChYComDwu5
	 8LyisOiCAhM/zKTyI394qzz9OGjKosLOKleTU0wYMaOsf2pMU9oLzcil5x521SctPc
	 jTgCRyPdG+41W35S35Z5SBT7V3vuWF3D2N7z4/ubUgZNELZpYiWl6t8h/qh5cHFhcg
	 nFNO7w1TfK/n0TDQiWw6nEjnHsztlVB/L2Bja2vQ6ucq5Rn/Usl4IjN84AB4hOxmqy
	 fbGZvLQfHv0JZT5sDs7No8Dqde6GUQ3gsTML/h8KcQtVC3Wz1DOk5FhmvQK5PWr4Oh
	 hkiJniz66KPig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF39EF99C8E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653805368.17169.13660639805947829980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d49dd1ee56a62ba0b4bf7dab68bdba498342e1e91425b646b79b1e9813b66d4
Date: Sat, 18 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776538053
