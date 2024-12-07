Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DCD1547C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733610354; cv=none; b=ISHxouZ9Xw+YCNEQI0T8Zip3uYOX2X4XoSLEAHHdH84opF2kisKkSi3iGQzazlgL8Q/p2iONpSU7VmSRQmTGpPo1pEifMM7Gmm0xvTyXVBjY8FWqxx8ijs374NSJllcHNn0/DlgExMdNQekIELLv7oXNc8T7WjlZoxuLjVaxuaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733610354; c=relaxed/simple;
	bh=5kcUjRErWulrt8DroKopbMgWlqj1/6tQH54AGj7kPHw=;
	h=To:Subject:From:Message-Id:Date; b=Caw6E4OLqLM3pFreqvDvmI25hy9dlQGMC8WNMOXUNWXg0OmeSGErvAbk3mPGeg/yp1WGkU/kkdlk6abcbbbxo6KhzjnXn88UPRjLLAEXztCv67nzk6OQb0wYcknOTzVS4nPxR36o13oGoAYKx6UerGXZmrrnJNG5gd5xSBdBDUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+8FgDfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+8FgDfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF4BC4CEDE
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733610353;
	bh=5kcUjRErWulrt8DroKopbMgWlqj1/6tQH54AGj7kPHw=;
	h=To:Subject:From:Date:From;
	b=p+8FgDfmyJHH+h6o+nwirmnDtAkjWm17E22J6Pp23JLvG4jqvLOhmec+vx8nOGr+H
	 CdqD5QlAjnT5N9tfwtnMxe2fg2eQz0TH9PgY0GWB0tVOwswCmpQk30U5aLUqKGsLGn
	 /O/7dV06GaW4nM2MxoZvHWc9ZTFosnB9b/c8PPQbRoYjGbH9vy1zKlPqRPmyGajl66
	 8J/WUCXrzkP2g/xAFNnONKyrq5JHNYXT9wzwfpKb1pnWKrJd+Ddkj/Ji2MRnOnO/sb
	 gD3/B+rw5/o9zt40ydvLGx/TL2lL8OgO7YfN64KXK2BwUaIUR18iRU1h9scl5xvqvk
	 TcwD+UcbiJLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97841E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173361035360.13860.18004542360668993698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4548869fd0a707e1abb4ac6b129e2dbb0ead36a4dcedea3fabf505a4e82ade
Date: Sat, 07 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733610353
