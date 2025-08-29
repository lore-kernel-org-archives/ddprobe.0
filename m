Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3452E31A55B
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756472995; cv=none; b=PfV/kW/3Wo4TU7sc7oTtzLNGMk4s9odUrcxajbXveeegzo34BYivX3/PHpxBAiiuI7XLAOwP0erdE0qS6fhsYz0XYYKaXh6g6dUgokmCLSD3MedQQ9bEbNB+URZO2AN4Aq9TEtwyORfu/VDI7XGTwrWXFt8tWtlF1UN6oDhR4oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756472995; c=relaxed/simple;
	bh=sedTSHNdf8yEQ+MKBAa194S/1zvsBJZGEz2TvxLUk3M=;
	h=To:Subject:From:Message-Id:Date; b=sbisz0DYoJ5Ue2Dqes6/BDRdpPorgwjAF2+aUWir9mv2h/+5ueCbBEnEjnQMhnbrgzlT91WDwEG5h7wLZ8lndGmC9X+WXbh2zeeHanya0ZSkTA3nGvnOll20l/QjQTddRj8Q0f6NEiHdm5wEMBgTjrwLZdpmJJxdZy6eodpGm/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAskaseH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAskaseH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EFFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756472993;
	bh=sedTSHNdf8yEQ+MKBAa194S/1zvsBJZGEz2TvxLUk3M=;
	h=To:Subject:From:Date:From;
	b=sAskaseHI/3vqp/opdolmedc8ICoUDo86MaePThhJngbggdSqm2NIQmPwi4xAyjvJ
	 Pw1CBtuzzNjqWlD3JqXixmf2AOKEQXM33DV8znZBkSTwLywiwWk5fopS/laWtdAXyw
	 OpPAFy7Yc2LYgafHNbDFnwTnz5ByLMfKMx5szpweWi0rEb/knSZj/YhxNITv9jKSwJ
	 F/dpDVnZNB3eP4X3cSa4j/+ZtqGeSHi0elUFiAtn42LWt/P7iLCtgBNQva0gGswZrk
	 Oqyx7d+qvX726wCMXSqWJtWosfgua3GR88uVMpdcDoLFXxrwpztzfwjASnHvEx31hN
	 0fmvz5a2iLmBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB2CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647299358.7285.3117904572466444596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6629266f8b5971903402d707db50cfea2c52e7f013b472d02fbf4bd5261bdad
Date: Fri, 29 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756472993
