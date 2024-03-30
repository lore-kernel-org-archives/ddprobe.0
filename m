Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB60C197
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711759096; cv=none; b=IwdDVz+mSSVrpC4uw49OKaLQBIXMks9sTBlHs1IAn+VnwtJC/ODsmbUa4mRHX081Rwz13GHZIZ6QAt2XcpNmnp2YpWPp9YvFBw27XC17KmPSzRyLBa190spR1SLa9MyvW+WnBkU8LGkUFjoIhUoq/45aCxxnV9J736U8k10WLV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711759096; c=relaxed/simple;
	bh=BcN8aIR1Ga6SsU2Xywm6QHSxTfrrYsOueTMd1m5YCMo=;
	h=To:Subject:From:Message-Id:Date; b=UyecHK28GqyEVWnsB8LA8yLpXibsOyyDifqorOq64lOlM3RsOOvkV/8rhQwhYORUkLOnzkRNqcfMqiKF2oOlLW5t7g4rJ/bg6xcaf4cUCmjWjgMQPeM5jgjBRSFzRi7a6s4Hqu8Eu32uARhwERlSX6NQJDpK2fjSV2zAhmL8ENo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dG11lI/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dG11lI/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7397DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711759096;
	bh=BcN8aIR1Ga6SsU2Xywm6QHSxTfrrYsOueTMd1m5YCMo=;
	h=To:Subject:From:Date:From;
	b=dG11lI/v+EGKOl2YrwKlWVQp4Xsv9/kvyEXCoyoMptq6C6jUoqa2P/S8w9AtB+Xo8
	 HP8Abrqr2KXzvxbJib7s3HIOM5PiUqc4O4s7eTjY0A2YOkG1ftMPEDEi8VSRUBWPNp
	 BrlhkzPleE2sW0FvFaAPwubpfBuGnieL4Ky+GMquNUvrevySgyX9MBgN/HH3dS4QSn
	 /wH8867Qdhq6+kKvxiRpv7oUwBEhuqwLsdR9XlcKfvOLpr4rlArB2I9H/mRJGEKV0z
	 hYfZOtKD/7OYhDB9NF9Tx6gx1UnS1t7WE3OlYH2wNzr8VNs2q0oRDO9mk9V1AauaxB
	 IzqxrZjOW+wJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661F6C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171175909638.21353.8641468253415443861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8422b09821e0b05e5cb91a5e0c4428b94e9e426f13eedaa5e3e82af242f7b7c
Date: Sat, 30 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711759096
