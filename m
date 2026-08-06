Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CE33769EC
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786037434; cv=none; b=f+8aA6tRjgzK2XZgvdlTZQ+I6ytHHibta/T3KVN1n0YkqfVjn/Rd63Dnv7k+GQA3Sa0TWuOuM5uX4UHcYpX0lEdqQuDl4Y54mufjr7ALuuq/peoRREVWcyHbyvNtFHyHI9otRaCwT8fWknLq+UexfCxmUJ12mtiOBr6X5sc3i0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786037434; c=relaxed/simple;
	bh=oBdOfdpoq35L0FNtUWqY7ShZK3d9NWAIRnnSfwyko7s=;
	h=To:Subject:From:Message-Id:Date; b=Zm4UP+yNutz5QPK2dXNd/9WHzTvl5pDwnvsi/L7t7scOf8sz8ZTSxGnkPPH9GWhL0dhx8Vrn3qycrlCOQwCbY95vFULK31AVL2JFVNVFji7Zw5NACTcVacVRbmBefLjJpIFPe6CMBCVPQ2+CgZJ3tVZ8ePp7pwYZb957yIqaGuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG+eZYPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG+eZYPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D439EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786037433;
	bh=oBdOfdpoq35L0FNtUWqY7ShZK3d9NWAIRnnSfwyko7s=;
	h=To:Subject:From:Date:From;
	b=rG+eZYPCOACAVz+uGaeajYzy5FAXRBZ9YbzgPqxc9X39q/1nS7ADLUlIj69PFx6Aa
	 xgcP00zrtHTc9fDGb5CKoXqxjbliZDLET2BDkjj8zQuPpgxcZEg5mKgkx0+5aO82V3
	 AUC1sFkBKpezW7dLnkvXb2lZeltJ0UYJdd/6Al5QniDeip2Y/cay24DSRAWz73Wc0e
	 LIVu3w3zzKX//T1O+MdQXkWaveRMej2Xifz7jXBO3l4dTCdv8Y71hbU1orw10s1Oiz
	 g8vtVqHUWqF4RkiIcfEkJWnAuXaw53/ovjEUH9836hluJsAB1FpXChTPqAaANSsYpg
	 0ci/Af+rg+LOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1188C5AC7C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603743371.29999.7729079881993506518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315fecca1ac4e5246d33be4c2387a0da79bea82abe5ed9f13a247223452f27e0
Date: Thu, 06 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786037433
