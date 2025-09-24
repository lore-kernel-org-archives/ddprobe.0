Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36940265CBD
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758741594; cv=none; b=qAJBpqvKS2i0ZmmbowaHnVpn66SAQAYDgqA2bl1I7C3agUjcICfXsi5myq8bJN8xfN576eUbGY55IXXdVor/haImuAMj4YI0rhTTIkWb3y8fsKzv837fYwMMQLhXxaEXKImctO7spgmHaZIX53YGosfcsoTh1xDqV7kEsl7qXj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758741594; c=relaxed/simple;
	bh=zu+SB8tJSklPOBLeYoQ/Y3Dj4QVruJjF0S6k1YYqMgo=;
	h=To:Subject:From:Message-Id:Date; b=LSgHfbcmbgSiJIc9KQuXi17M8gIPwbxrGxtukJsgDM5ZK7JmtJgqgAmt4UB8YAOPQUhP4ScTpA6qJMOX/b1BMnoJcsdiZ+BxpTJXdBexYq8WZw8RVAoz/9bKEWee6AgTwXPXe8Shs4PPbK1LOwCMoQsBgLiTlFYO6mkoCaDvLjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9NCweDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9NCweDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5F4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758741593;
	bh=zu+SB8tJSklPOBLeYoQ/Y3Dj4QVruJjF0S6k1YYqMgo=;
	h=To:Subject:From:Date:From;
	b=t9NCweDyEC7Q6yyuY7LJNdZwo9CJmPQHGmdmW4+hIIWaMrQluABXgrdw6BjASEVTg
	 5Ti98Jo6y29s+2bp6xBOh1+J37WN+6ntcZBvKPVwvSiQ3s/1ndwN5fpUaG/KgnIPsl
	 pM35mGZOw7xQRWwORUOLfDpx+jm+f2FZzDlC5X+sbp26sQbgvfsTwvM7GjFhAuOxUR
	 JEjVsmdcP+1gRvPLplBBsar8mgkzkVd1u8vkke0MLYthBmjsFzP4fF5pij9H5XYe7Q
	 UIhFSMU1EVzaEMUQbRz6o66NnuxZdnCFcrkN6JkRIdJDC2S2qzBkDeFZ1x7ibyIbWG
	 sT4Rao3j9h4vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95222CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874159360.18918.434961516304308490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2572bc233bd46e996aeac3243d4c3cf86a8dcd3ea5ebd4dca77113feeafcbd24
Date: Wed, 24 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758741593
