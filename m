Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA7A6A8D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757660394; cv=none; b=NNeeTGC33NmTZdXyL+KwCaPqCsU7nTimKeqBDYim9Vo/lcunQ/sGUhTwyFRbYzsPYaTyg+TEPKY/O1xwuPSIYw4FriIm5D4jnCEnq/m/O7zL1RPfPhZPrfztYZSPCrC+KFee5FPEKJl8yyfcfBYVJPLVhguXwwRHXD9lIe8aiWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757660394; c=relaxed/simple;
	bh=kyegL0Nf0rZqQu7YldzH2T2LupVGyuPwwI/QcmbzZyM=;
	h=To:Subject:From:Message-Id:Date; b=jgCld4ID6UlRCOHCk+TT7U28ZRjq2KTpW9EEeR4LzW8GfhpbPC/5ceMeHkHfd4gSzCJzi9oPIhHH5pZQVysh4ebzoEwLilWy8TcVU7RndpdlMmmvIrYBGJnJRDU+vzyT1QoxpluSapgnrJe9VoQywJY044odrueZtpb1CqZ0THY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIE1fUfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIE1fUfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757660393;
	bh=kyegL0Nf0rZqQu7YldzH2T2LupVGyuPwwI/QcmbzZyM=;
	h=To:Subject:From:Date:From;
	b=LIE1fUfHLe7vNU0aMX/5Akyk0ryeioblilODMmKygbggtlfIrUS8BERn+0dXYXlfu
	 8nDHepzulr8+Mh6opfWbfOcJX4PTDISWckevMtI4jJXISph0oAIcWiHLG/vpnIO/aw
	 09uk2NRrz3QfJa0jWxyqbZlUuwHEugD49RYU7HcUBl9RMl1E6kWiZskPbf1snwLYcz
	 9hkYApzgT3DSazyElgA8qX9JQD6viRHyS3ipqsM9BSeL37WG8S+wkXCLjWQFtK6x+L
	 KnvDr8JZGzpB81NWGxkvpDEVTNewZRamtf5RdssSMNrynkWxFbYGQyPx3+dOyNMG5v
	 rfFGnThwnpebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAFCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766039357.13089.16951896528318048523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677d9f51f9cb7cb0f4835ae693fbd93acb1da7e66f791044dd7f792428fe9f6a
Date: Fri, 12 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757660393
