Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D5546434
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718261303; cv=none; b=WBL1eKAI797XA9f22FgXRYc33K1eM6/EsGk6c8rg2S1Hdal2jSbyamygZYxBvxE/rQqCK3Gxz27+LvXkur4mb8CAQlNrrdVgPErhX2sH4iPeklOyseCeob2qRLtgBvPn7J7I1yBJx/oZXeiLmn7EpO3r+b8ql8R7XSN2WXlY9uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718261303; c=relaxed/simple;
	bh=lXSUBqFN1xn6ZVC7bXoEF1hQxjnTtUKzvcBdMIi6VtA=;
	h=To:Subject:From:Message-Id:Date; b=jCsNNl5vpZuTY5n2vWNzYQg5CapfDAldje6l+N+RzTUKxd9xiA0MutABpeGhm6g4SoFL0zRTK29ezijpkhqsSKtDGrQnPUIhz0GchdeiVCRgxrQDGgsWsd481IvjTMNfYegVcRBADcJhfiHZSDCTBVx4P9PyHPKP/Td6J9T71Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwUuO+HD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwUuO+HD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C40C32789
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718261302;
	bh=lXSUBqFN1xn6ZVC7bXoEF1hQxjnTtUKzvcBdMIi6VtA=;
	h=To:Subject:From:Date:From;
	b=SwUuO+HD2dy9uEWKv1MdtjoI50oRj/tkocDeIvA3OZ7ZUeZGvfSHBRgl4e1gsbU77
	 r7iSGyEmTlPq7e+F1aS87P8fT6FBwbUfxvFDd4EdcweOSsQGeW3f8ZbCA0HoehBEur
	 Ek+W9Cp0sPw4q9SSz/4II2LPwmkymqr0QPDpDq0VTWw1S/TmzubfGwW0+eQHQk51/B
	 +L5uNRR2wYEK0X6o4dvV/v15kAxQ3dpNV8Xv/OnMtfo8/NWY8aRgBl62vXbxI1pZCs
	 LMLgl5qUgyCLXmcj9voiXfZXFC5FY10cdyMkpuUjjScT1Fn5I+Ao8RqGpObeeb7SGc
	 lNT/EqDrx+OTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF140C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826130277.7548.12673181960016196413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1501ff7b06f84e91cf322f3affeda62bf69192b2bfc3e4f0c6e3dfd470b2f5
Date: Thu, 13 Jun 2024 06:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718261302
