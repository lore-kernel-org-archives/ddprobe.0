Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBDC412261
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782934714; cv=none; b=um5qxmvNemrS4teZdT19icslEH40ABtbZ4zmoFIakAv2/mOUSQjWmr6hipHgA1ha1mbPMdhmB1VmwInV8UYg+BsNTsockm+wrnEoJ1S21uvEEiBvm4BjWLK386MsX4v3D8QNzbGxiyKQVeZgtDsTPax/1bZ4PKibANgsv+4NSrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782934714; c=relaxed/simple;
	bh=+re4adK/kEHS/o4TVT+t7qO3p6UoVy0efaL3EDu8p6s=;
	h=To:Subject:From:Message-Id:Date; b=uQNYb0ofLRj+YA4hVyRxuTvPFYcsxLzXL4PPDFi4o/u2+2UeVH+hludTsVDF9Ptia4U+0GIenkiaDhuNvBuv9JQ3NaianqX7hlnYv60L6ZPNM3DNbgwIa+ZJxATJOvnUF3sCALRbleKncJSBV1jq4VEN+yn5zd5VdTIp9Iq8yJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEfLQd3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEfLQd3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D46C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782934713;
	bh=+re4adK/kEHS/o4TVT+t7qO3p6UoVy0efaL3EDu8p6s=;
	h=To:Subject:From:Date:From;
	b=pEfLQd3xg/aboZ/2IKHWVs3BeAGtsqhrhQIyVOY3a4xp2X7ChXpSqBM0d3vGLe+8n
	 y2vrLq9VTY77YDCUsgicWnOYEzi8hhsNlgnNOK80r59Ohr0CwXtvNYeiZbgsA2tZcm
	 MU2MKwbyAMfetHccLF3gJM3D67ZBIFiAc6jD93Zq+cGaGexjRU29fQGr1dNqW61cX3
	 ezBJby7arMQWfDfQdWR3Qosne7NjVOMs2SC76KMQI7nJ0qr9Et2fk6JsyjmW9vw2DG
	 6Rq7zGPfAYaPj0yGie0RuL/dj+ufkVVcDFVqIvcqeHWEtPNvf8q3sPou0ERlXTCJT7
	 vgtBn/NCda1QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE10C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293471368.4898.4785134491056375935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b82adda62fd7157c2b178249f53181d965b650a4c5c94713d31412e454f9d3a
Date: Wed, 01 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782934713
