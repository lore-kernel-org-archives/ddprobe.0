Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35489175A8A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777187254; cv=none; b=H9LlIxFCs49pNkNe1rA8fvAk4R75qe7YrzHYsNMNBhSQ1FyJX7M0DRgvtnb0CraicpSBUgzK5gG6UF1m+uEM3dIJTFXj5gFoRskbWv3He7VL5gqeXCpbDdPaiuRVZlQfco5g3ITa/C8JF3pMpakBSXpyXGH1m8siOIFaCVsNlHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777187254; c=relaxed/simple;
	bh=I1r7y4quczIxwpv4pTRmGZhLor7ecMdZBAyNVBLK5lA=;
	h=To:Subject:From:Message-Id:Date; b=nq34JFZQSd9o8Thhp53ndO+6v99f8AoP77jqrOc2WLU88TGZFqwlFiN7IjcjU5fkOt8+bkGT78OHS9Uhs2YdqALwAk3DOs4bd2FkmxJoSzl+2Fy45rnNl5m4zgNghXuwNUrK2wv7yJQ4zpn4wcn60kTcU5PQVkP5r+46ziezHnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTPzWUAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTPzWUAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CB5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777187253;
	bh=I1r7y4quczIxwpv4pTRmGZhLor7ecMdZBAyNVBLK5lA=;
	h=To:Subject:From:Date:From;
	b=WTPzWUAJrll52VDvqG2XUeUpvQOoimYn8llU8uMVCxvBpWz2+1ngjQCPUgVBDWqNM
	 +4WPFMlA3lkJq+KGJNXM35fFjPKWGA8BjhbHVRlFJyEV9INQvDqVDx2y07kgAOKo5H
	 SQcV8pKU21vo6GkzdFo5dcX1Zpq1WTnLikFNlYPcVIOmSayHuBt8p4/LiH3xkiICZi
	 oE6yLiK47YhulgMrIxoBW/AAgsdw4XSe648aetSfSpGSE4OceARQBMbqggiqbaK+lo
	 H7xrLXGmiWr8o84GAFVJ7Gx3R72jTOSbK6emveBvgoLQModvwRgiJ832crgd3joH+X
	 ydMzlF7UzlrHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC43FFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718725368.11380.5948515802167533248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7961ba1e9cd2cfd99f9c780f99aadc220121cadae2f3aee68622c2d0b84160d
Date: Sun, 26 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777187253
