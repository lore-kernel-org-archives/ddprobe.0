Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465ED200B5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726773354; cv=none; b=DaDbr40wle8CAisMhqUDwPMlJays//5CyWx0j7RuhEP4Vh9/pwFFjeDKkfS2h9oFBjqs568EUS8OyGoZnHglKBvz2h35lZNzdbcKKipXJ5etoRp8rCjtC/jRM+j3rQqCTGRIVfRHXslrLousBB7s4C/rkQL70lgcAvISVijgytU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726773354; c=relaxed/simple;
	bh=brAz4EdE0OsuV9aREQVj/pq79G4wQCh8HCdvNnMkbZA=;
	h=To:Subject:From:Message-Id:Date; b=fMhjJfXE3Oazx344BFOLgBfoYIiRVCvc2PL311y/GGlvjqIoVxiA/az1suwrWBTf84NvV+E+WV3iNgU7CZhf5J8JuOS0wWdwM4VNA2SHmchbONAJBeG/oV98QAVNT41gGMWI1yqZgVhKLD2VQipkM6nPG4ARU7LS00MofXbi4+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4b430Vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4b430Vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC59C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726773353;
	bh=brAz4EdE0OsuV9aREQVj/pq79G4wQCh8HCdvNnMkbZA=;
	h=To:Subject:From:Date:From;
	b=F4b430Vb1fj/kFhNGaKcVc1IjDfdTWHZUGDx84mOqzfFs2kitF7We9mMqnLdV0cqe
	 OSSvHJoUXUazYA5M71+y/JiJQdShLBCY0PJLoIslkuvNqs4z6OdD3Nq3RBa4zHmF1d
	 gJuigg0bYB/iPIwzf8I78zOm+dXN4sBQ7wN2YYzSctFUnV9yWS2F7AX+ZZdtzu9ujN
	 w1OLEbyNiWOD63L3WUibaguoPluY7Jd1YkzHRvhGYrZxwW7jYWod4h2oRV5ovQ2RD0
	 sok90oU48wkkC7BycmVMP90nHWbMu84O5NKnkVQ31GorTzQktKYXp4sUnvqvL8eGDm
	 0qXCxn8d1i7lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07C5CF3963
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677335364.1738.17709124870538206009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e17b6bf398083beabb331a53c0e8e0ba4ff63c434f081fb9127b5731d1fce7
Date: Thu, 19 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726773353
