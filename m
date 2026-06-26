Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCB73290D8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782448054; cv=none; b=l34qzUHGt7urGH0R6YxY+QBzB7BrA/WDW863F4U8PaFho1egzJW9zdt1i1q3PPAlJLrP0WtLZZbleqxnZ6HQiiQodA2ewy/KTaBmfsvt0TVNru1LrneF20LDcwJow4eCwsa60YApLoNwRZ6ws0FcwuqcP1W2NNkpKNn1jlkZDks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782448054; c=relaxed/simple;
	bh=Lqo+Pu1D7WaWD28sMOBE87bdmWYqheELCvvVXzfYwqU=;
	h=To:Subject:From:Message-Id:Date; b=uIhH7FkfKd21PBIMqOssA7TUM2OBFD1iOmxX0Xb/vUF4b/BsmK1LRGmwNfT5q0VF6wBokwKw5gQza8GGLLv5mIR7swSdtlM9rTbO5VgEt1Wo4e9VKIRO5CUEseKxYPFG4TUsjWcyR1wQWbSiS1KTshBxCRf6XuDwpdXDoQhCTzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZdBUHUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZdBUHUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA90C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782448053;
	bh=Lqo+Pu1D7WaWD28sMOBE87bdmWYqheELCvvVXzfYwqU=;
	h=To:Subject:From:Date:From;
	b=DZdBUHUeICRweie8NnxEL8D+zvgE9p0WVnZ52yOtew1NOxyWDHSLcPfvsSyucNNmv
	 dX3Wr3DOHPdmZIgzLRixMZnJANWuoHX/jgkDjnglr8H4ZtnWN5p1Y/v3Oi9OKYHi4b
	 Mbr7lv416e4pUuj5uBqSpvtaBZ+rUj6UIAD9JO4vjQdfcJpuxTFQKHHm/JCvmBq7gj
	 H1UWTYyTPycEtR2Q562JCepjsksNm6PZNTtv4oOPaXWhKwOV9PWn9R0m3fP56mJazd
	 CSN2L4KGdUCZdyioezyR8Y6Cn4dp5YYyUWEdhx/WNtCArXyuliJ0uhedEsBBFkddfl
	 eoMt/NO2bO/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FDACDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244805369.29545.18110880091390829959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8321cba8549e40904aabbb72d906d3c3a8976731e33c478a66f61cfcb0c5ce64
Date: Fri, 26 Jun 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782448053
