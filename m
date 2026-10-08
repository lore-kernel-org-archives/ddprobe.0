Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587503C3F64
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791441034; cv=none; b=UNOuf00QmYxF9/K2sJajK8AzvIsZcW6/xAxN30UhwKYLFl8xR+ulDf47JcOHC/OqmzrRckZLv+fee2rRQQKMSknvptXCjgc38dt30DYI47W8tskPWy+lRTUoDuSD76BGvJzYpZiu1AcY9NTzSIAbnLDuUjswBda5Fme3Hpy7BbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791441034; c=relaxed/simple;
	bh=CMf5CLv8AhEpW2WXHFKfU4vaByEFq/LUI/uLdharEN8=;
	h=To:Subject:From:Message-Id:Date; b=h5pBQy6nIB1N+YIrry+2ryrd3GxOzooPvyPMPcCQSIJOc7iYmXDOCuWVdeDsKrPHqlsDm3zrScRWOcRWLOwploU++ClrvbLDtagRxlThYAi96LdxvVBK+GJMXYruZl4p/5tIgKWcKS+TFYPuF22rLodWjCrnzbVBwkkFSFSP+qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHUdeFIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHUdeFIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2192C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791441033;
	bh=CMf5CLv8AhEpW2WXHFKfU4vaByEFq/LUI/uLdharEN8=;
	h=To:Subject:From:Date:From;
	b=MHUdeFIpPZN/kkbK2/l0l9OX3uYS65zMMjNETFP1YAAVUpLX/j5YEdHkNKBC++5bF
	 WfYuzUbaRmAnFFpSQQi7WcvHqUWFumUfDdmjh0qb/Kk8HlTdP/Bim+guAJhefwcExJ
	 lw+5F+r3xuqG2LvDzGSlOVpfTu2cgn/626UtLi3wMagzZVetp+SjumnFHyHkB/jguI
	 UkQ749MN9vf3UEDqNUNQ6QjHTYN9/R3vOn/H03dEWTYd0nHHXBCxNXWwGwe4ncPqpQ
	 Gha1inL/0/08MvTiYMGI5gH2eO+TaPe2gIIKW8obAuf3RndEuoFemRBmEW9dCqOj4Y
	 9i2rcb6fPyN+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFB8CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144103368.5291.13406749180889516532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1703f9e7a97c9adec15ba1357bfad9091f2103499f7f6209e186c334ceaf5829
Date: Thu, 08 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791441033
