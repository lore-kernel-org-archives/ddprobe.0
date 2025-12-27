Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B393128AB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766851434; cv=none; b=jkJJ9i31Cbb7qY0zYogl7Jo/DfyzRJiU5yv2tTA65R4kN0rHAgJu/zfkla6mHgrvk1vEk9gNOHeyEcP6bC1w+5Xf3QUGwgXfl9+ayE5JUZlZfhLrgkSNBiwu3+C/CB19snWi+NXB5B1VD4uQsicDslL06Kg/FjJhshhc+VQ3x7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766851434; c=relaxed/simple;
	bh=OqcO/jJB/6DTGa9iZVzhpN/KbyPbYfhG0HWjsg2YMmc=;
	h=To:Subject:From:Message-Id:Date; b=SeVUSx3/9+k47yW4izX+N+aX/8IH7ChmvDfga96XUAyJHTam6XMb9ybo2sHYoqslsz8RTmXNAs3LL99DPM/2p8N/KWJMwao1M7fLVY5EoKiUN4qdzEi6zvc2ty3oj6rn5CoHwM0zqXvm0QgOHJclq0eY4tME6fUTgf4NagNp6GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfVGGD9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfVGGD9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0801C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766851433;
	bh=OqcO/jJB/6DTGa9iZVzhpN/KbyPbYfhG0HWjsg2YMmc=;
	h=To:Subject:From:Date:From;
	b=HfVGGD9n2xE5tJn5cbDMHe1v3UKisJqrek3tCAmx6tXzLOoPLWTyvMb3wPJtnSOA0
	 egXy4tvLOjMDGN08ChPi6oxwZugHu8yFj88PZxAfClG+RmT0kR/YDOdPXNl22a1TUz
	 u4jB8PWDBQo2ZZ0Joq8004Igk24KapepNANx+/nRwHbDpdEMMcBrOJ+4ofvd3oZgTZ
	 KFZFXs/QU2hXPsLXxNmG+Trxt71hv1brWsDZe7CjU7Kn+QRgW8DiqcvdUaV4EGYk6N
	 igXVIAWuj1pA5cJctqr2Fv8AeXAzugsHbFs5xAupf5HiohSh6nNCX1zGagyrsFW9yz
	 dNSOh6x9W3a8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C056E92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685143362.25082.17737007485745782901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40dfb630392ea1bf6b576d83e9f2b8d9bc22afdfd7d2d277793e5e4cefc7e004
Date: Sat, 27 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766851433
