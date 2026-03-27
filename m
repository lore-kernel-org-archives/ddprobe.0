Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30034CA45
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774574694; cv=none; b=Ky0tVKnNmflqq7Zyrv10dD/LhO525cEOnHvnQ3eKl53+Z9aNfpsBrYuMaTMnmEnFa3o9KSwE8lbaYRqOUMiZY5nBTAl3ZRdnpfwUYuRR3x+pwunLfSf2sGSGvrJNZ5Oa4nOBh75QUpW6JSmZzpsTHAl/FzP/FA3d5yYcODzMAkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774574694; c=relaxed/simple;
	bh=iZXz6FREBdedPRIXeagc48eoiaDwww7rGJ2Qet4nfS4=;
	h=To:Subject:From:Message-Id:Date; b=pMjG90QLM5VYMBvFICmc0y58wZP0zRMh4NLvnB55sHaBfYgCIzLc1G+TyzWfqSwV3jMfKSohaN2PksapaTlZ1f9wFE+GmW/xfcceCRAsvu0TXS8Npz/8gsouY+HJ7m5Ej+7wqH8xUpgpAZILK+Gg06XdVWcw0ELk6VBQPXNOU/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TExNPIdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TExNPIdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7264C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774574693;
	bh=iZXz6FREBdedPRIXeagc48eoiaDwww7rGJ2Qet4nfS4=;
	h=To:Subject:From:Date:From;
	b=TExNPIdIfx+lgyKyPgX9FDXCF0vdMOFJTgwDKS9mM2EDKqy5yiY37QBibzRibimMf
	 dtzX+eGQAkSjHXjCf6gdKQo0cDkvBru+q6Gcz268xdpeufatSaiy+Pb4piXyd7vAoC
	 XBTZWmKOMqrJdgSYZ+BWEm4JYYGPAFSercCWPi2LSxxF3kknaaXNbTOR4SqJe+zvaV
	 7WvQiJu7tG/nAP+cmnpz+7YoTJ2geA4fHbzV2HoYH/hU2MKHvvC1pv+LNxfFEjRe+o
	 hYbARStIrn4dyP0NvFhzAoBG/li2TIZSVYA5u0ing12NrdI6O+KPyyb4zEOG8+/ZR1
	 AQzOmcu38Esvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9592510AB838
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457469358.14714.13408205871562604205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e140efb5a786c2e06cda998adf53b0dce373d1fcf7e2fb700c68cffe73cfae3
Date: Fri, 27 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774574693
