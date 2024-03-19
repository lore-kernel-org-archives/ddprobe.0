Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0452938F99
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710880697; cv=none; b=CaxpnWQq6LqJsx4rIv0vfNUkAUqGP+8mJAKueycYEY7TIP8emG4Kyqsk4VZKkckAh4PAjVk2mbV1emKia/MHdNpYxFeZf7NCfcXlMTwg2QaZWI4a3ZetvEAaFnLDNAfELkGHjQUjHIpvlIpqNxn2S2c60xnMxaTBBUpewhp71gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710880697; c=relaxed/simple;
	bh=IthV7M+PB5xBngKtUqv1ELEhcvPhFd+9J+iQ/XJLCm0=;
	h=To:Subject:From:Message-Id:Date; b=LdO3Oahsld+O/pxQi5ytJgCtZk8RUe4Nuqesw6zwI48i8wqA9oSe4YWeC37KXGpTa3SVfYsa+ow1olBf2wOVYLdO+hp1kNsZHMNLEH0f+tAfO7WiqOL2atJmJksQ5x7BkPk+5YOAh5DT7FDyWhbfOcvTiZ5/wTFrBcXNia8T38k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hubMmrtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hubMmrtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79251C433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710880696;
	bh=IthV7M+PB5xBngKtUqv1ELEhcvPhFd+9J+iQ/XJLCm0=;
	h=To:Subject:From:Date:From;
	b=hubMmrtm8cP0UdmL71q+b/h+XIGVZM9PUZBBOszktM9zej875dsIXLsEH6u1MTFHq
	 xDKOy7lfBMOQbLOwjcOjeU2TZ7dhUsqfl/alvQnYUescWPP+jWoX4gkiC3797wOwPi
	 blyoKfuMhGDZNa05C32it29x5k19Sh7sR4ibh9AGSKnpu2+0rEWxcsruhzsFZ++6IQ
	 LINB94dAsC7tuV6K0AH32cHvSaaNAUgr0iA0gmsugIin5oHMNWdiOFI6nlzmfFBLGv
	 xNk0Dn/ovmWkMJnm/udCknuS2i/uMEEIwF8Dl3LEz+ROEl+w4ksJnEgBFRYWeJ6mZU
	 ZUKi0vmFW/UsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666B9C54E71
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171088069638.26334.16684552802751167782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbbabe107f6dbd4357f947f178e689d866e3bccd99e2c28a3a9cd2092192b62
Date: Tue, 19 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710880696
