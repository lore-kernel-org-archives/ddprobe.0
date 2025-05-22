Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2808B144304
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747882794; cv=none; b=NSgHpFHemNMfdRQt0BJg9bcv2O/QzP6BKqMmYNaUUCOrgkHYHjHqaTl41CZceZLsY3R/BzdkgxWbk7MsGYCQ31TdNV3vdM19snNZeB7+2azNqpE620ungEsFuROhYN+G5YwXThqkfzAb51rGMSlP++Knwg89f0QNC5zV8eieck8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747882794; c=relaxed/simple;
	bh=TWGnVH1ORufni/reP4Z4x2DUHa9TgiiG3ZcvrEXtvNk=;
	h=To:Subject:From:Message-Id:Date; b=pl5Lose1KYj5ZelMlRvLI13WN3Ubi8pVl7yZJ6H1hz69LgfN4zuFro4LcH725d0Mt43difbVnWpp7t8h3QTvvVOONFsN/6SLJo0oGAcZmob2SwKmo2SIFZ1dC3fqKxmjbxiw4WDg2dsCmperhFB75DAw+jOI+X6L1SyECZIJn7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjVi9Q/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjVi9Q/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDEEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747882793;
	bh=TWGnVH1ORufni/reP4Z4x2DUHa9TgiiG3ZcvrEXtvNk=;
	h=To:Subject:From:Date:From;
	b=WjVi9Q/wMotwzkDdy9b4sm0QUcm8resi7nQ8EFOrqxgdcPeRLEPd1zgHeSnvW4aVA
	 EFco0tykO+zqOQDKbdVxTcXDwFxPh+nTj6o9BFMfE2f8GfBOxJjQVm47XPye1OlE6X
	 EbkHUJF0Xf402rzko5hS80Pwyw3Dy7ktInva7yvjKJvnZQFTWX+dLfcIVo40+7hlXM
	 7hvjX8LW1D/fELbzt/2jLB8Y18YDZyqhYCmhFKE056WZG38mtK69ltlOf11ntqF75Q
	 PgoQcSDugArwE317n25tr6fpMCLD/qhF2gcm87Xfnsg2cur3gUwpeH8MjQIkP1Bj3q
	 6lyUsQO4bI6jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A9C54E71
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788279357.27729.3818516357172424341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4556bcc2444a46173f4962aaee097ebe15e5d74b0c001741d62de8af8f4c96
Date: Thu, 22 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747882793
