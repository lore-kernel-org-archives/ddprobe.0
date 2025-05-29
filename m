Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FFA78F34
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748537394; cv=none; b=Hhje9W/Ht1vfU64KhvhglMTieI1rAE7ilPG3+P+B1BdwW0siaOOkcaKfLGPsTsM9HaWT2hNvYapEQCdUY/wBJ64BaAVigUgc1HspvDkPeOcENcHmQfrn4vWtjHliSrwmome6rJOvRNsi/ExVTPS+IGijxj33J8rrHAeuRBn1pHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748537394; c=relaxed/simple;
	bh=Ftvf1y5+wmKFz5KcChTE1D1ncyhUuGH4qBT7zkxlmso=;
	h=To:Subject:From:Message-Id:Date; b=EZGcraCKwbxezDL4sYpXHm66KkZWLj+sJtl1Bwmc4LyRMzH9NVfMe1jDtnfLiJsk+VzmxjTl4Ys3AvWuslC/XuhN/8kPDb/kIoE3OTxOPQbeIP5vGS09UZL6L6G7OqTyNAehlNC6WSCoA6XdgcWai9IBJSqeGh2WN3ODkEY93/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlnUTflV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlnUTflV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A303EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748537393;
	bh=Ftvf1y5+wmKFz5KcChTE1D1ncyhUuGH4qBT7zkxlmso=;
	h=To:Subject:From:Date:From;
	b=qlnUTflVPYOKE5YwuJC9M4lcRsPg8Qk+iRMsWr8FET6k3pvLGkqFBzKdP4pX7Kcwi
	 9zz+j8VM6vdp6IMCx5Jf5U6fEYrZydwd695xtdBJM86HrCXPMRhTuiKJl4fTT4WboP
	 7bmyKJIMk8f/mVD8pM2ZzYvRjbwUjGP3bsesqmRrzU4T9utPI2o1MvHFIQtIkbqQ6S
	 yCxtVFLcoKqMF+tVh5h07kljMVCKo/3Raaw/uZqcmHE9cg+P8EDVIorvQV8ti6l3eM
	 IWUsbixNeHvlOgAWXE4RZbgIDvTNHfJ1cyG3k894gd4YKFBLL+SkkAm/45kX36KIY+
	 CZFHSrZ3s4x2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F699C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853739358.1774.10136811470634986754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6969cc138aa7b1f8b9a23995e6664d110c41736486db05dd7b0ff25edf61082f
Date: Thu, 29 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748537393
