Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE94338F4A
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756735195; cv=none; b=Y8Kldt9pCTmNJF07wPZpc+VZXHj1z4EL1yuQ6ipGB5M0Q7PtLg/n5/ldOeBQILLgGkzAkmdM/gWsmSsUTydcBoFV826xxpEa9Zsmkd1sVEQ2A1nEY/iyb92mZ+d187WLt+B+5X3oloA6gWmNs2Kp5C3tI8Hm+3bDFsqCt+EDmpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756735195; c=relaxed/simple;
	bh=dtid0BZndebWCTITUp8Bu7RTp/xs3+6EncN85UcHeI0=;
	h=To:Subject:From:Message-Id:Date; b=LC/16vZEdB0i5oeaP8ZVXmna8ZZk5WYLkJp73DV2vTHiStXuziqtgHsOBCokoKjLI/s0pbuue8Y6nZ+ztHi2vroVt+1gnnjjfDqQ/5+ywnIUUCyMgDTKcqFYoL/v2u63pJzHNVENYsBtxAqXOMiwgpwbkxBgUfGqmQkaCHWEdvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHhOTxdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHhOTxdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF76C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756735193;
	bh=dtid0BZndebWCTITUp8Bu7RTp/xs3+6EncN85UcHeI0=;
	h=To:Subject:From:Date:From;
	b=EHhOTxdxKZ44VXokffd+nm/UuTy3fDxyrl5lrW8/yycd1k3Kpi7yT0IGoWGnvTA/u
	 YcrS7i4QkJZC+Gwt+d2pbIcK9yMfhWVhimui27FECBL4NSrGNZhHhm90CKgPBOLoXy
	 uYx3WgmNYbmZeGSdGRSuA80zEEGH0N4nV9suYmgInxTbDmnDqTAe6v3d9AP/k3TwMu
	 CTGYU47eZpdrYgUD9m8CZd4OF4SKIMi6y0PS9Ad8CFwD+mIHawjFbdLrtrq4UasqA9
	 kEU+5duZzoaBUyINJf26Asv1PBwHbcv5UbHBlMjCRyyopQG7g/jsIXB+8nXwEQNP+P
	 EJFzL6egT6ZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC80CA1000
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673519358.11536.16663448112907033692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac988728c271a6c4f6b49c6c0a510ca3d98fcc130d954ac9ab3d692e8c2c0d4
Date: Mon, 01 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756735193
