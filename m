Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391CB22DF95
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759294194; cv=none; b=HNsD7BNzAhFfl3CkcfiW9mc+wdo/PUmw67YcceZtMGvKzyFRbvxYXeGb2QA+WziPhTxKAlEXLQOihyblgePqY5SdSASHH0HvT3edM7ZOQMlxglesa/U6cxHFbX2eyEr7l/UTxdN/k/naOdA/feVTNVq6Ri5FGLaTB8zeSQTzLPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759294194; c=relaxed/simple;
	bh=fed2DBdUF+Mhf1YPPP5Gxipoj/E8a0YjniFzncDxOcY=;
	h=To:Subject:From:Message-Id:Date; b=QUbPxXfEK85gn0UMKwRvnR1mZhfNt+FdHUOmi5rpoWNYdSNQJ5ZYpopPqNRnMBntZB6+cFHk2NnoQQJrObeDppegWpH7ygUsmPwA6hlXyByZtiIAvw0gKga4ZwC8ZOVxd8Uc2+CyGXm83lw5bj2qoMTzpgRqZoC+OvAPk8JgmTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwssekSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwssekSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAD4C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759294193;
	bh=fed2DBdUF+Mhf1YPPP5Gxipoj/E8a0YjniFzncDxOcY=;
	h=To:Subject:From:Date:From;
	b=fwssekSfdFY0YlL4klmvjDeEM+QB/U1ud/yqeudi0jvwm1WcM8XwF0Ghl+9o73bfp
	 Qnrr82OTjQJBFRgeEe+R+Tti69BnO8yjO0coVNN/3iNxDClau+umvVPveGarErAxI4
	 vWyi3kRNdbI6NMNsapndYukonO3wMWAUR3gUjUe/uvB5Sv/dNG6PASA63+nAmCKFVu
	 cpACPoUTefnod+pcoI+5V1fp0/sugrPEnz7c9VNuFGdlZEz7pHW0Si+t7wRB3/85HI
	 Ia87nG8rTq3Qt0Osu5v7YTsKNu+gT2EcsPNRhMdilRzpGEgJEieORl5CxswBV3ZxDG
	 wInKd81mZtdMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B33FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929419359.19797.7403739554193195445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3aaba03e93230f6d3b6005d152ebe84a30233841e553807a973f7cfc288ba9
Date: Wed, 01 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759294193
