Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C620C308F35
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772161493; cv=none; b=nyHrEOh6rZf97mfaGIi34Qb/npeL+PAmRN/bidnAloq6EJUKecKGJcADWkv9/VOs8UuyOjPlrtXezdwgRYzDN9Od0rpLp+gscPNifLUPa5zXyo3RBuhPqE8rimMt3T7fIPisC3jV0Sh0LVMdGKa3ge7FqBu0Cky703LuLg11hJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772161493; c=relaxed/simple;
	bh=UtAghUZs7o5TJ8STMlVmw+INDHGB93ZKFKa12PFYAhQ=;
	h=To:Subject:From:Message-Id:Date; b=r2vg6jhg+CY2O1MnqRAZUhVWeZlq1YwHUnOXPAkl6AGkOfwOb4e9x1ljFsCRcSePSruPs+yRvzzaNAJS0qUGTScN33S8TgzhH/BnFh/pAoo6MRCAi14grXrTRnVDK/KmdZ7qDOltYfVL85HiE2z0xV4RP9zhaOTSdtJnh1HbwXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui6J18Ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui6J18Ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC89C19424
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772161493;
	bh=UtAghUZs7o5TJ8STMlVmw+INDHGB93ZKFKa12PFYAhQ=;
	h=To:Subject:From:Date:From;
	b=ui6J18EzPEItIKfEj6I3MkJ/LVwA6euW4wuVOHcz4YNx1RyPXN/W+fZJCgz/Penlf
	 vjvBSECcOml7o+LPR/2eUYxn6Dagu0DOg2At8fNFUmdqRUt53ss6IupD4iV0YkxsYn
	 QcXvFhITRH69izCShGF0d+xncGNbLA82w8m5bw7HSZ3PKG4JfBOWYMTw3JGSdPmHkb
	 M1NIs0cxAwM1rVdKzLc9gHORgPOb67fjnbTHDvjNsDrl0x3BtDz3uvJTErT/a4o6Yi
	 Yjw1pz3qjWTzVmbazHqRGchNyTnblqxfR9cqzAaSeSxJdRm0miD7ossMK0TfCzy66R
	 BPc9ZaJVXnC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C5BFD9E30
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216149359.16671.1014565600968330733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be391f00227b44987dac2ff9eab278fcaebcc7a22c8936da1d82f21e6f4358b
Date: Fri, 27 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772161493
