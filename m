Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592B839E19A
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776899254; cv=none; b=PxcBj4JNa8nPV0b9yn6KMbv7qnB2CyXsONY6Y9v9IYsOM75rt4oTt4lyxZBt5nA1iPjJTZ1naSK8vTCDWy1drVATqLynCGl6tc0tS/Jyk5Lzl5RwHH/L1QAExT1/B3ZCHUb9Z2Dy7egw5Cs90s17PqTqFcJm2shtx5mKP11+Nvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776899254; c=relaxed/simple;
	bh=RxIvfXevgdnuM2YfksLUn6xPyIk3LUvFPy3pyUQP32E=;
	h=To:Subject:From:Message-Id:Date; b=jCGS+5zcNc4I8yuTUf+yOWhtFxzMl9HS0fS6iL4Uojmpxu9FNR2Yrg5sm/G2RdAdhUqWjxoy4kXCiaf5c9jvh2nHJC3uFuKc9t6Gw/Ljq1xTi4XG38qUDAMvGM4FmSB0U0MKgHm2/tv/M2e2rXhmPOsBL3CDvo5XoRBRoU0zff4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIoPatvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIoPatvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF953C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776899253;
	bh=RxIvfXevgdnuM2YfksLUn6xPyIk3LUvFPy3pyUQP32E=;
	h=To:Subject:From:Date:From;
	b=rIoPatvEvbYMtVOxt97d/LIAlIlZsFoScoCGx0mfbbNURvb2sLKA/PzAarWlFBHQz
	 KWXaNN2yigH7T1ESUC8trCnPNFT3/uO4eCpj3OiWTlQ2srkDEw8/N8F805dtQVRlSZ
	 RxTmeXUQ28/zAcmSsRTv2R66e68Oq46KnaPnbVxf1eYyajyASuS0TDNv+l4Qv3i6Zj
	 GQms9kBSKtLYlq/+J6t97fgpvBvniMdqABqufJUxR96xY0W8Fl8pN+hH7mmrECCCk9
	 l3C5VD+6oaCtgnhtSvnWCEuBfmjWlmTPMD1J7NDSt7zTEQSK7w85NwewzKjE5/yRYP
	 ebugDK5BcCqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1710F9EDFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689925369.11340.4447635853127402363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd479439c6fd5673f0958c7f78f0dc0b7bad006cf8c7567d92777a68801d668
Date: Wed, 22 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776899253
