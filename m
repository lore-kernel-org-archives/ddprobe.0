Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7993E47B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783576114; cv=none; b=k5tHH3DPL8NbCxzZSRr8NnSYgyWUdDpny29nf8UYv+BkSJLRa2twhFIheNJALgiGjO0IF3Ac/35Xjt+sJlaycr0CHBgnt5S56EH7tTGdd12fopi6k0soa4Cx/+ZpNO31TaJxTxIibxSQ0asMr94r2QOiqF2VN9ZTz1jfYtCFrus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783576114; c=relaxed/simple;
	bh=S/VfKvtC8D7KnS4+6yL4kGHTSBaaCdD/E/ypcGK08w4=;
	h=To:Subject:From:Message-Id:Date; b=XopUXHhPTHmZmm5J/dI78CqDFYOa/Dwg2+ibW+/llKO2HTaFoD0RmMM77kNP8wgdJ+QoVj/0bnq1Hw4w51t6PAZKd9zkXftRzJbgjvdoKHEJuhNzh+UJytjKqtWXsl0+1pdW88EJi+SueXP0f317X858oq6nPNdeCO3ihtirON4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pe3jX5oA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pe3jX5oA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00BAC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783576113;
	bh=S/VfKvtC8D7KnS4+6yL4kGHTSBaaCdD/E/ypcGK08w4=;
	h=To:Subject:From:Date:From;
	b=Pe3jX5oAeR51ZLQmdFbqZ9RNSFA8YzeCAnCJnWCEDfXNNLI8EISHREJCPOEAjoBdn
	 WOY2z+N8Y52uGRLsKuPMaR1DkR8mwDJ7lj4b5kQVitJj1gacoS6nxj6ifrlXtGQA7J
	 inFl8n3WiNCSru/Vc/OpBC9aIo2zZqZIFx26zc4xFlqaIXuRKs/AAYYW7/65bzvn3T
	 mH3+hf/awhIWu3MSNVfPqjxTHNfHTPyFgkUnjaPsd9oF7j31qEd53XAMQDEuBrNVAA
	 fqFD25Vu7KfsYFpM6AIZ6mcqz0sOYyAYVLPevSVauuPs6W9svNI7uSPIK5E3++3sbD
	 neXfSNb6XxLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFD5C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357611369.11623.9239159657997747321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b3a446a20f7121ff5377baf3f3a08364626d03470d8d6602b703585c1e1948
Date: Thu, 09 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783576113
