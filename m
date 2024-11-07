Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F4720CCD1
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730997354; cv=none; b=HD85iq1EaQfIwEYnfLZXZg4SbaU3N1ELZYNFLCbvVHTTVmPLIehQHPwixQ/+H7rB8LVeF3cjmQRQmspNuOBs7Cg2dyhjKjqtzpyhL4RJYKi7N93Pug3wlF2IZtoNkOsV1TshgxrrTWAqzEbBa/lqlVkVuFHszQcpLx5NWgKn+vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730997354; c=relaxed/simple;
	bh=bXfwN4aXYvVHEFmP4JClqtw5z4QOSEebiDTLc+iThvw=;
	h=To:Subject:From:Message-Id:Date; b=D0jKv6pJwQEXMv7R7pMEzpF4Kitf65SNpA3I4O/F8tJh31W7GrWUgsOiGbMLA4w945fzD8vBMFUVEVl8nNmexL09HfKlPLiHDEmH/0QTn/Yj5GZN3PqTvcfUPxXsRoHREJpiP1OJy63Y4maHst43dmL2heg451tOpkLY1Xufl0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQmjyB8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQmjyB8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEB8C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730997353;
	bh=bXfwN4aXYvVHEFmP4JClqtw5z4QOSEebiDTLc+iThvw=;
	h=To:Subject:From:Date:From;
	b=EQmjyB8qUvMAZ9z/E1yjbLfZbPLNtuQljpPgklMuCsmLE36KrfAoD02RgL4DEm29G
	 KDemoZpoZq2B2COhGYsFL2aYyRVLJt6DMmCy9ajuHol0IcMNXsX+1pcMFgT/1+sEH3
	 paEhK21ji5j2JoFXeITjMD8rBl49NhnG5BZBoLsyWETEpIUGLXe7hvrPzz8dAPmcfA
	 5X7q46ofCYuAErhYRyPb0DE/wpVqlbxzVZq7evv5NMwUjAz3Ol35QQABu0LFWZw0wd
	 dTmDtAChs8JR4Rg+ENU8J/sr67gZ+i9kk8vtK/49zhpJEUgYQrpdLUvuurfEAmqptk
	 MVMGNdd6LJA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B9ED4337C
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173099735361.25441.6329202990507835170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df60dccfd2b3a1a4f3acb68f12f176fa5cd9c3e87a88673a2ca3c90db5a3db99
Date: Thu, 07 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730997353
