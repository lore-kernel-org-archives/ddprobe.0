Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30715287506
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763938314; cv=none; b=bD+1JKSEjNsj5UnvXe+A/jB6H0MIS89vi3RqHGV57Tpj1aYO+WnLLJRuO14rx8gSsueUcIWl7vOFwAryngumfguUVvv9F4qadeMB0XSbQuGMAdJRXvaBBzfdJRI6qyo0cI3WWd2a8B+2zbfQ7e0r0JN4/b6C/5XjCOmqh/eGB78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763938314; c=relaxed/simple;
	bh=1YaEob+eMtXVWPqnbLjXTl6vMpgZ73ZF3vSRO9V+ImI=;
	h=To:Subject:From:Message-Id:Date; b=gk8U89d3dL7sol2uS/6P5a8r8uS5STr6twDxvL0z/eMhyVUo3ql6ZGpLzWzUQ9GYv2rwG/HB0zJJedwS/Yn61/JDhOlHBfT6wHabWIUqyDEkzdZTB82YChg5OWxJtEsNwFxY+9Py5LREXhrQv/Cdh/QMUfJ8vyrqGHiLY0p4F+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oevtZqTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oevtZqTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48B7C19422
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763938313;
	bh=1YaEob+eMtXVWPqnbLjXTl6vMpgZ73ZF3vSRO9V+ImI=;
	h=To:Subject:From:Date:From;
	b=oevtZqTghF/GTyA/ewDDk2ks1P/hSbA1ooAxXOdMwa3+MpdAMa+ymtTEagk5e2HGu
	 ArfCgJHTBIm2jb4l3o+8LKDoHM/maetk49OJkaLU5LSwWwYs11geAWgc0gvo4nyVug
	 9Mn2x3QSDJSQ5aYsIqrqdbIqFE0i0qZNliq+l8g878UxwnH83NldxZVAjTpJUSgq6C
	 deYQw4HsQudhmVTuZQ2aH+J4SESxyBjmF2BfzkdNFmLyh+6lGeOfi3nLDhHUeX+fKJ
	 NUg4BM/s9kzqPHYytx91Q+3DjhG6jYo51UZy2t43S0IWj8oboRdgsQIQ2t9j3iKqd8
	 STzwE8vUUB1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92919CFD313
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393831358.29714.2116328485680673166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52193061f19ab0b4b831273e198dab4ed6d8411f810be22b5f0e3d733b56fdb0
Date: Sun, 23 Nov 2025 22:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763938313
