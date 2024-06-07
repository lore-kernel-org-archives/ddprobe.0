Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DF11805A
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717735643; cv=none; b=pVof/AquBUHcGh8FpWSXS3+gMqCfDaQEC/jLgVVV4TkrtopyKyxMvF1jSju7c59hkJPAunV9zmQUuwW5jvA2zvhqs4GuSyNEJo9JZJClh4+bRIfoFv3tFki3xaD8UB3D95/VQRU63dcWprFQ2Z0mhw51kbcLn75U45hqlfvXyo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717735643; c=relaxed/simple;
	bh=eF4zFDG+mV3jgdp5ju33Eb/7XRKUsRqqE/C4bavpnwU=;
	h=To:Subject:From:Message-Id:Date; b=LxVE39mCISJPJj0Z2nbu9Buwsrs5u/emKYxl7nPOLycW9+ETfQ+AOGTv0uNUOQ99X3LIo274k4dK1/7/F1JRtEXyTFZ1ANwwfgxnMQxnCEoe8aP+YhBahDJnctqiYQ7WtY82rDLW+k68J8SR4/yHFotGjD6aggPWvVNjcCtVHA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHDGdVUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHDGdVUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB707C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717735642;
	bh=eF4zFDG+mV3jgdp5ju33Eb/7XRKUsRqqE/C4bavpnwU=;
	h=To:Subject:From:Date:From;
	b=aHDGdVUCfoNxqVv/GuCrE85Hf4w4zmHsQTI9SqGR+yB9krapRU2TeFdVddmEhy/GG
	 eXLV6uRwil47mZV1dJqO1+aN6fOZleF+Y/if9aIZ7AK9Fx+ViUih8iBJ8YBJFQs19P
	 tj/sOUhVEshaLx4tyg14ZTobrr3HHQPQyVjuGhvCo/R09wjO2gV5g7p5DesNoY4Ztz
	 IyzfRplEMCXiI5r3LY74ByFYJhBeb5mZQsm7JW/VeWb3fUqvzQHzN7e42dV7XdA7Q6
	 s+7czXzNvpXQ5e7bgbH0LOGUMi6wf3042xeCcKqk41GhXDKIXPPoxp/kDOPhOWa0Cz
	 Eq//DJ3thMM5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22B9C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773564278.9488.8338678955315306326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a708a2043eed685490061368d4e2af4bb5b3a536f27d312acde19d9b882b6c
Date: Fri, 07 Jun 2024 04:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717735642
