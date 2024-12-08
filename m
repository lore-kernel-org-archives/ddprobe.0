Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3742D13BAD5
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733674554; cv=none; b=rxDkIVylEakZxci/tYDeGrDeDYbhaTO3gZjZBAsDxVJheVkF+limj1ALf0t5Mqy2WO7KRAZQRHSFSlswfs+LhdRSfI+jCWkIzDtmN0/RGBp2TEP/oWuC2T6ySQdCSo5f3hBweji0An6F6ineqca0SrXXze2eJ3r4SYFVcwinNVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733674554; c=relaxed/simple;
	bh=PJBVOP+GTelzHn0c46z6otH2qK5E4lSmkpJdmKQUTxI=;
	h=To:Subject:From:Message-Id:Date; b=F7V5OXHmPqS7SmK1WoH3EmL93dAyl/Lijo0H3QWmbyLj7mwmXzJY0az+M5tq+KnsWUeGNbNR3sJLPLmiXL1awvEHUYTjZ64D5Rw1qzGkhYeu74nACuLZ23D4HOyzl/j6sx3Y+5OTNzGUVA+GhRgXedWRFkImKNPvAzQWnzoVwCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoAPPYOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoAPPYOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B7FC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733674553;
	bh=PJBVOP+GTelzHn0c46z6otH2qK5E4lSmkpJdmKQUTxI=;
	h=To:Subject:From:Date:From;
	b=GoAPPYOJW7KbRDG4sFDCFrF+z6j/axMg+7+JM2S+YTs65gQ/INMkG0+z+1hH7yDhX
	 y0D9bjdj7bs/kfUcTBq44nVMMiIFvmB6u/HYjuuL1ZHsqND0mJukC7JlXfMmI6LYaF
	 3VksnbD3+c7mm5O4mBm4wdtSv2zxdRBdGRU/Rt/iujL3q7Wnm6SZudqSyscNtSVY46
	 RC+3Tsa+dQTT3ndi6stKYutEcBpBwDgiQlJkQ8AXQOzrbf+uVYzHpQMIWY/7zzFc+5
	 37U4opwzkmatrlI+O5Dn7CThwQ9zvnxW0gm6+Oopk7MPDm5TemY4HuJVFFFWjwabOZ
	 NbxHUc6RqteTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C09E7717F
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173367455361.2195.4313330607534267959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bbcc923fcbecb7b0dcbcb4c032483eb479090eac886581868bca0df6a291b8
Date: Sun, 08 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733674553
