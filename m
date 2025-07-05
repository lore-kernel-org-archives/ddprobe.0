Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F7B200B99
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751714394; cv=none; b=DIsAwVxxM9qa9lR9dMvn3Ukwt5NRFRQdRg5HtbDLc3chiOuM+Vf/Zcm5fAie9rTy2teDFER+V0nctqzl9tWRWMqeUYwy/Euy38UC/RLs7OZtSbHm/4jTc8IKQfY0z5doIVGaw1YkQJymgs9gVhDrDfBDfP+mStJSnPrt5Fb6MkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751714394; c=relaxed/simple;
	bh=bZ6AaUcl13bgC9Uyzzvpbz2vWvljtwnyuR3OA3xrsik=;
	h=To:Subject:From:Message-Id:Date; b=mdF3CSH/2WHf2oQV0HBo6Ll1r9lmyf/r8h6W/aE0aS4y82yb+/YB3YLg6s3FQd/l5whLMmlm223a+wMKQX7z3WR+CA8XjpyIhiBwscUuj4oMMccV81Ld5HEmfjyvQzvdVijE+QUQjZ6Rj8Gjk4zns9rQ/PHDSk3zhKKngTvCoHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX27p96s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX27p96s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2516C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751714393;
	bh=bZ6AaUcl13bgC9Uyzzvpbz2vWvljtwnyuR3OA3xrsik=;
	h=To:Subject:From:Date:From;
	b=fX27p96sdwQcyEKx2psHPk9JutYsJFqGuKgynQOjOjiXEwE1hgOOZI9IcALF6MEyy
	 Hs7IKzpPVNiDxkBktofTfdj/DvCyXdP5r8d3Iru09wPb9Pk9ZUHUge1SLmtcHEWYNX
	 d1o7/VqyyEYlgfoiODA39gq9DQicq7s+6bOgT7dOmxoqlkVKKaOkRc8om8Ce3490fS
	 VHDhrSTxiMCrKnbEws+/6lwAia+LpjQuMUuExSaiJJ2UBYfp8ZcdOoRaCDMcnZy3Xz
	 ya6sLeoJG4162+f9wndG3hf0Vg1I+jH6FD+8waqK2OjgLw3FqlebleqbMymefhtN/q
	 2XH3eRuLD4GmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91077C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171439357.16962.11677414835538122508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3d685a23d290b650f564ab5127bc5c708093d56200aff5fc3ed8b8b086804a
Date: Sat, 05 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751714393
