Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542DC19CCF7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781010934; cv=none; b=j9TERFuEkKPv45N/KTbyXJT1vvL9V7Jf4GP3EIWTKU8+pNOwnhLoxgdhyvJwUn6R3Pd//RPladW48ynj9um+Fc5VrobNxfVRGWZuE5WoN5kpeshH1N8W603gVTBwPQ+/IfV1xYyyJe1wGPqawhxH7eNphvVeNG9PsXFIuhqyxRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781010934; c=relaxed/simple;
	bh=X4Tg/jsM+7VWZ6Tn0WTP/O0+bEFu1+5+ipi58iHmrMg=;
	h=To:Subject:From:Message-Id:Date; b=RteEmUzypM90wwtzJlnpK3RdJKZGxIJf/gx8fDyLvL7BMbNefHzIkGe9y8Z93IuZ8VDVraTIksA55yqh4l7ufZkXqV2gG2nwRX9LxDpGfOCKWseW9cBXclJwiCqgJKTWy4qvTKQ+IG3c0M58pYSKdIG2gjkMBNFQH5kcGayBBSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXVCLYC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXVCLYC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68FAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781010933;
	bh=X4Tg/jsM+7VWZ6Tn0WTP/O0+bEFu1+5+ipi58iHmrMg=;
	h=To:Subject:From:Date:From;
	b=bXVCLYC8naUKcZ3H2J/RzHW03AgjqRX9/SX3YTcAi6M6kpGAvpfYttvv0RBvISYNr
	 uYpFRJ2KbYGNkX4eyPuuWTXRni+Qtc2vhYNBUpmEXi1waqIMUsV4SGeXNrTfNNx6Mf
	 5Nlu/C5IUzCs2ogqbjo5mUzr4NN6b2Ha6z4j9azrVidORIPvkwL3W5kLpMDCJk/G7S
	 rTwhiYjg4Mn0tMJu+93QPjYZy9RM18j/F+Cr17MAJS1vlevzigIRxedvo5ibRJlFv/
	 N9TRet0gwo7vFSvI63vWwVH+Za3jsXZ8poq6YiwTRUAEftkmcRlT+Bfgsjhxx3+39i
	 eTizKOMbBqB1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C85CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101093370.18355.3418122054275890505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0552a835a7987814c64f28d8b25b2bd2c5deb67ab50456c03382ac2843494007
Date: Tue, 09 Jun 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781010933
