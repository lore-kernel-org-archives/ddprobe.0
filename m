Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B43121B9DA
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775439334; cv=none; b=Re23E7JOhBaj2Te8CXzarKnkSSR6Bl4VcG9xAkFWLjNDWP72FYOxIREj+eheC+CbCJXzbxdGat0c1xPihKjCHLSgMktltsZu7weXQRHl3KOXgR3tKud0q3mn/kBzA78ZSEJvA81dHMrTHgw6kYmXZJIz+YSdKer+KR1gRtcwCSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775439334; c=relaxed/simple;
	bh=9jGtkn2x++NA2bmOKUZMoVtPwW/YmU7XAomSKPcukMI=;
	h=To:Subject:From:Message-Id:Date; b=gvyd+fB3VS9Y3auc+Xs3LPC8+4YBwDSzxgCLUAuU+GAjOiQGkFLXXbYPI55ecS+3wdki+hEaQBImaKg3OyY9noDeplISRhodNGLatEcQr8ibPet44YCCQJbUEwcWjYUz9BuzDRiQhGa49IdD0mVNMwF3VV8sT2EeVNDpPkEhijg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFWELQW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFWELQW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD302C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775439333;
	bh=9jGtkn2x++NA2bmOKUZMoVtPwW/YmU7XAomSKPcukMI=;
	h=To:Subject:From:Date:From;
	b=MFWELQW4vOTqof+jy3O9PRBq+SXTEJ0/x5xZMR0jdXFEgidl0uzdj+7hSb47zRBlm
	 fF18BX6CAEet/KHAxCKwqIgBXBJHXH9jIgqqshrm7tDaCue7yGbpNjJBkZW/JZW1Uw
	 oj2wfCmduZCfFbWCadl0fdGrX3fozyeyulCu/RupFCEz601dauIP8W5WoDjezrVgSC
	 PZ8jyN9NBk9ivQtiE1eh+P3o2bC/F7s+Dy+TB2V9mJ83Y4Ak6E2jrs8bBguQEOAsSF
	 CHDVKEdx2rAqh67nGPzILetehdUa4PofaUvA2gsz51Jc4zZIRH87NbzFsPCdQIQNIn
	 6TQgKBEa4SyEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7C6E9D826
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543933369.29341.13828407557085805451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5158b3ea5c647277a17e204473191fd30f4fdd31cf4c48cb008e627d8043f099
Date: Mon, 06 Apr 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775439333
