Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388452F39AB
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782285394; cv=none; b=iB+vlEu741qXajfVh7k2fBepGDbBWWNsnF1in1P+1OZu9JMKvWYM9FJiMOgx66j9g5D9vEsXkqD6sCdtaXTtKIqq8rPrUyQY1ILuZMDtXoXo/15OCXtDvWIovhrIT3o9Vd8GVBwX8ZIFTBbYsspqBvjkoV4rLht+9gmVL7/BFvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782285394; c=relaxed/simple;
	bh=qMGs7klT/7kjutuWTXouNNZy9tu5lOS+YvFihMlWjbc=;
	h=To:Subject:From:Message-Id:Date; b=GS9SSxKkNSpQpJPeQHBz3ssu97rJdn0o5bKr61GPs56k2TI5Ir33miyiLcl4u7YjIGSoZL5XqK1IRVzorEWqz1FZr2bwkc7s5AHXQeMHkQSbcW8bs3SCqHmlpOozvtO8O7WvlfblXQWY3Xktjc4cjnvfFsZFAKKkRiqFn1QS/vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As+60diu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As+60diu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3481C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782285393;
	bh=qMGs7klT/7kjutuWTXouNNZy9tu5lOS+YvFihMlWjbc=;
	h=To:Subject:From:Date:From;
	b=As+60diusJ5ll6ghBj+nciTtqi6480JFegyLRnnPzu8F/ewpohHpH/QnD2xTHEDaN
	 Az20nYI11TI31hycpeeCCB5SzWkQmMD6eZChwYx5MAv+aBXzuvP6n/5VEqZJ1vj69P
	 IjhnvfmDIfJdpnPqw/xuhP9po28i+lA4nxJKjC6RItwV7LYyo1dLPDAHBBjDLvrTA6
	 DMzg4sUPHGS+g18UIWDUL0e12CxFjwGBisFAohB0YI7AovsaI9ExKVT7ajyHEZ0blu
	 DrMx9Qn8mYQGDg0LFb7otTwFVGEd/A3RLXMoRUS3R3BsPADGx4rvxFjfKvLJZaf/RI
	 6g2qyCo34XC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA6FCDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228539370.18178.16075528731399296066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba2d8f2dc5e6e7cf0b50761988eefe58ca4bd71dfbb491701f4abe6b9c8c5a0
Date: Wed, 24 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782285393
