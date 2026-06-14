Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8384525B0AE
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781433394; cv=none; b=TBuu4rxy7NqE+AqBul1pLDEgI0IDG+gX4Qt0DtTI5dP/lxrCbxpOrEo/qSYQq3pxjGsdDOvihlPYX1zfC91byVBITjAXH2em24BMdPmkK5vATRm2Cw15BRwxybPlJk7GFZ4wbr7ddq9X6FJedRLXCNV5ioQ/NVnBg276asQx3W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781433394; c=relaxed/simple;
	bh=IbPN4wTd34znthlo2mDDvr+Rj7EwNBV9yvvw4HE4rNA=;
	h=To:Subject:From:Message-Id:Date; b=HWJXUaMqlTDg2Ik4k5/h9JqoEP8BkPm+7CxcukbWEviv6uHx3PHX9SyuMNFB9LHJy8I+Xm46EwfzbryFuaa4tUHbdeSzR3IbyObL0D9PHD+AFNP0LgY3p/wqRcwL9Lc6HSPHtvTGXQV+ZZR+/3UfjSWY8bna18j99WnF3XAjHVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GII7qpCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GII7qpCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF675C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781433393;
	bh=IbPN4wTd34znthlo2mDDvr+Rj7EwNBV9yvvw4HE4rNA=;
	h=To:Subject:From:Date:From;
	b=GII7qpCJEHBJWgzvm5EwzkThx7XfRymZ6e9zNOJ4Mzkxm4/5tVZ3bylRVQC6TsnVr
	 ppOP19Zg6ElhqU4q4XlHUzn4JxHRu2IMlWh55O4+m1gHq2m1iCyugbT4/dlju9LKVu
	 KyY30Am6eDNGYylbfcboaSyTXt0vGyIOTqHFIy5hO94f60VbHLH36zbaiFaryI1byP
	 Ox12adgwuaafCD9IuQiG2BRYnXtdVTEQoeeDQ7dGna8fGLyjASFrg9pvjdJI5+ehPC
	 wCUDWyWpgvDlE0MIO+GuFlzW/DX2K0Xcjsq8pB+YpR3Gx2noJclu4RSw5OxBhIiz9X
	 kWBatc6S+e9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BDECD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143339369.28214.15920671646699170650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e612c342708d555e25d22109122294f08d103a2b3f59ec90dc75f5ac6f711c9
Date: Sun, 14 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781433393
