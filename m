Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE4581ACA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765154574; cv=none; b=N2Zz5Eod9YsxOaUKouVtybDUeCqRQoHHYxW3cSpDxRrPkCMurH2mBvX+dSQTQCoPlzrN8UGwKNQhPgS6k+selfTqbSII6dJchFlcB7D9SPKjQfx+Z2clS9Y7Qf0JvfRucgyxwfDpujocXj55mpH2fQyQRiwFmwLQve8DHvx/mTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765154574; c=relaxed/simple;
	bh=xtem7MB/alBXh7VD6YGAJ2wM4r0dKr3e1bJKuVrxL4A=;
	h=To:Subject:From:Message-Id:Date; b=ZyaMiCPH2kmHKLWIZcDcyXWuIENtvkpm4qTXfgzTGLpCVCNvLEs2n01YWDXH6vYdnFpAcFNlaxNPKTLfGmZDzyYtMQ7YI9KldiLu+osME9zaT4j8K3JC8WvI9/6LrNRgoGQDYyvh1KKJ9S4Bxnsuhjcn57cppF4S4XdiZkhf7Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6FoO2fg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6FoO2fg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B7C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765154573;
	bh=xtem7MB/alBXh7VD6YGAJ2wM4r0dKr3e1bJKuVrxL4A=;
	h=To:Subject:From:Date:From;
	b=O6FoO2fg4784K2+dhkcoea/xLZmentGHYdJw+ekWr5hADv9aldDSCN5TTtQSSKcjW
	 1IlPbYxbenw0Ams6e0Xdzu49MkJzzB/+7ZLCKhT/MNminZ+AhOCwLf4hS75719s76C
	 j3EQfwj2M9jiL2I2JstZrO8SdbHfLouTRnzHjWUsMZiwB3Y9yc+KFEKEF6EcfEsf1Y
	 4EhMk6um7+/YVA7gC4kgi/04KCrfnqWx1J4sH3Ym84qeykKRkj/KmD5i+LlCfaoK5K
	 PBVd0PLcK3b+2ZCk8bMcpzXgEGYpj3LhSe4Z0vLCXiNBllOfDOZSBbDEfZL+5MO0iH
	 4N06KKYiJdGNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B88D1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515457358.21676.14732345925837950061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d27778bdf133af97c1a1a69f3e6db58d97576d70459c3272c31d21fdc170b7
Date: Mon, 08 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765154573
