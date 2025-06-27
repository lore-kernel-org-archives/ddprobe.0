Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0D023B62E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751013594; cv=none; b=ka4OkRoq9t7yHX0B92FVy7qSbDGEG7aKDjjv6Ij0WWLtKrWMR4sy998ycSJq8Lk6rhMuM/vtlGCuLgf5k/cWHZ62k3GG3+aVUBXBW5KYl64zYECF1/TEKPMWU9W/VIcvL4YTLEPQCoAoY60HpF7Qx7i2OLxcPFWQFwt/kcKJTEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751013594; c=relaxed/simple;
	bh=Jp6CtOR41KjG4uM9ORwh4QeucDfF7uldPBd8OiZ62IE=;
	h=To:Subject:From:Message-Id:Date; b=dwbXk4sEekcIVYB3yk/UPnbQbF7TFMeDyaXHajBEtBoRonqd0HnEoiTvsT+JLM8z2WzhuLc2S7X5yOeEGarXfffqCSj9DNPl4IsWMiA5vqR8UaKRyZC00/rgcwIpFVaYQEx9V1E61Qj0l3T9so+fXi8SfSChGheb2KezjiYlqvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxJr1T7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxJr1T7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44A3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751013593;
	bh=Jp6CtOR41KjG4uM9ORwh4QeucDfF7uldPBd8OiZ62IE=;
	h=To:Subject:From:Date:From;
	b=LxJr1T7yu2avgHqcpVvjjFBm4XQY5nL3QijsRw99z/rtIwAm8DwEOZykbzr1CkjvP
	 xOTolnkefP5BtP90cGHixVgh9MDcO+3/ZmA+Sd+8q+Bp8lkMgJtG6aFvYmo8/yxf+0
	 Xg7XSftk1NmUdXRaQzLHteYQSV0m0f/1QgxF4fPKP+CtO/UuUbRgrhZIWRXh7jlkW0
	 9LEtZUs3oq2poRQPqFW9TKwaLzic9WIhA9vBkOhsFjzfgEx28804IlvsW0jMowRHFF
	 4ESiwQ0/DJ3eL81alMwEQvgJP7KY7pxK4XbEzqR1DlYEgimKjJZ0YPcZDQT2ICqkCc
	 +bzmYVH3B45JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90824C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101359358.18681.1367867388462515204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89f7655fdcecdbca1bcd68fa93c9ab5ba2aef69da2022fb39caea28f6255f4c
Date: Fri, 27 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751013593
