Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB4D12FB29
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714579943; cv=none; b=iG1nUZJL3xNn1xpL5TuBlwASx7uv1rgULDT6rEOSDX8k4uBqe10ezDTA3Lyk312xegJHZLC64PXxUnnc4+GUvgz7FZeCbFQ458eJO+kUTmZEDZHOkUzI0jT4T/3SUIMAABJ7RiHfo5uBbVewq1yDdt9L4+FyPsUmSJ9Gft1RR1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714579943; c=relaxed/simple;
	bh=UfQF+tyi/utnmre/9UGUm4NJgylSzc1gsLf/Y/CgaRE=;
	h=To:Subject:From:Message-Id:Date; b=EhtKf2k7OycUBADZNGZmEo31BAJQFjkcSJm3r/yyu1Dg8hl0PAwJb2VRNizpvZDJID10nNHZ4Pawgu/3ZLJquyISDQQdsfUPVGAuM9MCZabfNuO98Cs7QcVZR1HyRTc8MMonkP07Y46VsE3yheWGcNWvBiL8dVtg3lkhA4dyAVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awSACR2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awSACR2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE260C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714579942;
	bh=UfQF+tyi/utnmre/9UGUm4NJgylSzc1gsLf/Y/CgaRE=;
	h=To:Subject:From:Date:From;
	b=awSACR2/OdKi3DJpsOgnx2+jl7hqTTK/JcQNMp0JZsBmUjGKeQYR51kG1YNLsrEqL
	 pJ+Mna8vA9/nhxAZMmHfSHoNPMeCEspm0QekDGhYZ79EvrGmiLXKXXcaQy2ckGfLps
	 TnUd8HUzI9KhY5l9UAk1wljLFRqVu+pZZCDAWxzLfWPxWRO6SDQQjb1fLGJo7UIOgj
	 oksnhm17JZ9DXhoIV0qiRrTs2QwNI1vnbg/I+j3kFu5YyXqpQlQlAz/XpAR77Da0Uc
	 WNAcC2yQk/n04y/FRJCe+h46VxS0dWk+75IIJZ7SauqqFroxJ3PaWFxBESlSvXY62O
	 0RJomNvK3ETVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F1DC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457994275.10330.1848721974707801236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0516612bbfa30f180004f844de04c214468b7213427a0026d41aa2c9ff7e18f7
Date: Wed, 01 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714579942
