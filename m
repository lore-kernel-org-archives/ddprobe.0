Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4A82261D
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718806763; cv=none; b=KmmEtuXRJqOCbXBxtidKmQXlT8q5c08Jl5v96zY+1A6h4VnbngnD2tHN4yykG6kn45cX338OFMIwfP1bndpKPwXRrdwqQSn1wPoYBzVrBIg0ATzklyxwuScmnr1aP5v7X+B48bydV4CfSgObKxBZfqf6tnHpUxAmAC7nEf5v00Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718806763; c=relaxed/simple;
	bh=ztT/rIlLn7KeuRnFu/6trxNAyzJeshgS42ccZQI4B9c=;
	h=To:Subject:From:Message-Id:Date; b=L5muAS4H+QxSWu3o2iUw1gxztXG9YuK7nuw6h51dRgA/fbuXWDNqzkGpxY0wV2bOFDrRFFC+qlvMWWZ7zyhMjcJxOJbORlPTq511o455slYpqhXL4COUyO6P4ESHDUnEvw0f6MRhV4Fe4OjQJtglG/m2NDWDihm3vbxyhRbd3X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szsM3DYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szsM3DYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D112AC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718806762;
	bh=ztT/rIlLn7KeuRnFu/6trxNAyzJeshgS42ccZQI4B9c=;
	h=To:Subject:From:Date:From;
	b=szsM3DYMKJX34Jl/psHu+K5QhmDZqboXWRF0SRksWcEz41bmBzj5u3GTavSmFIfGK
	 b59kMITw0JUM6GdL7w71OZ9/kAlgxBPptFKWsaAHI2B0lbe4qLEWwtOLHAmT+XgIbl
	 zVBDOYC5iuhy1qnBHUEFeYT6T22rFunNlz/voO393Jqk0J6ZZvbI7nmBia4AP7XiNk
	 k+mdMIk5AGpPXZeF+C7lKxHiNYwF5UVAS7q0CClin95R7kiBEWR4BgA7eT/GMFvIKS
	 eIbSH0w4uhaOHblLPW9a6OzrBB3jV05+AgEsZkNfSEeohGNkCsYVEo4KYjI2q7pK3U
	 CvZ1NehHkma6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B50C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880676278.9538.4846651239259969198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2652dabf78fc4a8d385a2a2c630dd908558a07ba7819a14a2a546a5e0b05153
Date: Wed, 19 Jun 2024 14:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718806762
