Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D3035AC33
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776965254; cv=none; b=sBgzKvH3BUaoN8To8sb7q/dU0Z7kLcKJA4IjoMnXzNDI2gOKkxT8pkz1DLNHiMGagSJ+rj5xq5+5gi6tKOYnkKTU9B1Be36J1h7TsuuWkJPFzkvA+DG2cx25T+sPCv6rxN1458CiS+Vz3KsXbZTQaEm8PGu8awgjJiJpeUnqvy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776965254; c=relaxed/simple;
	bh=H0TTAw17d2QUr1tzlIdZxpd7QpP02s9hFStn8a+kHMM=;
	h=To:Subject:From:Message-Id:Date; b=DiB78DN9L5hgK7zbUwCerbyGSl8JqWLWLbox8mDi5OYmSfaooYasMBCWgcT5bzVORzTAOvf9leKuiL2LP85pPgp1GAAX86OqZ4jour+joITO+6NiMYaf9IqM3MxEAeQ1n48zhSC6kPjXvd7HHpm7pKz0CFqPjrFNsMl38Ndck08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjSpiZbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjSpiZbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFF8C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776965253;
	bh=H0TTAw17d2QUr1tzlIdZxpd7QpP02s9hFStn8a+kHMM=;
	h=To:Subject:From:Date:From;
	b=FjSpiZbVHCbuL0/JURbQ2ThAFHC+3gb5nBNWQA+4Yx98DuG/0niFZRB6Sb8U54iXF
	 r/tSl5AXH/wPPZlQkadx9vKypikDTefXJpr6fdebKUHyab/nvh31EjJhaODTSbO1ZA
	 JK06+rHYcYMFGl1ov72p19dg5W1CLMH+i6XOsjGg99gfOPqeZaJtzZwEcWEfskpg+T
	 jJF4mjkdAnNIYtFglb80ukyFlZOLYmUKTODO064kT+ncTZ+zGKwNFAbxdw5tlhl7ps
	 dj9mZloj3vXFb9hymtG/2dEw/3eVxuEru+mPMlLOXa3daSZfCXlYk4eQrNu3qwDaDH
	 3Z6vKpRkB/Ilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC528FDEE2F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696525369.32365.10343399454564206089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1076fbfa3e8769a6b83a73d496836ae2933762d281f154f9fa4298aa29a3fc
Date: Thu, 23 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776965253
