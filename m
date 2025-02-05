Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C902F46
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738724756; cv=none; b=riTHkVqd8LSJMzewyV0ZHE3bb4oUwKMLyqIQgUkFPQpHU+8rDytWvbJHvf/g2pDJvOwE/zrNw1EU09ucRm9eAJFs4WyxFEVNuz2SKlOta5tP80d+O7WhLb6XqR/WX/wJQKx3TUiJu9QuOHD2ABTBthKg3pCEOF8s3mqqoFvjM0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738724756; c=relaxed/simple;
	bh=JLjFoGCa62Z9/i9J4PI/PmlcslMIsYyVqPyZZW7CpBs=;
	h=To:Subject:From:Message-Id:Date; b=c+FzbpvGgu1S88LduG5b2Pwkm54ItzotTVXdBnhEvVn7+7wZTIsMrIT9fmtaHJGz7vsSGYxern8Q3M0iXJNxd8HhkqClpj+3GhjmuBhb+z9cwrN9jn1NFHKeZafk3hj28GuvRZIKt61TgVc/HT9zYIvyaA7gHWeJkZynYPeyT1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFUwzG6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFUwzG6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B765BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738724753;
	bh=JLjFoGCa62Z9/i9J4PI/PmlcslMIsYyVqPyZZW7CpBs=;
	h=To:Subject:From:Date:From;
	b=GFUwzG6bRuCWxd79+FTGOX6hoKs9pNvs3dznxHGoraJ3mkhjcWvoGLhgdi7A3wb6u
	 bo2AXTp9xcWzT6Jz4x0cx19ohRU0/FtQyYHT0+Q2qfZl0RNNUcVAq5HTVqCAC3knG3
	 vPxqwnMpfunepnwGxVcw6qb/kV7njJ0cUDT2Xqf9NULu2NcySfnREVrRhFEn2nSyBA
	 4U4gu1OX8gNF3j/536hNeSxwSrWea530eIJMQtpFlPJDy9Af9MYBf6MFxznTJdz9pD
	 0NP4Q7WeekyVF/14HiLI0h1flRg2F/MDINJJiXeM0reGME69DIeO/0gf0Uwyn6tCPM
	 b5c14Jlz67elQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B82C02193
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173872475362.2101.10010443180362051212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152e90d27eb09e4ba8561a3622675c3dafc7b11db6ed70a83a6c52056d9912ca
Date: Wed, 05 Feb 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738724753
