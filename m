Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19345284689
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439234; cv=none; b=BSHPJDFLz/91qovDuujUndH6L2nG/DzKbtB+UlL3ANF7WBuZ0F6Gk63X21S8kCp8LcYlWvjkLMvCDmBPCW4GAMVKurD11y9xo2VU3x3KNcyTIMU9YzN8wh808SYlBZssF/66g/qTPohAPX0bCuvvbzWiPMabNKpOorT3Brf5gM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439234; c=relaxed/simple;
	bh=I1RyE0lMVitwyFGLV4nxbM4CT+Aa5tHtmWYkFQyFUJ0=;
	h=To:Subject:From:Message-Id:Date; b=VKrjoJlDCix+9lWTTasDgV0JHhiR70mE3yE+PHbXwkoglbadirboudggsfct7SzREkgoobXa5/th4fEGmnNzgbXLXH8NwLDrILve6uSSGR3Ie+qkOr80ELTpRRcPxoobLb0Vlxpt/t7uPLtjTQsY2nq83IukJ8hIobgCo/D2tDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+1Vd7VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+1Vd7VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C3CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769439233;
	bh=I1RyE0lMVitwyFGLV4nxbM4CT+Aa5tHtmWYkFQyFUJ0=;
	h=To:Subject:From:Date:From;
	b=D+1Vd7VRoUdF6Gm/4UJaQKJEmBcmn3FozKh4D9atqniH4a/6MRCp3cQ2JPlo/awsN
	 FhUgTHQPzUVKP7tDK2BYiF96pFSIdMquvodYq9n8T0hvcHvZXpyLK/sNrt9WZo5FTT
	 sRUym0k7qzpJ2y4YKXKWg8473KiEwugQ9d5dJjRcc1FWonz55vcHmDRYtQBtsGUsyP
	 RSwYVG+mH/9k9IBCaW64CvZ483MzXsrEAhRr0XjM7kR/fdh3O2EX1fKNt39dQHsNYa
	 HKIOo9ag0YQdnaLZp5UCqXVmCkNX+y/nzrZnCFuYT2LUJqTawqVBjNv6yKu8lwZZBr
	 DTtYicc6NkwHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F078D13C2A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943923357.31179.11831994805220244522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4e197cc4746cba47a9372c9af500a709c5ed3934aa6847eccc03425d6c7dc5
Date: Mon, 26 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769439233
