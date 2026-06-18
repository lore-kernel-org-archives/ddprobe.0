Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC9324E4A1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781810794; cv=none; b=WORigP+sYklRFTjy106WxfWI+Nk7DNYbFTTlDPjLQGWXshmqqGyj/2Hvl+60wwG8DisJ0xME5F86dNTLpn4wtbP8rR3dCqJ9voLTXkMUwalPF7p9ksENk5eNJ11aT/X++H/ZXGJsJ+vLrAR4OEgMEDiq49S0bHuT6xb20oCjKDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781810794; c=relaxed/simple;
	bh=a+GytTEaX6z4TIKnq52cdM5Ylq2hyWkbN8HwidvvpCs=;
	h=To:Subject:From:Message-Id:Date; b=PuR73LG8dHVdtKamcSK6brK8DuXxjgP1SFN4+qc9YrAqZQqKgZARcehx1xLpzdNBemSAH/Mm1ZE4OxPh6AGUqJNhYK9EXRyr3YSiaimVDE+E4Grvg8Oj63w77dRIzpIidHZ/f3x7HSHW75YxUeONhJljH7keHJWTXBLGT9IyRVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfMuDOcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfMuDOcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF01DC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781810793;
	bh=a+GytTEaX6z4TIKnq52cdM5Ylq2hyWkbN8HwidvvpCs=;
	h=To:Subject:From:Date:From;
	b=VfMuDOcn+g0ixWzpygzDEnPHg6KHu2G5RqpkJr7NbJkzYU+fpHY2uETKk063cHyeu
	 8foAmtOLL4CkZ9L0WQ6hRyHHr+FZOlPHSsR/0HpcofNHiQuu7QeifwuoNaClS0v6xk
	 1yjhWAdeISkPixuhsm1Tdh80WTYyCgSSmMrnARchhdEnIDDx8+2ViilAkqOfCATsLJ
	 96MRkjrUsVSaPd/ihMpTqUbnlT+Dk8lds8afKia+9ilzmObdtMByPUWsWRrEDkKAi5
	 REFFBhr2VtwSLxExy59yG36hdtsp51d6Y77wpjn9+MvY7RESLtkM/QgnFVh8kLBskU
	 LxdxTDjo2lg5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFDCCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181079369.23371.5534347095130372452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a048ee5e9bfc40c8858babfeb86be1399735f3487cde08e8a18ac92b4e31f5d2
Date: Thu, 18 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781810793
