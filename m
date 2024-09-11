Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2634BAD24
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726024554; cv=none; b=MYKnsHy6BiRkoNtW36H/dckWhBBxHrq+Zv56SSnNJGI+KkyU9TblPihiBvEgsi0P3IqDwRqY1iUTTV15yM8ejbEnMGMuk2dLzhUMlDWJyxso8CxUIp786xodGLATKIiUKJ7T25Qwz9I8YER8Z2Ymnojr7rpIqX65x22DqqT7Hgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726024554; c=relaxed/simple;
	bh=HdrT9Px81TL3wUm1vLitxmuBAOJLfl+eraCkc2n2SBY=;
	h=To:Subject:From:Message-Id:Date; b=JvkqQaRbRWfTiPt8Z1/V5bqZP0Yzcb9kggz7mi2reZpKasYVYVaC9EhTNBFEYdf6QzDopSxf+uFmTH/IdOySodgoe3C65DW3vaD5VRSZZ2JPM8smh0uc4loH0BwQlXBqr8AcZ0AlJtH0AQEqwGa+L1yWm+sgmFsNwZ+KOPbLi5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7n2DKaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7n2DKaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2097C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726024553;
	bh=HdrT9Px81TL3wUm1vLitxmuBAOJLfl+eraCkc2n2SBY=;
	h=To:Subject:From:Date:From;
	b=C7n2DKazrGrv1Uz79r3QDhWl9I8n2i5sEw3i03kn8dmkHVk3WukcmV7VXhEbppmNF
	 XvVObjPx0cDIKVN5bmS9q9rtvmZuWy0k8EwzNcUqxhZfGGGBMpgg8eusn/ic7YvIgo
	 T+DJcGjVch1oQfJQ/jUtXo7cUfivyIFtow6972aq60/dh3JWQ3zKT04rRkGrs27HE5
	 FlrLuLVHV4tWouA0yEH3OdMcJ5gezcvbY1pEx43Bryf6nmXL+COPMQUX7bPujv+lJf
	 HDrwYHhW0nS3Zb2wAqncoRfBEmaxeuDypenkkV5oWjF9H8qDG2iDr4ccET0F/cZUEF
	 XtsAcLekC8fVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C198EDE997
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602455363.13093.2559404482989173486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94e591073b5312d6f7196160936d81de44d470b7c5d3828963761ec7d771d0a
Date: Wed, 11 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726024553
