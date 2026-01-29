Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1384E350A12
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769718234; cv=none; b=ODNrhGmp79/O+zFwOFYmzCJXG+0D1qMcGtCu/K8h4qSkwA1XyMSUuKUeaPzMa8kGywKq3OOc5igFISpBR1w/WJHuweKobIHwdK+CGNQDm+hCjl/v0SCZHSyqt3nTIURDQLzF/tNlhvgMEMRWU114ep1gmyFtXFMgenD1IdSupL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769718234; c=relaxed/simple;
	bh=+hrZ16Pm6bU/6QLERaduf4YywZqE8R5CUmyW/KuRgkU=;
	h=To:Subject:From:Message-Id:Date; b=Xyfib8apdn1fyLeskvftEtB0CVr5z4EP6qppl0CpJeB5RZwp2YFM5gorobtVVcHOxDKlGaDB2Lq2Jsq4cbdeEHu+t2RHP+NS9dxhIz4bJ/2grp8Gy+ywrL6k5EckXXwoabbUrqVed7qC7UOVW4l5SaUdpaGLZW64UsslxoXOo38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg4gJp1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg4gJp1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A294DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769718233;
	bh=+hrZ16Pm6bU/6QLERaduf4YywZqE8R5CUmyW/KuRgkU=;
	h=To:Subject:From:Date:From;
	b=gg4gJp1drICvdvOf5SlHidFzSTiJHxe1SIq3W2lWh7vyuC9tNWoKAy3x+Sx7yr+f1
	 Wh21b7ydTtaJv8WLgmOQNPcazWbpimwFa+7rg5Dx+PqixINlLvCR4VKyW8pfEPN5F5
	 +AQeORnD1U5M/Y/6UQ8K9+7NYzEcQ3LXqhWa4W51nzHuDh2G+g0WLUpdySd/lPJXvH
	 AfjpZ580LtrR0AIR9O673kOvMDsCM8xPW4inUzfwUjasGzJ3qQiMcbEGE8/jsOiQiR
	 sTLoGfhPVhbTG4xfN28LE+7shlgxg6swpfgjeAxA5e5ERVJppc85XIiAbRoS+AkKEu
	 tufT2JpGv1wFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFAD73E84
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971823358.9832.1672401909542440810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cd36328a142404d9fd27a4e59164e7185f6f97fb92a8f255882d7c85699202
Date: Thu, 29 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769718233
