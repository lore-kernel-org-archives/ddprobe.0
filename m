Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519B131F9A6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787541034; cv=none; b=rPjmSv7iJM32Ud8Ie0kEUleimpBeaICCmRsnfJO/fodexJz1Uz/zk/Yhz62Bz5HGLIOGw7aakueqVgT+0t/q+L3w7GAyyxQLafMRHLjargaJyvfDOCtAnIUiLZL5P9uhEITjTbfAaiOtr42emgo9JrPZOzOwCPNF3Z/efJjJ/kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787541034; c=relaxed/simple;
	bh=9L9kxeqKZ9u8NBxFzECHdX+0d0YTVlKX7JSdAGQNdgA=;
	h=To:Subject:From:Message-Id:Date; b=SYFO14424Q1NlfTpgrJ0IPyLl6PBpm9Fc+AWQL3bJ/iaJDYyM/6608mAMenOPZ5VceY2JNNsb5787a4DurM2Rrq198n0Wdh5CTk2vgqBUxtJxFOQJENRu1HkFCrRCZQe3CwKvFVKLwnsIPQjKaz42AKYzzZXDemrYXaDs/u3qzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qgwlsije; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qgwlsije"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10FAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787541033;
	bh=9L9kxeqKZ9u8NBxFzECHdX+0d0YTVlKX7JSdAGQNdgA=;
	h=To:Subject:From:Date:From;
	b=QgwlsijefUrNghujefmBjAp+g59OKSPrh0XIGZuPhylifh9JlfOsLXOzXDaQiWiYd
	 pvvT1N6bOZ86djFBVfT5yI+ACqW0sr497z4JdYGTavFc+77c/OWa6Ouw8HdHj7XSRm
	 KSVNf+f0BLUeff4CFO81gnDVVflEcew1pvbznA38qLRaSrfrjbfPY4dWt9BDo135tg
	 eVmPCebQaeqjvFwN682Rhd/nEUPqGHmJokgwZiuvBj70+odhVWfaU0jTupcETrY5rE
	 oIw9ndWfusLkQ8VKIbTEqT5Fdm5LK6vLj/iyMCa9mrOwjs7Bubzb6fwdFSIq/lvJS8
	 TLVVKd0ZjnFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC50C5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754103368.14684.4559223404633742218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8660b2074c186823edcdf2f8f9f9b62e5bafd65fb3bd2a91ea93e1938832df51
Date: Mon, 24 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787541033
