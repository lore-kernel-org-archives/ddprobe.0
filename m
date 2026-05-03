Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878BB7260F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777795654; cv=none; b=FZCZiNhYoG28CuiesMsIQjmw74IANL+CyZ4L1XmYYovVtjp5Zdq5+bIqdNfDO74Qhjr+zTFMlv4le9Xdlkft7wwANjLNVYixZMRAbJ3gTwBNuub0UQ2jwc2yc7VGCi1mN3HysIySBelsnqxG42+WFh1uUieig3H/BA1KpBWUTwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777795654; c=relaxed/simple;
	bh=4RQoVcyDAC+XnsHSW17CfgRPJCTTAc4JYYZcDme8Xlk=;
	h=To:Subject:From:Message-Id:Date; b=J/w7NYG4aM144fThHcGIg7772vqjtlroyUds9KzNoI8zsRg6FHsh78EDAiEwHzJAUORPK58lBAwil0ZSMWIJsThjovWZbGq9WuXb3dU83CbcESdNNQvPO7jVw3d7yWsEOmqO3167v9Wg7zUmfUrQRBuEXKMzyzETdtG4OiDhYlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNtFlrJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNtFlrJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA830C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777795653;
	bh=4RQoVcyDAC+XnsHSW17CfgRPJCTTAc4JYYZcDme8Xlk=;
	h=To:Subject:From:Date:From;
	b=MNtFlrJs78ENquplP+dtqmXheUV/G4WvXoO5sODR7//OKEbgY5k2zXXa34Iivx0wE
	 qZvUHSCtV0SglQ1nvIfh5QEgKR/wAsaBalZmyRAl/ZnvXYg8stssqnxWZT3bnKk13G
	 9YB+PueGXmIh3jQbEgZX88K6QWWunxSlwKozkmXyraYqHZzA+numenevOorvMCogDQ
	 ZCh5J6T1BKe9Vsp6ugjQvULGPWbpIrqXqvYpwb7HDFfYK0mbEWSnI+MP+U2GdlLMzU
	 dWMlKOWjhyrb6t5ZMsmIxcBztJ5yHWAqdXsK84fD5Aj7jjs0Y6tdsn6g1mUhD44AuQ
	 ISmknR8aYO9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9786FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779565368.3859.1494507610555538184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f10baec7a5db4e04760fefd75c945b5dde50ffab7182d2169c33338be308a6b
Date: Sun, 03 May 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777795653
