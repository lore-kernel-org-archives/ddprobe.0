Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D7D15A5
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717295123; cv=none; b=mqy3jTFxWeqpmhRqx9IybOtZEyWRWWjjVzK5HNrPWQVqVL5+R/pf2A/5f5GmhepvJ6BTbkK7C3mvXah6/IKrU8XKs/PdIf/A2Zq6poMLix46WN4bT9gJCr2Audy8ItwZY6qifZ26xuG4DB8ebWozkKODZBuGuvWvAmzcb4+rryU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717295123; c=relaxed/simple;
	bh=GJko1fmpuB6DVvD6mxDUZh4bKujRKTQ6QCjs7BBCMl4=;
	h=To:Subject:From:Message-Id:Date; b=baMmliK2rWBZl8Mk4jIbtN4lgBCOA/wti5slpU1urkkWILvl01O8WbbemTd0e1KfIoFm4vEul8wwt7xZhurD7qV14mfn07988tSsv3EkrbDs+ARVx/IfMztYAKGRIJqYY7BkNTvMtCGbx8qYrWrRpeOO6B9DsLSoOOTFT5DzhW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIFkz1fO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIFkz1fO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB354C116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717295122;
	bh=GJko1fmpuB6DVvD6mxDUZh4bKujRKTQ6QCjs7BBCMl4=;
	h=To:Subject:From:Date:From;
	b=PIFkz1fO1u/FpPTrZL4WzUEy+QrufuZygFNyYAQyN3+XkO7voXx2rK4rJRwGO72BF
	 bbAcT2rn8aGFTv5d/Ojfj3ZpqxRXFBfpUJ6QDvq1QlOAYb6GWw1B0485taS2alPjDu
	 1lQKYjXVsOJVvJbW3ZJ3YhhF4JY3D18qvu1SiquraqHQZWFFO1l+x5XBUO+KcODyeQ
	 dEzm/5SX7O9wWjhW83wqL1WK+bKSufD68en6MLHRJoUihQ0JkVv0z4N0er0OoVyDeX
	 OSCSA/Kc8ggvfJBGbCJus19Bhp24HaICndi0TD6x8rhdr+TtzNc8cttE/xWmAVBEuU
	 Du9j7JrL8A34g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54D6C25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729512277.20927.1832462704314392861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43c7f489a43096c9a43a61875fcf7b640edb3fca1d862ca2b4561c206cfdcf6
Date: Sun, 02 Jun 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717295122
