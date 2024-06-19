Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B336155A34
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718816963; cv=none; b=OF3SMysHg5E9Jynz9iwXHOcsW0qStefFLZLQrnxVbIYrVA1Bu6eTjnI8t8KxeNLhJpMqL0+ipAqLEtoOkbbYg21jNrmuax73M+Zl4AvnLOrxgbhDU6vQQqpISl3rq8v1HfgvPAA7zdmmwNRnBHEu4+pJJkTvApTtuZD+oNP+43Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718816963; c=relaxed/simple;
	bh=m0iSbER/gYlp2lEvF5rvWSlToEsPs4BK2FyFyrs7iZk=;
	h=To:Subject:From:Message-Id:Date; b=XPueWO3n2bwfceCYNBTu+ttIE/Zf3MYml3rQoxe6dk9p1S4abZwP56A9fylWKIMHA+Z+zWJnRuJF5AWNeQprfuMmc5SK+BC9hvZWioDGQLLxqflOK6boF95nAFrn+LD5H/rlvq9qjB/vuKs471dZ7jYlMo5QIWrRZl1sKzoh7eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bld+2tdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bld+2tdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14C30C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718816963;
	bh=m0iSbER/gYlp2lEvF5rvWSlToEsPs4BK2FyFyrs7iZk=;
	h=To:Subject:From:Date:From;
	b=bld+2tdXFjYBXTfgvbY5hEIAe+E38Zn3KPKE7S96rJyWfXvUBBaqPGGP49kx8fME4
	 eX/aJ5+xXPwOA0kXBmfOfEbjGG5zoT+drXb22N7RsJwnrrUyuwjK4xJnVTW9VXNXCK
	 33PG2L/kRLQw+xtS92P4oOkv8OUquKbi8y+TldI5doZfQvk4omkboSEOJhMbOCh0wH
	 9UykBqRChGiS8QY2k/hI5Fc+OysMvQwBTPWC1P/cqX38oCueSpWTkMKUzJhHGqC5Jh
	 9g0UjAbwjbVKI1Da/WUDYctH5mjj5bUhrhEr8n6Y6ek+ntaasV0A4stPQn2beRCLp9
	 J1cyKmJNe9iTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6E46C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881696292.16002.14409164620473927894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7036152ec5d4d5db63d1cdb7589a2114b48f2717d56c6760892495f9d7015cc9
Date: Wed, 19 Jun 2024 17:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718816962
