Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B68E330D22
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774439094; cv=none; b=Uoips3/NdY6I5CKSNAiiF5iip5j23iBVJlzOVdKPjdtgZSzbhdgRWM+ivsK7NyzfzYN+fiGcK5ljXQuujsDTyaY4IYp1Z1kWAAmqsEfxLL6qViGwb/RpXXSvTw+c9/SPj/W4qNQIBpJUiZq604nVHkRpjbml7ZI/XlFgEzWWfek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774439094; c=relaxed/simple;
	bh=Q1Akhbm46sA0ftG2fuOC/UJ0FIdhAofriBNFNqchFYE=;
	h=To:Subject:From:Message-Id:Date; b=HMCIsYyUE19u+sPRVehmGivzd9RL1AtTvxb7WCug6MdcGRtkgGvW6P4QiOs0XHFqT1QvCx3wvyY9Ype2zjaf17M96g03gHxttPUrqSZlB8IMH3nlZfIhQ24DImea+lM/ph6hATdNg+Kj0CVEkG7QFg4CcwY+kwBLPVti/4Q8Be8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InSdhB0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InSdhB0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A106FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774439093;
	bh=Q1Akhbm46sA0ftG2fuOC/UJ0FIdhAofriBNFNqchFYE=;
	h=To:Subject:From:Date:From;
	b=InSdhB0VFcnCS317TVQowEZDJop7oqNjAghulfCcbCM2x9M2itACS5qK+CYznliL4
	 lr5jwFXA5S/znaNJnTI6LfiJLfPiOsat7ibwqp5CR+7DQev91v7mjarBEnNLM2LuEJ
	 W5Mnur2iD1+/+idhNwnl+NAUe5Ttg+bOJA773mgIUitUVUv8T4/m4z3iAV5OLPOIWq
	 kC68EDCB4CJON5qo1yP17WK0QaQ06NCIYiF8SzziTOIDrA8Bh6c7mAhH6iAiPXRpXG
	 2kYcAvNdp7l0ld6AQOQ6eM06xF6PJteemzY9XMcnEBbx2TQfzlvqzY5+K8LR/gmM75
	 64nMsJJFoAk3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166C103A9BD
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443909358.14007.16847290957152641971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003d4a98095ea2c7f7686bd4b3c9d4c79b842844da4c0e9a0eb5195ec95b8b32
Date: Wed, 25 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774439093
