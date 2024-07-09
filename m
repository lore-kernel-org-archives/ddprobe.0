Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635B6152537
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720513583; cv=none; b=AxqEDqOTpQPGy9VN1ubU4KDHb2evahKuY9A25Jp9uHaAIwxcNROnTdXU8ePkWoztDdWDw56zub3HdhXD2+hF4LfWSOuRz9tG/UVJ5iFsnK+tc+9/GF4bB1AZFH7qtEav5d1bQfeVFbUnfui+kbKB/7N9nXeZDM9FWY74XroXbXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720513583; c=relaxed/simple;
	bh=BV1T8ZLS2qd5+glp0YjaEEIiiNFoToCk5pEuxwo0oK0=;
	h=To:Subject:From:Message-Id:Date; b=mZxlAYVC28ooQ0x/oyc97U98+jMuqcnoARJ/uvYGN4oYZyKBNxCPSMYQLdQ+efIBE9aIdYSQ+7CMfDSIh2Xipn0q7wmmTf9hQN74VaX9IHjsGHivc/u4pwL4qqyv/p/FVkGsJdVRnwp3Ne0iinLOI30TfXuv7LVk5DNM+w5dQGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSLapCfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSLapCfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B54C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720513582;
	bh=BV1T8ZLS2qd5+glp0YjaEEIiiNFoToCk5pEuxwo0oK0=;
	h=To:Subject:From:Date:From;
	b=sSLapCfzKizGxs3m1ix0GE/gWsZ+F3lf/lGuhu9ZE6WFMblfvLrp8KQCecDlGEDX0
	 Cto93USkkiv8gRCPi7tYrozrc6/OfJ1Fe2b416D+pGxwNTT44UzuN3dT8olgrEa6We
	 Lpgt0knaKOcu3XZAsjZpHiMk5JXEvNeGqAzvb8TkYiowJ+xngvaoQzcBsdJp1ppEAk
	 sBh11ERl16cYOHREFNSktIRkDxUGiUcUJQo2YBOjLHFgtBpQmCHE0NNELINZ+MdO7R
	 prPzqlep6n0S6uV12Sxw3XYpxlbjp3kJ9zOFfOnlFZsTGopHR3CF7/YZu0mWrH4Azg
	 VeAPRdwGk3Ndg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF3C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051358279.20663.5541332050910299110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a1ad56c0c553541c6c380edb412b6d55f1b88dfca276ec78442b1d9c56a70b
Date: Tue, 09 Jul 2024 08:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720513582
