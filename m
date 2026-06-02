Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CC133D6F7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780395274; cv=none; b=VRxaPsHnpuTAQ40kffgNOa28cvJ8dt7s5KR8o/Fx8vRkadaptUbsDvvXgKOI8cITAkHcrUmpQIG0PX/DuTpsQJC460rV5ztmRIsLM157cVcoxUU72Eb7K4b6xCerdr1FnjuEa9NGwlC/3jKLji33M05aCuj4xSst4B+VqtzzE04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780395274; c=relaxed/simple;
	bh=E/NGrGYBEYeA3Q3kk5G7zQmqR1bBmCaGJkMqCyOBWLY=;
	h=To:Subject:From:Message-Id:Date; b=BXn5b3wVl2TfKA1A9qd8mjJBVvU3RWIJVl8fBslo9jfxM36Az4bFHS+cUQVLb8JIS8qehU9ypmWlFUy9i7pDOZneD/KS5K+7RZMBblIgY6Xfg5ApJ0ezRARQcLBEz+GwoinLMAv2tmKHxXwl6fWR/9jMMYi4SCpHdqYtDfnHwE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlniBXw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlniBXw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA16C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780395273;
	bh=E/NGrGYBEYeA3Q3kk5G7zQmqR1bBmCaGJkMqCyOBWLY=;
	h=To:Subject:From:Date:From;
	b=qlniBXw6sOj5N5mw+PwmRFpkdZhmUlkofGvPDw2eds9vdDt3wU0bBFyWqQ9C5V4Ot
	 pKDyeWBbdq9w7PmS6pl5L0ShgOtbEqJwYKMhAdRjh5enLlDv+mJyQs/voo1u1s2JhY
	 yKQQIT9GRwm3jMKf/4l2l7SP98j3JyjJcU9KSf9Uoh37TaebvYZJ3SwWnEqfwUy7Dr
	 dC3wllHUuekpr0zjqVW3gATCmWMjlx9v3J8slTFFLGP0Lc6qn9NunZLaRnFPLni2hw
	 FHA+yM87kn1OQlTrM0JlN9h4KxVi6c95galeOkLu8HP0uvXAm0wPPB2t0joyJUhbK1
	 hE/bxp8irKTVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B514CCD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039527373.19251.12379848866709774528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0a38645203976c62ec3ec974a7d60815993278d888c05c958506364b9ada8a
Date: Tue, 02 Jun 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780395273
