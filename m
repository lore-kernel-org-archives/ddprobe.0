Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895DC2F8E86
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778372314; cv=none; b=TUN3WIqm1NOQVNRN46ARS/a5XVWSBYE4YIyuva1E5BJBsRMfQ9nMT7oBMa/6XrXog/01jXxS1Bw8Fz9AdSqsTooE6Tgl22++EGfmFi70L6EVkPC9736PtZj84AP/B6GSs1wD0KVXsQ+kKaIQIV/29Sl/ZJADqC3LiyCxVpxfnzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778372314; c=relaxed/simple;
	bh=15q8fM+gwuZCWo1RDbqjG3YpkOjtihElEQ4PQ+XCZDM=;
	h=To:Subject:From:Message-Id:Date; b=sEUOSYuTCqoHcDnli5Lj78QHJfjNwkdKFFY0RWRrFzhkHju2HSmMUkN8tjuiItXnstZ1GbmJGduzUEaeT/cX4GrQ3aK+E2JFflxd/zEAoPLgvzxGzOwdSmwP1F/NMKEF8FTACV/lrphx2HrMUI+PbHCjxt1VrdVTnp1MTp9Z5qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loWGMw9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loWGMw9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 45A61C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778372314;
	bh=15q8fM+gwuZCWo1RDbqjG3YpkOjtihElEQ4PQ+XCZDM=;
	h=To:Subject:From:Date:From;
	b=loWGMw9Dkixdw2A5exKCSkv4Ep4AboY5l2FlG5YwN9ZVoybSy07CfulLjUR1wLf75
	 YyXcWDfmS9QczkPR7xsjOm+Gzzc4z6sQKerxCKb47IJ46GxgrO3eVBGjx8eC60tYkE
	 HQVEn5TeEbjNbn3kyNHN8CVb8xobXVvzvAN1dG7eP76eL0+NkSQ4OA2iWKFiEtEuxu
	 czM5tbt8yS1cRWqHrFFTO8KBA2d41JYpYgoXoSCZiliNScvOQ40IaMmqX6s5cx7W+J
	 pMnXqQ6pHp5+dpFKPTUgm/siTjTNWhLZVwNT1+VapTvpoh0UGXqY+iF6ToLtFYKJao
	 XfpGi4aF0i6xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00380CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837231393.17547.12081547335732508778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14dbb508d47b16228f98d47f247fcfff228997c661d8ac1fd50d8345acda099e
Date: Sun, 10 May 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778372313
