Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00E73D6496
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774028693; cv=none; b=du3tzlAU0k44+SR42IczUfUcEUv8u04I00DxcdjFq9/efI8tkyVrBTOye9ol/Jh51OVmXgDZEYxocbpTUWJFhks0we0jQIfxl+SnIcZvCsx+vo/Pj9Q18WSlCbItXtZTTisdo78IlDhvR08cFFhZ+EinImTRmtY1FzaZXCYpYL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774028693; c=relaxed/simple;
	bh=yFRNgEdCbL2naBg+41uwiqphMvUJBDnPUbKkK6oQuwI=;
	h=To:Subject:From:Message-Id:Date; b=UzAqBkcddgBFUEFh/RtOC9CYzywXAgm5SLxo62oktCQrIz+DinENagvvLW4uQOOZGaxcHcNg1XCb4gC5E3PlWhnoJ7FdSnr1vzAePVLXyPT9jv9Qtl+V65dEoYpPwTJZhsB6bAOO55pAzsJ2BlJrijmHs3MNe70pfT7EmoX+GT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHYA5TTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHYA5TTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBA5C19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774028693;
	bh=yFRNgEdCbL2naBg+41uwiqphMvUJBDnPUbKkK6oQuwI=;
	h=To:Subject:From:Date:From;
	b=XHYA5TTzjo+PuVM2diaeAJcdHI5ld4rIu8BdCZ0BToW+DI9DPyQm+yK2zSxzng7mq
	 htOtTSI6IbueIqaxLbJqykwrFUyolOhsa+sMY197eKQ/h2EZLweYTHunZG4BId1mYo
	 albDIbM5zH/pvjEjYaKRcFIXRbW2C8ZPPswoJohOPRjLGB88UtK5HWIWR93mA82Xyv
	 CztRkcsdURmDtk7PGk2BcUsF+ynImrHowrJ5uQQL+QrTQu0o63Qk8Bgiz0tcm081Nv
	 ALXVEoLNRidfAU4yF0BL7HxExkIEu1MOmP9+X4CwlNtaanEb8vVqgojuIJ7m54HrbK
	 r5SwqAKrDUIqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0F1099B28
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402869357.5831.1141922278091886450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fe165ab4b4507865037f0da41699b669a68a69823a109f7e72e251395b9cc0
Date: Fri, 20 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774028693
