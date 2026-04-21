Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352E2195811
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776739054; cv=none; b=cjM6r1e5yN0Hnl8EkD/sAMjoBbaVlLg6clIbf2kbHN9aZiX3tDmuZXDHEcd3QInHtGJwPnXOw3UJujHyNXc1KnAoFVV5uANkk5T90um5FvKaxmbKVZENmLJ1Ol9d2n8ehdu+xNTZpskjyrPcrgQwNBxHiGeNJ/OjSO6t69V2tPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776739054; c=relaxed/simple;
	bh=aDJVBCDrbDCT59kXKhZoV0w93ywiD/C9KmoOjxoSS8s=;
	h=To:Subject:From:Message-Id:Date; b=Fe9sztF/U8kUOfnI+LKiykycoHFbz6tfe4+TMmW1vVRVwKbc+Sx2jEyGmYCpLgME4q92EupDv4gfB2eEFCU5rum9SUntA5xaV37WhrcMC7ESkdO3NWXBLIxdgpJcAV/LIToXHBjFJAl4zj/Dy1Wif+I2A+Vl0EXOu3+dZMFP3qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCUrBqfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCUrBqfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9058C19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776739053;
	bh=aDJVBCDrbDCT59kXKhZoV0w93ywiD/C9KmoOjxoSS8s=;
	h=To:Subject:From:Date:From;
	b=bCUrBqfImB4zwnen1+hPuTzBP4lZUy28lD3mM5j0BTbq2yZw49p8SZbtI532ykRWI
	 bQ8uGn0MkW5LABIsF/pEVq9+3M/gpsmNFm5QSy6dFU5EwhWla9cGzQ1LkSWmUPXEO6
	 WLz4X4JCmfRm0nRLzWa8VtGaR523O3x+SESoit5fZU9FWbfSDy+jMOo4ou4s70e9Co
	 nn8LK8xBGAyyvhVC35q9SrVVTJyWdcJzqjML45zxFRAhcG0KpcWveV+xfoWMDIDk5k
	 AfKRWOiFBoi3+ssRHaPOHGviAteeDb3t/TTg2mPHSezNz46xSmAWhsmj60d0i79uL/
	 HaJs+Y6lgQFvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9181F5A8D7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673905368.19336.13268006994818270433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1c9b2887a146759c9b6e6c78a2ea1f3e5f32ec1fba00555c5f744ae1210ffb
Date: Tue, 21 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776739053
