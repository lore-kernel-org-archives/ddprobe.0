Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AC81519A1
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746962994; cv=none; b=DeL4SjLxhdCWZzEVDof0g5lQMOZ9XpAnOgV7nlKx0ViYpISn0BoEZ44L32bCgVSOApHsYfYkuCCn5PFnrFfmWAfQBUkwMgx17pAHtO8vxhMtCJL5w6AR4fMM77wpWS5SxEqqO/m9/uFp1nzM2NtPE09tx//eDWRNyHU1w98AsTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746962994; c=relaxed/simple;
	bh=o4Fe4z/lmCbSFdXZ/+ZiTsexPsHL+aiPe71EyE2oAt4=;
	h=To:Subject:From:Message-Id:Date; b=otSd4ReYQWk7SAEanuZRYhIlRp8ZHfB2yRw6UFNWChYU+RvlojEFDe26Knw1v2jsxu1pJJxrjqyRnSlVhg0ZjKkEpLkPoDlD8xn5UoHqjwnkdmtPzxPvvnmh+/sGxD7uSygljQ0GUt3tkryriw3Oi9dPYUs+pbzh8tk2hp03zt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk6HaGhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk6HaGhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE03C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746962993;
	bh=o4Fe4z/lmCbSFdXZ/+ZiTsexPsHL+aiPe71EyE2oAt4=;
	h=To:Subject:From:Date:From;
	b=bk6HaGhqxk+QAj5ZWDaXPVu9GOUeqCrS83FHXkd+8ob6OJikgdh/aGNzqfQhCTimF
	 2WhJQ/qECUaWBy2VN7rg+WMjMCRBpKnF4nFKf+PtCBufSmaszT5yw3uyqf2UkXIfSr
	 ZtfRJKSsFxW6bczYdiLONu09nbs9tELrkb6/I5TOtWFObYGs/tP30Xfg/NSyaFyEeJ
	 Col9KksdBv63+FYLkCISdWfjYeZcbMV3AMo6++T50Lhfe/weFGktSa30xc5zfRQ1JW
	 bgF4kQawdEiWYe2Hdp21Chh27C9Kfl8sRNtsN/OFTOQjIhJQiPPR1B6+//u0IBw34G
	 RMR1I2TnwC9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F49C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696299359.18793.599156345057515494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ee7f5a5022b42dd83402ed47325ec0cdeeb2d607431fe674c1c569e39791af
Date: Sun, 11 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746962993
