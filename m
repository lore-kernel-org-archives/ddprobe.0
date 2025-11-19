Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E0513D891
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763512314; cv=none; b=QvPJArj7nNqmoZpcFRayqi1Vmcv+Ss9/C29nWxS8uzCVP/IOnNkinKxTwRabBM/Q46NRa57JQ7fAq3zWM+eSNjY4vd2bKPp6JtfrMOCum2tkOs8LxV3a9rN3XIKdBTzFfzgKf3EauloaqgN7soyk/AIDIHwctVm5CgqoVzo52lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763512314; c=relaxed/simple;
	bh=wcBsfcrngpvsvlTBvbQdvfs51pUzzCSlefNnikepMJo=;
	h=To:Subject:From:Message-Id:Date; b=MJfY9KxoDkt9qO7irRlYddB/+O9tqUhY5/Qu3sZ4G/X5RSxdh0AApWeQbTHplKU3Y+uZWGuxf4dCrhd7CBIbYtbHpJKkXiDsXg1gveMLmTC6BW7dxP7CPTEkPBUcsTLT3FaDjcwjMy75xASvnFws+gEZ1ui6YUCTMlOIkmuQ/2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwLTLBa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwLTLBa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6696C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763512313;
	bh=wcBsfcrngpvsvlTBvbQdvfs51pUzzCSlefNnikepMJo=;
	h=To:Subject:From:Date:From;
	b=JwLTLBa9gD+cDSkYSNgXH2Q8tsWwIlkIOLeDJgoXdUqZ/uQNEjvQW0HvN3m8nn6v0
	 6lFMPpgSB7Ri5e1Gjz62hPJlC1lWSt5qtfuupTSQt/9K5WPx5EIvn4lN38l5HLTYbF
	 8naXdMI7t0XmGZeLvA+tFj0YDxuyecZ1Tl9dI3xwBkk+CJrLb7I+T0xO9XSw8U1zcv
	 nLUxPwTfSE7bqg31DlkujcVEyJA+N6h/fl9fZKBgiSGcb2qWEBRt95FMLzhjPRiYof
	 fuQExXaTXv/2GIiZneNR4sNL+otUI9mm1qo7lnzSKhumplFtqoEYrVDyJOXKrYsDV2
	 zuZINNN+GLw8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FF9CF2561
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351231359.9171.11325560007742830428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8156a2a949e962c31be4cd35f46e4d94a9a986547c10f04c9f2da0d4f0727ae
Date: Wed, 19 Nov 2025 00:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763512313
