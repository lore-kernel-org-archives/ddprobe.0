Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EAE5647F
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727345754; cv=none; b=L3Q3ot0J3EncY/+LshYLMvGj+4yCBsG/ZfeKRazByVSlYbvrJgezbdGGS0IKtm7o2JCVMgQbWdMn+cRXLO6YGcfdpUqxLCfiOmsmFIm9noXpbAljTqnDMm5qpAOebXpsFVBl1+My7PeuqEln1nUGePRO9TtX+NHn4512/Pp35zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727345754; c=relaxed/simple;
	bh=sEm8W1LChyxFPpMbMFVGMl/WGAcEmTC2EBNC7hLakTM=;
	h=To:Subject:From:Message-Id:Date; b=JmOuIEA5ufm03rGmhcIsCDfoKc7kt0iOAR/VwRr08ZLsKoy+2+s4FnfG2ZcTXI12n8jQR4aCcZi2qRXHmICzkXV4E8B1hwtvxUDxex7jkP1mcOdo1Z+zgDs3NmIYRA1ixQ4/KqOpHWLS6k5uOTV4qVigdyqZulFJMq9x7QLKSDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBNddXda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBNddXda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0879C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727345753;
	bh=sEm8W1LChyxFPpMbMFVGMl/WGAcEmTC2EBNC7hLakTM=;
	h=To:Subject:From:Date:From;
	b=jBNddXdaFuR3w8y4KFeikvU5JmF1qZDojyClJ+X/bC/tt7bGvPNpyKIO6lKPAlb9n
	 MK76DclwSatwHXziY0oEkUidF0nq6FvckvJxuc58TwSkStbN6uyoJDjIs/DtoFf/9z
	 z++yetrQoRwH/j/22jKvwFN4X6frzYuROoaoULmhwXPK5uOdfXEFKdjUQP68qOQsAA
	 e+lVnC13B4uHTEB4hkZzQX1EymNFrci/sqeyoWKNKx0lyBLI/M9R0gT2oA8rVOqU7D
	 HikELh/OzCK3yYhvI/rr3AP0hCZGDlYXzg+Pi4pQEPOBQlcdkYYBj+rEqHPXe7Zwwg
	 THuceiLQW5LoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76CCCFA13
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734575358.31728.3623062176802109425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50d5a78bd02f7085dc6a42b4dc7873268e1a05d114a6e1a788818e630c93db1
Date: Thu, 26 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727345753
