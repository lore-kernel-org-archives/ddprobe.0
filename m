Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCB734CFCF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770805494; cv=none; b=oD/N0QSXlUrcQ61YoodyNSw3xJ2UDUdq3ZjeZJFPwRk0T1/f4ncC7JWlWO2Qb4tFfnvxaDTxuJA3k7YkMVurJbQpKrW46wncEYtDyjo7Ofge5Fya96dJtxXcJ/zFl7fbVXkTWG79NO805PPivwC6EUdAmIsaAjpLL+PiU3Kmt6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770805494; c=relaxed/simple;
	bh=q4lE/eWq7tBWuYJJuee8n95qzugszxw0HVTj5sQhY+g=;
	h=To:Subject:From:Message-Id:Date; b=GhkTNlZm+Kh6U7nNAldw3DNB9VmWbcKe/Ilp1Ie1eMhlTblcByKzjAgt//5Yq88n0unN/qiZzyAF3SyFrJWFKoVwYFLjhKnRUw1A/S9Ts+wSwGhGJIQCifpkIVxEPwpcSlN7f8Pqv0DBZsVzyuA9+IHbuGvARL2ZemtSzUM1A/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5hFvMiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5hFvMiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0334C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770805494;
	bh=q4lE/eWq7tBWuYJJuee8n95qzugszxw0HVTj5sQhY+g=;
	h=To:Subject:From:Date:From;
	b=R5hFvMiMeVt4HSBopvyC/wp08j5YDwu+KCKvwghajWHP+tcS3h7ExenGhb3yZHGio
	 XUgqqtuZEnaUkUmO2XXsm5PXnrAY7/NUoAgdsKkKSs4xCvBpCTpWB9eOJsgswaOgsT
	 8XhT7TcjNz7p/Hhh4wLjA6ot+6yn6WvnCyeaFOvgt4DrxQoMAivw240kXcD1uhJBZ7
	 RUM/hx/To5dx2EBHX7DGeB2AsUH2Gk5wHr9UTGSKOFM+1rbmC58n0nNBVog41ggPEM
	 DyDReDPJVKNCcrYA4PNnxBIiV7dvfGRDNXuiR0RdbWOQWa2ViIpSarVvP3WX/Q33AR
	 DDC7pbEbhZsvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE2CEA3F27
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080549381.20583.9590983622914137501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3ea1191b6ec7e1fc2342690952b4ff2508c62a7455b08f2e010f1b2105c357
Date: Wed, 11 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770805493
