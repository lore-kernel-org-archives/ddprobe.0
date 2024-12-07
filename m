Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AC21E529
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 19:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733599555; cv=none; b=VmXrEqxDXsi4AlOCUcjYWvIhiABuau+PS8K+eB4lH1PwoiLMEYUst/kwGwU/uO4rGxVbrTVrVXUueJ+wamJBF06h2s0w7nGq1IkhYjemlUpihi9WB8xjo/sdHDWj9TEeMhtf4hjLA6k4W/nGCPso+iLbgjEf5aqfymNCMDwMm8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733599555; c=relaxed/simple;
	bh=DT3iS29HVoLcmmQ1p4cUZE+cTCFYTdYtS1fYDmKaG/U=;
	h=To:Subject:From:Message-Id:Date; b=jbJbo1lQVa2as7qp+FuFjKEbqvLshKE+X6m6cRBY/pSGM9cARk5zN8C0GkL934yTWeiClS4k+EjEID7Ds72EScNcqzVqUlpubIhR+0tjADa42acJ3eiN3w7JMVaLhITRVqG8XhCr5ZR4USO33LRcKZI1iNEHPHDGvEYLgkHoNsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgLWYttx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgLWYttx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2CBC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733599554;
	bh=DT3iS29HVoLcmmQ1p4cUZE+cTCFYTdYtS1fYDmKaG/U=;
	h=To:Subject:From:Date:From;
	b=bgLWYttx7kdOhrgXpqSHhZlNscCTeMYwg8/X74TnSLj73kz0aBI96elAFklF+nAtF
	 182iPtSEwbMCRrsUcLX/ozPXXiNSrcTyMNtB2J99vktQnsGK/TJjl9vkTuVyX+n52q
	 yC4bfKEJVLviaqINUQVeewjw2L05UWM1y5EujNoC6gyEBHg0bxo2932wcXPEl83CI7
	 39XbAqiPUTgB6Yv7v28YJ7ElrHhhVKK1zp+aC9LT8tUzjfeGLFy2Q7/X7kCAtFnoEZ
	 prUtXjhX8fhMhOCVo9egsPIeHhA7BZ3xNTO8n6wxMF/7StE1OGPdvKt5+Ot0E5UPOu
	 TcRHza74MKRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99843E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359955359.2008.10119064702477372417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49c0f4e57f5cff4e99818924d4f355ff3e50189634fc01275554e616fa3a880
Date: Sat, 07 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733599553
