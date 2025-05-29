Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298F8218EBE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748509195; cv=none; b=TzyeOD4kYJvFbxQi7HOUdr7wSWoJIl/fzPQ3jsqWR7NwUoXYrbswTBxuQwTF5xDUChgC50zMFXE2LYtWzEjoChBd/pnWqJdUk7esTdtXiTuUtzCJsG3CDiRAS93dUTAA2BKoJbFxkDJMxm/2pd8L3cfuoy3Y8XV3ducCVkhYiLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748509195; c=relaxed/simple;
	bh=OOAqsfItolRYpvEvdAlD+MFw76871vphq0DeE8DtNwU=;
	h=To:Subject:From:Message-Id:Date; b=DGjc4XTDjh/JvzpuvIjfij8SEOgKRxgao5Gz2zGrOp4pJwadKFtH0XGuHuu+U0VGcdBPazyt+ytrRcw/EeUg8VG/V9DtgoQpl20lsK58ARpmOh2Vtz4CmV/WS9wtK2GUzChztJ1lUY+GX2QRvkw2QwitUOL3dyWb8YekhNksqPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL02CyHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL02CyHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748509193;
	bh=OOAqsfItolRYpvEvdAlD+MFw76871vphq0DeE8DtNwU=;
	h=To:Subject:From:Date:From;
	b=BL02CyHoeDsp/wT6VPEg581uiyf/7f9hYHe72cX54VvJdZICn8l4f678dizjOPnn2
	 xBnoU/sfMvEZONQdU4sJ04gpYkeFyH0ptcBlXAS1DK+fHBa7WOofy8lv4NHm1jzf2i
	 LJrBbuLmJ784gBBFdF+Ib7NotOxjImLg4V1mejBON/fJV8SQUyRgItiGXatrUTgD2f
	 2pnHQsVDXCIaTkOHiDcCkJ5rWfJ2E8D+Sn5fMFsDIHTEk9XWPLOtQkGXepWxSUSYmr
	 pXwwKIaPlc60WUVVcumRtfa6RNAxHhmjXV31tHlJ5wYxc1GexOK0g/tIxAxIkmRwsP
	 Q6jYkXkDMay7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F5C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850919357.16689.14601201548829624761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571480c3de05f65bc367fdfced17d3f9af5de1d97cf544e4ab4ea840a5a504a3
Date: Thu, 29 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748509193
