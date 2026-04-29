Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFF4366822
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777480654; cv=none; b=tYSoPABfvavY8Qt3RQfJ2MwNMEiyG6IgS3RPqQKxn18ziQPxQ8m9c5GvlHalF6Yjkqaf1Ky+yM4gmXx2cJgn5SGcZs0T3XtFIAE7RQ0klWhS4daRJjLgU08aI10HHUTR6EM1EhzO8HS+Cfgqxeq8i0/jw5DtOJfjqJqaVLgxT2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777480654; c=relaxed/simple;
	bh=f7RAvySA4Hmkocgg2IYCQWGUE33w6akihfisfTYOoCY=;
	h=To:Subject:From:Message-Id:Date; b=eIcTghuntED9s/CtfYSpL9XQt5j0mhxYK20k5kZlJdHg3z6JpgMdUbJuypex+CNL0k+zHlS2tjmukoygxD6OO72NNBFUgWb8HQ69NNpSEEOyitk//wBfDzDG+of+nhK3zjg+/DUTVJuSmuGraAJ7eZRtHPQX5hdBP2SK3QsCRb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNhTf0ZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNhTf0ZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72EFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777480653;
	bh=f7RAvySA4Hmkocgg2IYCQWGUE33w6akihfisfTYOoCY=;
	h=To:Subject:From:Date:From;
	b=iNhTf0ZZmNTHqWBqyV9vWOCdD/GLZg2apb57FImVp//MRrlsTIrEnyvg5OLQsFhy1
	 pilDCejLbwqgjMoGn8VhTN7WBO1k9TOcQ2WjJ+QB3qZBmSEjjvotJPCsRJcXAKZBON
	 PXoN9Gy97vrK0Lk7jmluuUH9QDGXKt1XWURYpglM0D/43qv27V5qG09lbY536Sw5uA
	 xSUnBm+/m2SelsmzylPWqs7RwAgYGwzXvupNtAE5nxZp1opC0x5/cMpv3kiOB7QDCx
	 0cjU4QwdwQ598z/RxfSHwW8TW8Us78SL5ppfADBkH377q29wXMZdPDXG3DPikp5jHx
	 MRCVRqM/YgTNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A998FFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748065368.15199.17425476559996654254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffe91fd7894a1f1142d8347c47db9294d9aa89247b5f55c3872de9c2ccbd615
Date: Wed, 29 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777480653
