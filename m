Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306F7A2D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747618194; cv=none; b=AYB5xj+smU/nv8O1GFymZ/wD9gnzB4zyqKsPpB781+zSPxnulnDxS6oFcjPYvjSq76uezwyFtGRW9Bq34ORo7JV4wvjBSbxqd9pGVtXbuyqyEVbdRFnBRsw08JogslXCJODodniDmczziUHEyYiZwc1E8t6ML7313+s7ARyM3y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747618194; c=relaxed/simple;
	bh=Pym84U+f9AioAz7rpmP+FYRW8F4x59k6Jgsova0R/W8=;
	h=To:Subject:From:Message-Id:Date; b=tjcMuC5Z/39rIgOMXgwM8SXO1dq3TgkTyh4Afd8mGobsh9jNqcKWMR74xXGuWIthqiDiPHb3SDbR6C0Hu1HC+d0GBlYqE2JiRUbSp2LvI0b0pHFdwB3aO0JrbRTGCIAmuaDB6pbootvNhHHDjIT5NVfF5SxNtGkg5SITcZ55xnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXpqfQMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXpqfQMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB81C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747618193;
	bh=Pym84U+f9AioAz7rpmP+FYRW8F4x59k6Jgsova0R/W8=;
	h=To:Subject:From:Date:From;
	b=uXpqfQMcAobuuY9pCvCRMRCF4Q/fJbtX9wtQLsq/xqIscKhkCV4GJKDCQPE4iY053
	 DwbSkjJKSb9PFnRpG9N2xGGFyjS8Sa0ffMN3egdCaPeNKcoXMqW3vzP8RQq3Zwuf7/
	 e2L8iRENFVQXwk6THkCkjcd8xt1dZhtSzmGIh5vPzIPQd5KutllgHzKBK/F3W3kbTt
	 6Dh2xafw8e5e6rVaj9vgc8otEv4yvXd75dSC4kntu/WmLQW4RWOM8XNzmEePxogsCL
	 rad9lf3GuQ3uoEjZrOrMo08osYiuLM7876ojkWrS+QOxZahE4coBLD+M28NDEgHl2j
	 X+uHklvoeGY1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9EDC3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761819357.11727.4286633908974424433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a97a8d5f9c547b4658e028ff2d7166f6dfa56f32709c276932a6e5844a7266
Date: Mon, 19 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747618193
