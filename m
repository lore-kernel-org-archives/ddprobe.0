Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F8A277035
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776490654; cv=none; b=LkY28+t5Ue8Y7Cdgtq3TTaBEtZbhfRhPmCejsLDgOXgTUbcQKHwM73VPSB3pXgY7LH19sb0UAUXnmF4lZ2iXv9tVoWxsUBMR3ncvVlWaKwKn0RUowOoibpDpKFzZ1Cq/IoZDoGuRQOA1tfNtocPelwpsgZO0Q6BOG43+SPbWE4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776490654; c=relaxed/simple;
	bh=spTJ1+bXmw73g66wJd4wHC1mFuvrUmTkktXSp1FckaY=;
	h=To:Subject:From:Message-Id:Date; b=RlceAT799xWPcyD7J/tj+DIRpVZs98Ys5bjLuA2s7z9PAP6tRk2E/d/umArboXqfuATxZ1YZw+azzgHi2KrWVkt1xn4CsYuRyaWkpsB+eRF0A8PMA9/IAmxuFFL7FclwK98zBo9InXkuNpnsAyF3hSRMuGg36hGwT801dj1e/XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqKtxgQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqKtxgQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C086EC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776490653;
	bh=spTJ1+bXmw73g66wJd4wHC1mFuvrUmTkktXSp1FckaY=;
	h=To:Subject:From:Date:From;
	b=QqKtxgQZN2GG0CMwKiPQMWgxGAkOdMSeAFAaMiJ43kk8U1qSJe/nGP+cd2De9y1vL
	 TfcjLzR4C5Mpo8xxHZaVg6OyT+7PleSsFiyLDxYpodljOPv2+hsucdaE2BzRTUrfeT
	 aG9RBXCsvx3npGhr42BhF8cuB6qxA2/muFj5hBfzGX8+NxOBgA7y4QXZ8NGOgNQ5eg
	 RrCKeUnh6eg1b95I3dm4soaWBkQBfURQSZq/TqHbnWFEMoWh9fWuokhTH3qIiBR+4b
	 zxg2jtrsR5zHbtn/5QgXGeYoymj85LK141dlUv8LWm4UApSOPPvjb7UcXsRUSo946v
	 nnVrS8QIKPfYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC81AF436B1
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649065368.10087.11369976092585488705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8604659a94e85881dceb22d384ecf9843a8518a635dafa249c1abc751692ccbc
Date: Sat, 18 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776490653
