Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E71581F8
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753153194; cv=none; b=Pr39SNu8WnGTxhmpq9VC/47i8LuhhL8Iz+X9DhaETjSRZWuEeQW290aKoF8KdUg4N/XehFGoV1wkuqgvXSLeZQig+g5eLh4cxUJVo+qX1hwThwIISAL0qZIpBRcozziiY89/8fzvVuHuI3W7VDNxCBwPVgGj3cLzs+Mvx0x27kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753153194; c=relaxed/simple;
	bh=aVfgRqf85hWPgIOi1Ki5zx975EOIuR7TMPMbxPchWFk=;
	h=To:Subject:From:Message-Id:Date; b=eZSS2h/HssYJu7Bc+2FTiyW4SgniJ47vt9IWnMHdzhQ3GisW+pW7sogKs2nfU+QGSIrq2dvpJEfzZfkiKg8SAG4GbLVvvvuFTXqIRuMSl5VcUIkkOZFgKjUD7A1be/B1SoRlGanwHL2b46BFBkKeYQvxgX3gZGoNcSv2qK8qOPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESzdbLFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESzdbLFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD14C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753153193;
	bh=aVfgRqf85hWPgIOi1Ki5zx975EOIuR7TMPMbxPchWFk=;
	h=To:Subject:From:Date:From;
	b=ESzdbLFM0NH61pHsqGCt1uYQVV/N8d1RtENSC8vIb2Xe4EOvA8Y95u9LIOKQuKCyK
	 +XZfJAEkgY1E/5VQBBMS3qM7C76JHFlE/4rKbz/b/TSlXlqlhcM3Kx6Se95zv2ok0Q
	 rR0UdvCmkQi5GOQtnfjyXrSy1sKqwHxbU6PUpl+qupU0CnyNvuWEkTd7/hYcS8lzel
	 no9i41Oa7SquFhHN4tytzQh9KtzimwseBFUmFs3KPCzkYfzDH/cfsNKYzPKiYDkx0t
	 aqbGEEb2hvwDzUW+VenqQ0l42YdmoxUgt/raHZJtaVJVktLb66tnykw1W0XkykocKE
	 ym9N3p3UmDsJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F15C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315319358.18317.16863475926808969196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33852b8f108035b8804287413816d5c3bb156c956fca8dda1c718de5e198241
Date: Tue, 22 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753153193
