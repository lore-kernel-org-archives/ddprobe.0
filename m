Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6575833C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720159523; cv=none; b=taWPFtLGlzxuYb6g9ntoQLZc+NlRErUNvxskYvQTaEtLPfuOEQ8vKXySS1EpkVjn9yGD7AKZ71N3/nFODK6IK878EzGVLWUeLpvubdAxkp7zHsHUAwAXCVJoOZ7z3SEvxwpuVzg2bfpUMsNTeqEqvni4aoFbFHyhiEaHMv/TlUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720159523; c=relaxed/simple;
	bh=YOdsvKCi2AGQpfZITxQ3vKZCF5iGPW0FJHy5azQ4Cn4=;
	h=To:Subject:From:Message-Id:Date; b=XzoKBYeludrPJyfSAWlBIs+hjdcfEJq4DdxoqWcT2ccgqaoUzJFTHfu1m0pIpEiBri46DR+f97D/94on55Egbr9pgLYpb2fkhWryOpHh+uzZGLOKFKGR8vV/U14+42xM4/lkH8Ot54aBzS2BKVKZ40jBAw+mPCpjp22+OMGB4sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfzQxvNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfzQxvNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE035C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720159522;
	bh=YOdsvKCi2AGQpfZITxQ3vKZCF5iGPW0FJHy5azQ4Cn4=;
	h=To:Subject:From:Date:From;
	b=VfzQxvNV2hEjdlrVLhrMFfwCF8oOx8ZK+R+8i2tlFhwxeeJcLmAofEGkYRjjedCnW
	 MeY1bhm6EPmjFN9jpZu4BZXk0TvrJo660mVRAXD9lGwh/5JHHalZR544t2lrbHS5v4
	 mUfmZn21RgX1EKnrV9fsiohr2MhvW3oDZ1qFrOItrIN3eiCWopzvGI6IzsH9bT+/oJ
	 /uXSzollWq6Q2NQh83MBRjFYBY6KDMjqEwMnBEcrxGEuHP5EfFN/mS6t3AFYGJUP9t
	 plieenRA39GJxlzeObQThWpBI78yXJHQx+B8KwgViLHIY1OTJGg9PVSMrsoRF9oEcv
	 aTI3S1PIOvMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB94C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015952276.7434.4260825125175863213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425e483328d924204785b57e944794616d5ca59b134294ff009d3c67c40431dd
Date: Fri, 05 Jul 2024 06:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720159522
