Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281A32DF156
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773098094; cv=none; b=iUyeI+62IFRL96VGdaJAzvnT8En6VqA7zwzstSwPuIkV+Bz5eldUyB/trH/ax/B3Xru1Hg3/OMYgg8krpUaNqKVT0UGCrZ7gyDtLvmJeXragN936aS3B2gTbnRk3DktLs1uSE+f2JTUjgeyJvayMUwfNenRldc6eBSmzWnAJA6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773098094; c=relaxed/simple;
	bh=NpQHclRo6xushjBWnQa2Aa1/+j4coolgMK0QZNSirxI=;
	h=To:Subject:From:Message-Id:Date; b=Ee/A9FyDtTc5o1FaTOmB2mqrLajPngbzy4+BqLL0krGWVAKx18pSNNsu/gyG+SKigy8Oq/DwK0wB9AV6etseRKoPERHR1sdPfijiaAUmDhaHIpZ+MKeIeqOogGmfozsyCx6RlGQxclAgznY2I1ER3RlB9eVGZwvOD0rVkxxclXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEmJb6BF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEmJb6BF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4131C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773098093;
	bh=NpQHclRo6xushjBWnQa2Aa1/+j4coolgMK0QZNSirxI=;
	h=To:Subject:From:Date:From;
	b=jEmJb6BFNnEq3FtzwhkNz/xeCtR2ZyC5o2lPLepfTa5xFIfgwL05mwOHVUBVxEjl1
	 akOIF2nPHpkHOM36hbcUXJpTDaqjNGWdensoHpsZd6XT9eB3hP5rUoh3ser5EBbL03
	 MilMZziy3+XN2ITscB4t/SJn/008ztQjyHs8mB1ZNK0L/Co546kj1++XvaShGgCdT1
	 vJYIPRF6PFS3n5TeqE5xl54t4apVKgLO6mmCHdRxYgi2vp7XgmMeG7icHBR4oEEuOn
	 h5f1FJDNdETOteZhKz/xZi4N4nTtUiftn7LFJ+uBkkXDlYCsrM3Kk23vl/jY4VBEmK
	 HaKYPua4VaSqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91600EFCD9F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309809357.8662.10845645578608450951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8b0670bbba261a05a7ec057502c879e993872b42559c01765964b6970004c7
Date: Mon, 09 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773098093
