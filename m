Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C961154455
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721814954; cv=none; b=pgWei801fuhDS0WHZOEK7zTm19Nxr3ysqy6HGfyFTA3FghXd9ctjKif97aM0q4O9H3MmUhDtMQAppsre+Mu5rriqXQaM4anrD2q15CvPCAjrAyO5O07GtuFnDwFif+yBHMY81cZqCNSLiC+eOuh5bzPtHUHq9D1ALKKDLoIAXAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721814954; c=relaxed/simple;
	bh=dV2NdcYJKN5lahqtaJutKC3k/rre9WuEB6wIpNKkX2c=;
	h=To:Subject:From:Message-Id:Date; b=TQ/nmJ+Q7oUCavIMgaXh5uGym1zDMhbNdNRkD4oygfRc8lKEXcDNCUIDm314fY7WSN6NR2Tn1IGa3jDBX1F6PbQONQDie5CXYdoLiRVozp7mawp197/HvC9TwO0cgwur81sOhaftx2swg0fFitzsitr/i/q2gzngEbxBgYE3UHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew5AZd/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew5AZd/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FCAC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721814953;
	bh=dV2NdcYJKN5lahqtaJutKC3k/rre9WuEB6wIpNKkX2c=;
	h=To:Subject:From:Date:From;
	b=Ew5AZd/oyMtzByhOmAg/nV76qCVmTxcCwmrfQzPGwt8hS5DXJzHQ9DIyqp7rwgmuU
	 +qy74zp2RT1/zyc/o1+kLQcDurmhwLmvw04lDND9/qPgJx4Qq/bm3eWc4vnaPgSOBO
	 muydVVPsSQbWRL04MgOr9NsTuOe8X2OwgSjbMBOCjP2NaJkJ6111Q9Iigb2/9VVz0t
	 ZNh8vUeTBF5ZwndJx2ZT1Q0jnJZZLgeNcGmvyRP0iDMq45jWRKobc03+aa60T9pVYo
	 pVAMuPY/ZQc2by2c/VlFJczFkfi3XZuU8a1D4glvuSunQXFSvc4SKR2JU16D+0brmx
	 Lfn3KmRxIrCsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943EAC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181495359.25354.10761786916483586168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2007f72103046047884729672490c511ec0aae0c787a2415304e41734726ffc0
Date: Wed, 24 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721814953
