Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221BE1A317D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766674434; cv=none; b=LXBAOJYQ4pYM9Lt8CH9UZyUiOqRGxvzte1PdHbfwvDzMcYo/M7bRyoeHV+aeQz/gsR6TM9o/HWOYrixSGAmojNJLwkR1nryTKQfw6sGjxLnaJXbhcf9SJfCCRQO4TU91FjnEFrYZnLdpoVAd0oBH8RhyVhD/ds9Z7bD/6ytFFh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766674434; c=relaxed/simple;
	bh=2U8edbjP5+G2EZ5tYxteAbFlCH2OThhZx3mRBca+4O0=;
	h=To:Subject:From:Message-Id:Date; b=NW7UAXf4eCiRROst9krgxjuFhw2AYA7KPdb48qsn1lhkwMjYVosXLidp8vSC/McH2c3NepKjcI/qH4Ovzd9bekwmojer99h+eyPtBR5L1k8qZMjBleWt4rNfJnyK5UrbrD5SBdQkSPNx66c9RltvsV7pyFcz7oQi0Kl9hhWJjsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYK5VzvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYK5VzvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA79BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766674433;
	bh=2U8edbjP5+G2EZ5tYxteAbFlCH2OThhZx3mRBca+4O0=;
	h=To:Subject:From:Date:From;
	b=FYK5VzvM1HacD4HakIcOBx9e3S7NdhOp3OceWUXhPEdFWjcWQsExIkBAzeAMVKPbv
	 tWdJuF+HQ1wOUHs8zOHuAEL9vWSPzxfUp+1gKw59O5X0SJvQrajzq6s0b9BgVlrKXV
	 EdKUhselotAp8ATos/R7Cd4XeQfgwML6eo9SYamGz+FxOq4Wh2w7F2Y/2tM2NX9Gah
	 mo8PmtGgfkY81WOOPPYOPoPVrt6neKkeWijMstXw7PezCh5FlDynBbDv+qWtX9xZWB
	 mPZq63GoxyZ8o+AkMkr2NuHNY3odXsPwdLVFYSGu4vNBy65T39FpJplSz8UE2CKEPe
	 Rg8cNKPu3CeuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98308E7AD5E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667443358.8336.2993453883409504555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bb1278689e757f3e31e1a3d3bf4a3c1e5323585cd47d15882a913f7e74c46d
Date: Thu, 25 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766674433
