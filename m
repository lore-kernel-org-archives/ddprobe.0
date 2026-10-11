Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BE5315D49
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791742234; cv=none; b=MjqPMBgNVHAFdJe/PFggrkvHBSZ/+NPfaroDy0jjo1UnxUrPOkjOKaYoWsLRA75CQaDlXDTILvCqQpnMJFHpfohXJawIGp2zl+moblesDkP/JbMg6fYCfvahBBr3bMFDl84a47hUI12v4pZ0yxAmoCUjRwjoDldVutZ8t9QCbfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791742234; c=relaxed/simple;
	bh=Djuthf9dpLS3eVXG69NGIQES7pdgs4wvxInIqC5HWjw=;
	h=To:Subject:From:Message-Id:Date; b=PnHs6FPj8LuqWvNL8KkRSr2PbPlGgv3NZQeH1DDHPddRTG8MULkbH5fHoiLoECTHgNDriBo3bG673A5EPOO0tDF9qnqYEdC3bUWeJxIOB1x7mycmk6sBkQ4dXWHKPNvmG6vFE1Xj5bWqU/7bQSv0+tXCn0PG2Ool7Li+nkW7oGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEMuEAzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEMuEAzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46A4C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791742233;
	bh=Djuthf9dpLS3eVXG69NGIQES7pdgs4wvxInIqC5HWjw=;
	h=To:Subject:From:Date:From;
	b=pEMuEAzfSQYMwjIpbb20bWa0fYqIQEO8l1rQirX73ka0eX8xbMvvL32+VZupIspuw
	 /637eLMbmhnmXUkV+ZT5TUowx2oFvdJ8ojLLfIxdX2fvLICsLDbh77J3fexzvNiKFL
	 0EQGuG0nbB3CK8OptSw4liAzYW4Mif2V1tIC/2wqxGBdgGurgsh3UxJio1RRNFNi1w
	 xFQe+plqOgjrmQ5+q0oZBi3jquyGioeiGzo/qMElwkre2GKAxGMRPvFAsMtyl5Hkb5
	 /afgSgjzTaqzDuaqelrD48KShzw0Km97vOfiEIry8fXubkpYWzx+xConm5T809iKGn
	 AM0t8HKIWQ8dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FDFCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174223369.18096.16285022953146601030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3765010875021944ba9596fb6a345cd75bd8998b23a804ba58224b39215bcee0
Date: Sun, 11 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791742233
