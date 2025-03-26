Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169B35968
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743002394; cv=none; b=sgdKD8t9DiZmINDy4pgHTCX5lpGUpnSYpd6MR7c0DRhp95qv9wny8eIn5hjsXZ0q2syuRnYP1qs84w0kDhoMRKGOgH+4inVAFcZ0guxOd2LzY63GtouL9oeLwleSOQ8LlhHUPN6v3ytrdnlMOXdBw3P1gOIPQhhhkqlIEygO6xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743002394; c=relaxed/simple;
	bh=aGPLpTL6FrB/q5dLRb152zxIbMX/SVRQfIlrhZv+ubQ=;
	h=To:Subject:From:Message-Id:Date; b=t3b/cXQphKAsaWz7Xl1j1m/Sv83pZHypqy9NKaToq8O6P9DNN08zCDf+woQO+dmrAd7tQ0p53O5z5C6Kx/Q9bGcVMYOEQny2iArM83BJPe2DH3Z2bzg+oP4Y8aBcVwU0w3tf/0t/NhZvQkGd070UJmd9Zphs0NGA8uRJXfwPL0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncv32hUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncv32hUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88A3C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743002393;
	bh=aGPLpTL6FrB/q5dLRb152zxIbMX/SVRQfIlrhZv+ubQ=;
	h=To:Subject:From:Date:From;
	b=ncv32hUdF5teUTFp3TnYosrBcW+IBEmO9jOcbw2lLeKT4CXYwyjFT3meKSG9beWr4
	 b9l+HT5qmtvi9b9FnoN1VfLIH6UG9njZpC0OehvUizekKRFJEqi+GWCJOGrUfW4W82
	 J51pDvsaGUVaR4RrTyn6Li7XWT+RCkWulPL4nL/dhnXvVWJ2gSAmsUR+WX37ySdkRs
	 xqJp4vtDLKb6EJ67P/iOlhteKaB0DrpbRkhrwUv/lSBMJ6Hd3YdfvVBQTluAtSTn/g
	 mNW1V/li05DPRwtWA16ScYT7VNist+TxjwzFM/H6C4Kg6O04eMteAwniW44JZD/J3q
	 8W7ZAgb5uNM3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942BBC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300239359.7581.9116877256448900088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ef4cd6aaa27205da2a3951f7aee9ee23cae40d2809f262ac80e4133f8bd6a2
Date: Wed, 26 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743002393
