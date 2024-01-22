Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC43716439
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705909697; cv=none; b=Dk7sTNFZWh6RAWmFnMHvb/qaJrLo7n0kw2Foj+tYRpL4JcR2oAfqHlUKIcJkpr+LypNYOjlq/7kOuP2Ukib5FeudwjHsv4IspvGhLbpHPJeasiH2jS7MiE7GVeNT/V3nzMtNVAcrCpwLBJJY8VFGw6hGnLAqLhXLoszcwthdx+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705909697; c=relaxed/simple;
	bh=1nLk4qJBjbAtMN7+Lbp8Zj49Efy0bDR8sxQMiAbn8Zg=;
	h=To:Subject:From:Message-Id:Date; b=sMNzdV0QEg8TOVXixoS1dpTi8PXKHt7KGJinfu0PGqBuas5YMcqMAVOIcIAaJYimtLkoNpp/dkCID4+tlZnp3bVgt6/RybZWyWrvAjy1x+5c9ZYi3J0JzLIZGKGosUkq3/nnxsdGGCrB5b0NGzPeDdWb36NFOa/YoD7RCjr+SeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTm9sDA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTm9sDA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87781C43390
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705909696;
	bh=1nLk4qJBjbAtMN7+Lbp8Zj49Efy0bDR8sxQMiAbn8Zg=;
	h=To:Subject:From:Date:From;
	b=XTm9sDA6ydCO+6r7bAMKLQj7Av8iQ+PSc74287REnuo8f+o1AO16lRfAPxBTlGl2m
	 qRnSeI9Ntw7hissVOqvwBHlXVDQLm+yie/7soCTPXgg5eSMFjkw7TokK7TUkENtyJG
	 57MCFsDiA4q1OS7bTl3GtoilXH/1IXuHhpouLcdzhqTHV3obXnjiskNd3UCOhjGhop
	 oPiwLrZQIkVdpGNLzrhVrfVUIB9xdr6xZUQ6VnabsbPwCQT7tkWV+0KcpP+X3UEjd4
	 tfaKEVk2/pOGEUSzWFClkePof512E7gzQhO6IWQRNRj0Tl+GfR1mIVEVUpYzcQM73e
	 ylmIt3wmKgLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D8AC47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170590969640.11000.7315991817997195121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5125db5868d5b4ea0311952b87d2f6a77d0a9e9b1dfbd076282f5bf6f9c22b02
Date: Mon, 22 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705909696
