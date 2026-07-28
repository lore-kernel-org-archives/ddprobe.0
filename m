Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3FB221739
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785267034; cv=none; b=smVXT8OiHB1B1W5OQnOciIQPOBj+Vs4JQ419kq3Wfjjk8iME8D1urNfNbzLet1Sy4zO38GvxjziBhtlyPNgKWlKzk9SeEGcxp3QZWuBOXHgT4b0qDH5ziGwyzdfXQJGpRL9HBZOWvq8zxjiSowvSl3Bxrif2J3ObMkFP7YL/io8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785267034; c=relaxed/simple;
	bh=SCl16jrkMpekVIMWYLrQ+Wfagzg/4824viHdLklM65E=;
	h=To:Subject:From:Message-Id:Date; b=Lt3JjVGchqSBULQVT2phE8bG+Jgk49nd/2iZS+BdMmXiZ1CGdrOs1Qs/otkFdEuDa5TwCIycGIFXrGNZzSTaVKjbpzoFIkS3sX15Si189UWRnO3CQycZHLK3mdElhPkG1w5SiJljkNjD1SvLFpVFKJ5uxseGQst04YwjmPIAkEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTecZ6Fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTecZ6Fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03D2C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785267033;
	bh=SCl16jrkMpekVIMWYLrQ+Wfagzg/4824viHdLklM65E=;
	h=To:Subject:From:Date:From;
	b=VTecZ6FbgU4h193qL6fS+sC3381nZ4IRUY8efnXFhw4T1s0re7pJnu/OLdp4yy+oi
	 I35AKcCGOC0fA0XSj2uDMVI1XfJ2mTJWqzIHnQ3nm9RU2yMYaRAoxhKLSSZy7+ej+N
	 2oj8CHaWnZZKVwXHIXQSqUYr94MponOCSHIEH4FMrXMPGDdLX/8goaMUhIsMy+51+B
	 Km5Jkf+HDYg8jSZwsHwpw5XBicKOFUpxVY/y9QGIEMBbQCc2ZDQ6BTLoM/wJ/rag4v
	 YcthQ3QsNvqbl5KboE/7k474Qn4ZZlNX5STvSdoZJKVS/0pEp/PA2ldCCvyS/8HBRq
	 nUrJMhFif+6fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B604FC54F52
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526703373.19661.14618006286630090055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b6036b8072aaabe0e3962e7dc745cab0d77735a5c5ed16dca9c11ca73f0b23
Date: Tue, 28 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785267033
