Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B7C18BC2D
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725519954; cv=none; b=LcO9ExxFpGOHWICLWdWGguB37TpPQK29q6RHRa3Sc2EB8QD1S/KNwb69s5klwQhPmq9dEH4NnsfrIjsi0i5Y024FGPHxtX79DCxDWVWcuR1ZdhD8sSpTZJYwbdBRdYHs7Wodf5yyEeN+25zUR6uMVvgkvFedrK6h4z12idZp/es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725519954; c=relaxed/simple;
	bh=XEiSmSIcXQLBxQQz3TWnPEij48IVkQnA2Lg7j/pVpOg=;
	h=To:Subject:From:Message-Id:Date; b=iX8L5fPh3UVftsz/XIGBD41BiWNbX05jdpQSqOd7upiMUmdU/trJrSNGrDkyZ1zgDLQsjo5Rd39WYyfqXPBTAeZWowffl6kTgqEWZBg02zCJsBmi8l/a5lhSvynU7Kl+de5ngz2OTgDVluUHOOFxCBS7pVXaPeW/GoH96nkajWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofJi9zyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofJi9zyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A789DC4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725519953;
	bh=XEiSmSIcXQLBxQQz3TWnPEij48IVkQnA2Lg7j/pVpOg=;
	h=To:Subject:From:Date:From;
	b=ofJi9zyyo6+iWZAcoQOJ/66vAcIim2ZFbflKokmBdkKatCfc7LXk/IjzdjYZZkAzM
	 vD56qQNnHrV33r+dxSmdcS42YxKP86na8ti5GqecbfegMIiQ4PXZPGNiphiP9FGt5V
	 Qs6996KqjO9+B21lGWOYlQRMM1FvD/uFmRHapkXw0x+eo4DJwghfZMEjsp8vJnprAI
	 lxMGbHupcoC13VfUIDNG2wEi3ph5jffXVxNJNeJIRPD/Pjq5QTa5hIVkGR5OKRsc1T
	 eoioo2G/Lw+AJ5PWZsUvt3pdN4yaxrtBqK1t3p/WkPHTmy7L2+tnhpbFysx64nZFab
	 eTwKzm0Tf65hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9679ACD4F4D
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172551995360.13774.12512266730721548264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750dabb859cc73f1bb03e5c872200a9abd1b60c668076508e537da1e1e619b16
Date: Thu, 05 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725519953
