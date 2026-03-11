Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1890F31F99A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773246894; cv=none; b=bflEZKlCBhn5wlJe8UEgFqh6cNwBV4bgGPukfzfS+R3uaIZQmsXFiFktynPKCg4P45jfAcFY+AGsfe3ivmcD4IBPSVkJDqI1aCWkF9UzqwgwbOhXWx+tvCAR3j83jvffhH1x6NOdip4thzB0sKSaK5nJYWBsobssZB5mJI3+ExE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773246894; c=relaxed/simple;
	bh=Lp34fRMl8MKJY+zjuNPNTjp52gYaMwO9AKq3cmW5XnA=;
	h=To:Subject:From:Message-Id:Date; b=A+fUmpu5TbAA8bWN2vYx/sDURVgLl9dpAHkt7eFcecqwonez11z+2PT20TXDD9+4PPoSRQJQiAljTDWcmPE9ljk5edVKb1CR3unFnXeQO6dfIw/9jv9TLO/dFbRHOPT3SwQ9qytnXpPluyp8v6RBbOqgQ4ms7yJa2bigFvNoDh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdA67qR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdA67qR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773246893;
	bh=Lp34fRMl8MKJY+zjuNPNTjp52gYaMwO9AKq3cmW5XnA=;
	h=To:Subject:From:Date:From;
	b=JdA67qR4rsHnHP+MTjYVmlwiq4cYRmmRQVvDXQ7HnrbWJnP+reRCbEHgcuwuKrJhA
	 wHa76727RSpcryqm/zxkFMpbb853q7cCuZQ/xbII1RDrRpQ3sN03g3+9NZiHVORqWI
	 Qh7gXfCiWNW/x3U9GWmECpBJn/XM+AusDNc1Y0wROWEhxp3KrWawGru8CoX3IsgwOy
	 CFkLiC3U3J3iqErPdZ1SCjZcdfm39ReN5ZgNdedUD1xKnR8b+2lN6WDsbi0rdbkGIJ
	 ETtsGIsnBoNy4qBERYX9oiAe9wiR25bQu+5U3yr4ZwiQS0NXxB+qgjIBAaOqwlYuto
	 2esahyhbFn5Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957101125851
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324689359.20448.1536084127827033748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75505ee169f9ed71a5f48315f4153771128ace43bfed2c6346116af797b16d1
Date: Wed, 11 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773246893
