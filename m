Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C0810E5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717564583; cv=none; b=O6VPJRKaB5Zr66sMuGvClLJvDfXY4bgN7ERYOpJb6rQ3hp49V3Xp5dbEQ7G2reY71FQVqxxyLVSOhMPR+5s3UMIseRD8u/8TAO3CO+KgPlEgbW50Gzv9KGPW+h78kIGwKQOrmeIqvWyxQ6sKJNWVUcGiIu16+U1Z7m5Ze8c9oUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717564583; c=relaxed/simple;
	bh=jvqm6ta1KWIEVbbluiEMJOgIPnhDFvcZ2BnfMQfKanA=;
	h=To:Subject:From:Message-Id:Date; b=obyMlh6jbkIqmODGxB/gGOI6v+YTud4thC0VRMvYv7+MMeUYe1oLdV5eQMHP6wwKn0PRdZFotO0QJYKQdL2AM2x5EiOZYrHe9L59B7CfRWgsY+hrW2ENL/tuDV+BFOTb/J0c7YKP+J1eovFMmcazSfrpq8B8fzg4Q7Hndx7KUBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5dSfizn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5dSfizn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6890C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717564582;
	bh=jvqm6ta1KWIEVbbluiEMJOgIPnhDFvcZ2BnfMQfKanA=;
	h=To:Subject:From:Date:From;
	b=W5dSfiznnYqjZgr6BOg3gDjB8YbjSywRa4eO3cr7OdY7Tsz+iHtx8s7dqDmQ6Cm6a
	 4kqsyb74e2/OmpKVtig26vCxbSzEx7CM67x16FvFMVma2ZgToakU9K1pLGKvJtBw61
	 BPqebJ706AqWQQkIxHtHbDYx0dNloQ6t446knbkpLvsgHXaL80Vc9i6x8QhhoUFyVM
	 sUyLt3MBMSrV+JoK00HJaPlQrFcKQwXFsxpVgjXkeSsHB4n8ZxYLwjaWdtbTqr5KQi
	 CmL14/2xlLnJk+zgk34kD799/rfdD6iF3SpbNEcm3+tvgc1+3MlSCbSn8iqNOcQSAn
	 h9Sx8NgaJ9g8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2768C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756458278.24504.14976239125565163909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a4fd7634a36f4b9d4b45df164a71ec8116f83fa9ab49c9f098b0fcd620cd12
Date: Wed, 05 Jun 2024 05:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717564582
