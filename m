Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289C52080CF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736542554; cv=none; b=nK52UOcLecKNb8wI8zEv1YNinffUL3OFhX8aSZV3jfHuNBtlgzesgcw10LnlTUJRA0e52hHBLqTZjGG03t0i/rUiss7gJL0B6BeWBs2LM88mkduVKsANpKyOFutzzdp362VVU2XImCwKK90I709C/xoY+KBop9abcdFUq9B3hAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736542554; c=relaxed/simple;
	bh=+/vpJMMpfCl6r3uM5MU9ZAHTxslB+F9pFQ+lY8qykkQ=;
	h=To:Subject:From:Message-Id:Date; b=E2YMGQYFVTTfWdVdW2crynoWuHkHfRm437tdVp0RzvIkpdRfIrU7yDeJmxOD1dFADIUkDBYfpnMr5NSrkFLvec9ctnWDUN6XGoKiWnaDBWOpUKuOw0EpTcvLeMqgi3BTESWVU4J2+QUZiEACyYkuOkKsVHZQvUi3he51ug4Bds0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crGke0SO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crGke0SO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A426CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736542553;
	bh=+/vpJMMpfCl6r3uM5MU9ZAHTxslB+F9pFQ+lY8qykkQ=;
	h=To:Subject:From:Date:From;
	b=crGke0SOn5KV+1KXPjAlNgmHSXi44EkJiZJOc4IU5IPol5Rvckm7G2+nz8sY1cyIS
	 +ROEhwtNOgDEeAyJyyLIXMfoduOEvUVVQRoVv1o/qhuF9DtzeA7+KhBXAL9bIKHsTf
	 QuQlIl2WsOwCBSFF+q/Z4yYl65af048bbzIJJtifCDhO57YLcHezYNQ+267jlkhHAy
	 hCIIjra/mQ99RMPi1DajVmdlvhd6K0TTI297+CDEVeWmuJCd6zJ9ED+Zg3rpNhuNOV
	 /BTQwThTd+savoOeX3nnQ3zejKlfaOy1luVTcbd9SP3EImW+SliMdPAmpO1pfVMK0O
	 DE3i0yBmppsVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90288E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654255358.11405.15573715015407428118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7200c61303581980aa985871456365113bb30073f68ed650c7a6dac22dc9e560
Date: Fri, 10 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736542553
