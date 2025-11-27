Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2978619B5A3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764254574; cv=none; b=SgqFTXAN+DlFa6SMYr0qaqhxxAEljTmCa44WTbokjFADLiUKrDXCnxFHq0Svzz7YqE2E2uylamcW31nwpth7Y1wsCX+TzDuDIQd1tgPi5v3/6mPQahQfD374W8zxxqR7bz9H4h2AF/rlKbbHZFUPSbc5WvM8id7GvZW+qq1u66s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764254574; c=relaxed/simple;
	bh=1E9CHRSOzaIUE2NkRNfMqlb7BsPAYFh2KOgbk3OAc54=;
	h=To:Subject:From:Message-Id:Date; b=XZ9HBYVuxeDgrHqi5xm2qxc9+6fCyPx24MNSazhlyOa3wgY2tOOQOZBak97gx0btXroWOehd1WTBWEhHgyx6O7Q9pMPMlW74JXCc0E4LEnKVjwsGwtek5wLrmrddllL/KYeuEx4U8bArhD/4vQZK1J5250wu9WVQGkN7jRMaAkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c102lFlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c102lFlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF52C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764254573;
	bh=1E9CHRSOzaIUE2NkRNfMqlb7BsPAYFh2KOgbk3OAc54=;
	h=To:Subject:From:Date:From;
	b=c102lFlR+EugCU3tDE/EO3vWS9BjCg2MwUIHQ1D3hScc30ISaccYbdvM83BHsbbJu
	 G7bTaATC96JEnEcTdYzCt/La/XLnbAIZLvzdG8Gy4EF4l3QnL5lNBt2Mj/Jumjrfd7
	 Cz6aA6eFZJMS2aovC7DXUUupTuNfmswzyjXT1xUN8PdF6De/jeP405loZOS0gJVPQ3
	 IeK94Q4dTVNwCjfIjCKK9ZNZLRZE6i/J3fDg4lsGUszKvGbs+WAKjnfNbRquF6P0m+
	 zL61NyyNZe78SYbrSSvydqO7GWbx4XOXs5MQEkRSliHcRJQbRti5EzUYxBAX+zQaaV
	 0t3hcUmAdqj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97948CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425457361.25440.15620037151553073351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51de96c4f783c961e5e6128137630e987338db407d4091166d11c9a298b2f870
Date: Thu, 27 Nov 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764254573
