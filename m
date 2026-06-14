Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F1C4317D
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781428594; cv=none; b=OlBxxzgNrmyDyJ2zpsU75wkfAde7b1+O9JF+Jg5p31gO6Axn8cb96qWqBo6+GN5X5Aq0BWkJDf4gWNcw76S4V5xGKH5A7NQehOQTfL5qHgVkoHbxKgY8/XI3GeR8ifrBSJ2HtIxiTkBDdSVlMKmDk7Sevtmlh91IrlHdvekn/K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781428594; c=relaxed/simple;
	bh=7aFTJ7vMB4M0pQneghMulEarGfXHincYIWVMiWAlr/g=;
	h=To:Subject:From:Message-Id:Date; b=UGzrJCSBnZ2XVkCe4qi8adK4pz1jBPhzbNUnAHHrHBWxu864In1SaSDE7hIQwEcu4mbgiuW0FVSAyzYJByY5Y+PsEXP5a5izJeQt+fWv5rGIhy7opqRMUHY69g5sMdgfp+lBQ8eKR1gxCqJQHJiMkfS5cJeX2bJkWdVMyhhgQy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Boc/+hUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Boc/+hUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3850C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781428593;
	bh=7aFTJ7vMB4M0pQneghMulEarGfXHincYIWVMiWAlr/g=;
	h=To:Subject:From:Date:From;
	b=Boc/+hUMuxMJSn84099bMInIOh8UB4VVclUhrboAhsSnCCwoUPOAkRICeK+qVpZfM
	 d6TLfUCofD/kpLEI82FsDWdBs8bjrVqCoaOLf0eykXGDL4sFQLjB87cyAuTzfQZCWM
	 wTNHnsK1UNeyeCF67Z4wWdy0Laa9cYqpXeJvgAKdHkA7EAmzR7Pz0qQBIloAPqIibQ
	 KOlWhyLGX854bifkycd4e8gDUkaaHN+7KIQkDQJib4CBVNWldUdDV3smPcwWKyxNQe
	 DobTiWj/NitL6430JXDCAtFaR/U8M9pG2yaHd8zaAWA16qOIPCryb+mVV2MVKDon8C
	 +ZNwJfzTnJB2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C1CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142859368.12268.14566944228220309624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631123531817653d11fa057b454f54bfcd2ae33e58193afdec42e170d9606c76
Date: Sun, 14 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781428593
