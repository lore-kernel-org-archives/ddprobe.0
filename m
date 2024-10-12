Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D83E2564
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728770154; cv=none; b=ZpJniUS9ycLFQm7V2SNqKIcJZ75++KwAmIRtk1/FYV46/Hlzx/oBYk4DZuz6m3jIkAPBV7R7jdZLlTap58g9ia9tQvuriMTK5EUmoAKST/s/8lEaSxwihDxGPoO/kEwmqa6vXUW5sef9Kq2AQdvE8fYDlHHjF/IkHPCDAgWIh64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728770154; c=relaxed/simple;
	bh=7gpfjXgEJdh97S4syOV51eWjB7pVfQu11er8qoKUg30=;
	h=To:Subject:From:Message-Id:Date; b=A04LYZt0MtQa8RnqWc3218pofs7brupN8JHCqOfGKMtuD62GX+4DWsr/LBqTj/L6masLRvhsCvoyLcUaZTkYPGd5vH5ctqgeOu0YRvbka2JlPavJ2ixL77bXrxE6BHJ6qPRoiiktOntLRk+QpsHkkwSBIUoqoJmo+H/XrOq6y+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iV8/hq3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iV8/hq3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17C9C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728770153;
	bh=7gpfjXgEJdh97S4syOV51eWjB7pVfQu11er8qoKUg30=;
	h=To:Subject:From:Date:From;
	b=iV8/hq3s8MCPrEaGnR7Ry+aLt08sPsHawBTTg3C8RmcJPdUOZ5Zrb+sshn/dz/Ojo
	 6/qcylR1xUQvo6FT+zw2IypN/ALEm6RFyYkhmuA8xsYUAXM5tNzotjBk4dNsLNDaTC
	 H35/BprAcuBR6l6gEp/s0FZVFbosMJvSbbJa/ZQVh2iGr9NMj5Fa/QDWWqlXPRrRVW
	 2eogVVdeGMnMecdauo5p7qYXliLJCD3TIvbE2GDC6l/oYf0ULr8KyV1HfMN9iiFJMc
	 YO4VTx2tPI270eAC/L6ziguHTjYKMSeD3rgGyTELNyAYmwKLj7CQ1jsdk7P5pvZziC
	 m9cdXpppaHcSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5BECF2586
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877015361.15236.4193143557916907561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9947dd1cdd6b190448883c0a35ea9fa41ef9e2f7a65525f42e84d4bef8ec08bf
Date: Sat, 12 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728770153
