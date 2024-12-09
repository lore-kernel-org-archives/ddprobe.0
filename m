Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248F41DFF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733705154; cv=none; b=GVnpPJKn6UPFgowAQv3I8f8p8DxT4wFzGdkIoxkUPIeDaZeoMllB95lLvMkFDj5pw8NVlMDRMeHnxCsThmBW80mePCITJGXJSDPAJYRB6gm0o/IAKkQ0GLIfGR9eftdwIOLbFNAGMiLt3IGWOfY3Gj3tQULahVvwxpLvE3vLq3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733705154; c=relaxed/simple;
	bh=RLHVGMuSc3me5ksEHpeMghtSNpr81IeQn7C0FCnA/C4=;
	h=To:Subject:From:Message-Id:Date; b=pphTgx1WtdrcfHo9OYQ2A73D4bVz6pO74XX3A3hydWV0Dod00CJTWBi0bWnJuVpk+DsLHQ17IesjClvOvlZ4XI+YmELlnRj2+JYeD5B/i2SG6JBWK+ITbvrmEqclFYo/nw9HfMSjh0PkoIvnfUnVYvmBpzB02XgsYeNvLehtBQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGSk6QKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGSk6QKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A1C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733705153;
	bh=RLHVGMuSc3me5ksEHpeMghtSNpr81IeQn7C0FCnA/C4=;
	h=To:Subject:From:Date:From;
	b=pGSk6QKRcR4c4VDuEVpiS8di6qDCQl9fUYMJgZK/gh1qT56whsdBewDtRyjdZ5Se5
	 LnA+xaVRiiF65bRv4JPISjYc9ec8IoNe8cu56m+ZSM5FmhWKXw11RLk6y9USYXG9eB
	 4P8kWnKaglTOFzDXlNXjOeACtm0YE9+/SCKwue4KXMp9fjdN3C04zLGhL8ngWxapwu
	 fRbcM2pN/i7mx4e0R1dHw38vzqVXaVK8OVDXqzeW/fYFDYvm1QWZXVQbLXmYY+bb3g
	 wWcZNMB0Dz5mVkqz2Jw41jTXEPrTQnALfPm6dsLnyNVtSi9xTjQuW1MWqiu6GbZeDI
	 yLyXZz5t3OuhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E11E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173370515360.6956.1106880032403384597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023bce805373247be2d790bdd52bdd2044559dbce2fd12b02e34af8b0836e963
Date: Mon, 09 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733705153
