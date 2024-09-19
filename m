Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B12579D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726787754; cv=none; b=mx71EOpHfqzVqt86i5IxPAxNRoAOwNP4zsOgxjg5niNj27sT9jkL1YYY2qzUyrIZAw91IrxV7HT4fYn3TUWy7jX2T2E2JQ//m8KH5I940o79x7cbcWFBCuSCUviJMKnB3T/nyQOsStWEYrbsIVc6ee/Rf67d2fz2EIYI85zj6wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726787754; c=relaxed/simple;
	bh=uUuwHPjwLMw8aMvHEGm17mGfOrW97oi6QfykBjzezKw=;
	h=To:Subject:From:Message-Id:Date; b=ZVFN/9raZ0pNA39iraqJJv9q6yBeZHVOm2mCJqhdg+qIbV5DEtIqCdQF8wGl+6TIEsmweGq5lZpE7r61DJ7Jh54ZeJ0lA21+Nazq/75/V/9IQBcG+s/R8oh+U+4zIDHItMmttFawfXf7TpdupHU3uZ/42CJd8MYZ077bbvmEYho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxmvRQt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxmvRQt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3011C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726787753;
	bh=uUuwHPjwLMw8aMvHEGm17mGfOrW97oi6QfykBjzezKw=;
	h=To:Subject:From:Date:From;
	b=dxmvRQt7GSYhWeORHMG4smspHni2s1WuxPTZjdQktpWxKoMQ7To15Kmg2c0L5o5oM
	 8Iipd9dWZpd9qip8FDdBvNe3+YnIFjQnwu04MlaX+5dAKQu1388yUilYQHYSJ2cmUh
	 7TapFeCJ0ZAOQW3ttMlDOODsGs0zyQewhtC+ojgAzgav2t0pfPHEgnCMfZOW1P8jET
	 pFD4GBK3lUWLnkXRw9sGFP6wbfCuOyM2+b2Cc82FUL0q+hkCpdSjE4bFyffDsp0P/t
	 k+y9mv3mIFMh5tOQpIGyMq7DfoYbxi39TcALPZYTRKdvX2G2ljPs8a+IhnRmr0MN+w
	 5BackmM+SUusw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0002CF3975
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678775359.471.17768827508634302951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4960a3ad8272783bf785e14401223f55aef7d150db0b1821d9d946cceadaaf
Date: Thu, 19 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726787753
