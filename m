Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564783803C0
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781328394; cv=none; b=WkbLlvtyWnN2p+zYgyFTFjDkalGvDelXJJmCkaJ+97peIyBV4O8Esciym5fejwVq0jIi2rRL0eNKuRXMOTIrmmzksOzpQwz6XmyRmaKCXmSF8QvgpItkcDTBQZYKvrjb+m8XwofyLLY8bebA2jr2rcOs1U/PGyAYkEohd+rDAtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781328394; c=relaxed/simple;
	bh=wRRrNWdfWTM5X3EnXG7BnTSN/iY0UZ6uyY0/4fuinUc=;
	h=To:Subject:From:Message-Id:Date; b=Ks5s06Tpo66oerQrXjKY/qqZtfWH6k++YQqFZPCrWqUMauA1ntyaL/lC/NsYPl5PWsjoKh4tblA0fUeU9A6PmVeRkGWgs21/hxi6jescFJapE7iPI2IE2phzNWP+M001KJMKIGKPIn2AR6YxJKFshx0ONLcBvL4KZr4J9D9YWGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgs+PC05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgs+PC05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98AFC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781328393;
	bh=wRRrNWdfWTM5X3EnXG7BnTSN/iY0UZ6uyY0/4fuinUc=;
	h=To:Subject:From:Date:From;
	b=fgs+PC05p1slA2ylS5cqLkaivTauZa+1rUozrblfzqlVvFrZNBXlg6CmFrs20CeF+
	 zQDjnqr/e1ygYXB5nmTiSNJpciWptr0eSKIOrmT68AMqEgHa8RqgxqmEU66P4vQq/j
	 JtLnmy2U6gZA6RE5kaZcsj0V/vn2NzLTJdXxtLyHZGfd9JAyWamvt9dz+6fjug4vW8
	 bdS2mqMO4MDXShHUUP7HyakCwvMGq5GAcBNbBil1vGUQs1DkeNCp0u+Zn935igpMOI
	 jeRu8zo4n7XRn7ofO0zvncqhOHaJM2uIK2AJdiozGOj3ImDZmg/bunj2bt2xCLi7j8
	 GLll39Sdnhb/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9BFCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132839368.3045.17132373973230124747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a069b694b3d52c87cda1b1040b41139ecf6ea9c46c55fd3d119b33625184bf
Date: Sat, 13 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781328393
