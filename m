Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C0C305079
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763485315; cv=none; b=tkwPEqciHJABSrpMHemoEO5P4tckV65GOjHIeGAX/9gZ9AtJ8YBWeFqydhUzEnI03TYcvp/VV7uEgjZhhjK4b1jZYB4ipd4vjaBltwqvtSzmzLgX8Z7AFZSpOQU7tqG5b0w0itzRSwXziRj2D8X2MsxMdA11dAxdK4pe0z4oIjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763485315; c=relaxed/simple;
	bh=tI6dxBFSiqSb2RLNhi+4H5rHPzVuZnC1Hl1o1Yk5A1A=;
	h=To:Subject:From:Message-Id:Date; b=BFWmAZ/RmTNpHu3wmcIIEgGws2IgS2exF7x+0uthfFvdr/dC2yOaUaFEwYmNCW7AaHJ/EZ0EVbRcAiIJW8fAYU9B3dT1zmCxA0SwTEnPI1H9wAf5ky75Gq++elBNKQgvJufj3U51EDdUtS5mEe0hzcxrSsIkt0vcgBIm6uMmlPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TChtEqon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TChtEqon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC082C116B1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763485314;
	bh=tI6dxBFSiqSb2RLNhi+4H5rHPzVuZnC1Hl1o1Yk5A1A=;
	h=To:Subject:From:Date:From;
	b=TChtEqonabhdrv/TbEGzX4AXG1MPIfDE99Q2hMh71hIp2DlH75zow9hZNXTJElj01
	 z+lFO7zNTklLEBj91GQpR1Sakr90W1qp7BZ6RbLdeFhIofr0jq7J7AmzaFJCf21mtX
	 HQ69pEjZ+NqD8AJLIxxjTauZdE0AiyTT+rPYrCRlx5tc7JkQa/SsaA5bm438iBlFUF
	 XQSk3m0EA79qwcCnIB6tRDWygrUbwl6Pd3bFWjqYnHlDsjNh6ebeGk/dAF7fGuMEbV
	 SuttCnF+3G14OeAROGMp/jyPWlA+3NAcXY3i0PU7zG56Cp64X8IDTON62GD49b781o
	 4j2DA/SGOHg7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B8CEE340
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348531358.3873.12672009536142993362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3964999bc6458785ac77e50607b9ffb647eac688a37680addef2c83ed56e22a7
Date: Tue, 18 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763485313
