Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BF927380A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783779514; cv=none; b=WBXwcxtC0O6DAsV3d9bf2TGeTO0rcEM4vMO2XeSlFo9iCfFwfT7ax0Q7evDgeGkYAIyBL64m9PVBVukvfXNRWkZ6p7QT4XJzyl0HWHUQHOcB9TeoLYTkii70j8JQjjRVmOLc4Z7JGn3SGNU9wST/meGu/U2I3FCFxrgINZhx2II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783779514; c=relaxed/simple;
	bh=n2pkXduOppvG10Q0LFH1AiFG2KzDVyzYK3y9hWTJEHw=;
	h=To:Subject:From:Message-Id:Date; b=W82oKu7QRg8Q0nRz8b0+ibRExGJlJxuQsbZQWrsgD+VsHjysbJtd8FEPmX9KBpHfa2LCAm9/uleEi52Su6PUBlBCNRkR4iQd4UYjZruegflV+uNjVBU2nlQCYaJf10sfaxNgh94ifiUWPYzWTV392N/vb4TnDgXykYbub1aUKw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nA3rVC1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nA3rVC1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEE8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783779513;
	bh=n2pkXduOppvG10Q0LFH1AiFG2KzDVyzYK3y9hWTJEHw=;
	h=To:Subject:From:Date:From;
	b=nA3rVC1lygcrrnSQ5+zOjWJcjAxua5JrhF2aG6ZPxhxihLxiwtUAnGqrCPViB+TqA
	 aKKdTj44XidajArh3NC5Mku6jcy9ny5wfs6Ah2S/iSO2dFZKaS88kiv3l/vtwYR/li
	 Mxc2FEGgxHIL6O0Q/juoS9g6hD0D603XKO5yrxfF/rRFhuCBNWrSN5AC4d+nRDBWh6
	 hzqhXPZwxCn8pcgvuz9c6sQiVgV41KiAPbAYZj31G0fQ5QBMWt8L+QnR+y03wRBvVo
	 mqCDu6uuyQpy2gwXcoxgl3ZdFOb34XIa3pYUOLSthjIKSZSEAlik4VjvkLQqNeX/1Q
	 VuDOeIAx4qrog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC3DC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377951368.2187.9909709606443686674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13f853a78ae50d31246a127387a3ad8a748bc232e27796ec070fbc95b1430a8
Date: Sat, 11 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783779513
