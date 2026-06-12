Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F2236F8E5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781287594; cv=none; b=tKvnSnf6y/GqyJQu2acJmJO2wOuOMQ28RaSYqHvlScLvUWXG27gJkfEOjQV3BtMaBnfkXA4TZ5EpawdUBTLAf1a4K/HWjkFtOqCoqKMcXtGus1dtC+7FgPlWglIgxE/ABI7LvJRS9aOND8OjDNY3XnFf/vmrrCZPsPKQbixSONA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781287594; c=relaxed/simple;
	bh=CmVCNejuN3slnHU0kjyj6aEffDM0XvWMAoSy+noX0pg=;
	h=To:Subject:From:Message-Id:Date; b=DrGdoeta5MPO3r+rtx98H8WIjfH44TBkaf3KzOU588ZGu71my5Er3OHHkE7RrlwPiSyNcC8Me6ZoRCkz9KURmUHRiVqmJ/dHd0lgAcadr8wRYUxxwY0ORP8FfpFC37fHTcbgqmGLquKgR+Dn6nB/Jy818quVcoaj/zviGDLaI4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxCEnv5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxCEnv5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C0CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781287593;
	bh=CmVCNejuN3slnHU0kjyj6aEffDM0XvWMAoSy+noX0pg=;
	h=To:Subject:From:Date:From;
	b=AxCEnv5rzO8j0asSEzX6kKbudkVPjzb5quS7UG/KgDelj631ucuT6xrcMfvHsmgVT
	 MNgZJno8AqSCXFAFo/M1blXsoBRCUtGnk5z7zCWBfe3+hzDU6ANZS+H3RTe88T1LZ1
	 zyJdvKtTwzDuRVOI3d8KsmtrQ4qrCQL5ku4L/XVDyNXRr9Xvj4GTCw1WxIEHy9E6zx
	 v1cJIMpIq9bDgkkPLht1IjVvDS9facv9s63oSESJOJAx3aCoTcwkLx0UIokwd0fnJG
	 uBHleJllF73M/F+AW5CVbc0g4NR24PrEnYk3NkbP09U8d19BAC006W44IuadNk9Mbh
	 2EXy+0qkuetsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA98CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128759369.26569.4156142301183033736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c367e8ed842ee62d8e12de82d62a8301f69a7c3a5064f71126d15dc308d0bb52
Date: Fri, 12 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781287593
