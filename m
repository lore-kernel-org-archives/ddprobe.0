Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3490F621
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723907754; cv=none; b=bzMQg/8xZOg76HZciMPmilUO9cHfnrlIxGMT6aoXRAjfdNG+Z9btez4K8b3ExBmjOSf8ZQlTj5+HqPrQLyaKkkY3xR4SwWpnTGiEuAe2rWMDm8U78iF9IMVp5F7lpvug0YUIPNIqEtAGWgb4vL/xEyx6/iuGv34XpaAgqNa4b04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723907754; c=relaxed/simple;
	bh=zpj99BOjXIyrgcguuMYNmNQ+4F6GykYVulpC6m1IJxw=;
	h=To:Subject:From:Message-Id:Date; b=SexB7QzM2boICfqiPXcazLYFeExYhRlBxiQBTND72W5531UQjkD086Y898Oi+yGC8sH0E/2BrxCBHTu/+1C5eZRH3MPPophUbtrzM5qp0b4RHTNE4rFgD2ZDoi+hGvIRQ6v06Z9NmZC9UtCvOJ7IbHjMmxWQbQlXkVEnzHfKPFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LI6ETx7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI6ETx7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0DDC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723907753;
	bh=zpj99BOjXIyrgcguuMYNmNQ+4F6GykYVulpC6m1IJxw=;
	h=To:Subject:From:Date:From;
	b=LI6ETx7tRGeMVM5bPHTd1FbFbETSoX2HrSon7ig+DxRWw7UCWhK1s7g2xWs5y54+W
	 aJywi5QPb3vmDteZYSk6v64g65Ta0y6tn9NzhODD7fqaqwj0atiCROdKRUAp3t27Mz
	 XAmOJ3un1vK2fxi2C9bUp5e+nbLFrhNv5H3xqvdiEAOD+DhQvVd8toy7alyW/j0Bqb
	 WZynCJRpfTZVyZg8aPyMZu6J8hZ+Pm0ztoFHLCt4WhH0w73EqVLT0mTpOAzlyCA+/S
	 kqhOqGGF5fPQZCYgxXyU5chsBSmAaIJu/Kf1kqxOKt7oiIfzZVYujMc923dKrmmIR5
	 AeZnSN+2332nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C3C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172390775360.26792.15697355488590978343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c198794ade84705b06204cd6e308984fa9eb448c11444a29654d74faecd33319
Date: Sat, 17 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723907753
