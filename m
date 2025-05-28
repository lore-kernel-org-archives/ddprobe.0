Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0D413C816
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748405394; cv=none; b=Uq7LUYiULXzL7PcjSun/tNLyoWvPSEKNG+1agHA4kCNvwodEF7x4wX2Jng5Zy3kkFYMqnHs0YPryvmuGu/9L5hFeAWnHjVHnU3VGT55Z4QGG2CRf95zCSwUF4avSrPKl2Rwwnx/FgyfP0ZzoFFjX4/GfWAfNJzpuyGRAy3O98iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748405394; c=relaxed/simple;
	bh=qLwgcNoUXPqiOH2vkZl5deTzYigNTqLAoN05PiF5gmQ=;
	h=To:Subject:From:Message-Id:Date; b=pO7pEI6w/mb9swINek7k7zrify9XGkj8dhcggVir6dAfJYP4IZ55/70oVphcuqJW2JtUtaPUD43EXtJMVqUDEMg4wmgz4KYIfK8Ch2Sqw/chi5yFTCmQzZOsxPo9b3OWKrIb6Z7gcu+lXXf/g4wLwThbOjc28lHPSl1SDslmthM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BG97Gan/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BG97Gan/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9699C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748405393;
	bh=qLwgcNoUXPqiOH2vkZl5deTzYigNTqLAoN05PiF5gmQ=;
	h=To:Subject:From:Date:From;
	b=BG97Gan/KR3jGvTC3w0w0gmQC+QzGvjCP243ZznTyK+OQ9q5gQUzPYNLR5MMEBaKp
	 xMdojffrAXuUDji8pVKnUhJYm5oZJqgs3bnUXOX3lrFuOFpqYXss04/jwiURa+Rphb
	 9gARV4yc4D3UU9SU38VsfYOjGPalrF2wbhGkabq4fnVmbqMrXrgNjdaaxybcEjLH2K
	 HwqOnbRSxyuTuEYDOHRUQ5SPIIy5biQQRbS/7reMJ/gvf9ssxK9pqT7ByOf7mcOMlL
	 K6U8WLfo9vWP4TqfS3xrzJkCO8Qy3/BX8JDQSHA7cZPXF8Pqyol4h+nkqR22V278kz
	 mVHVV2EjMuGNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9756AC5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840539358.27928.13322393205952982110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ead52c79a5119cd23f1ac9f4f1b9386c89d7b020fb26c5ed98385c74ea3d5c
Date: Wed, 28 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748405393
