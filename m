Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511C11AE84B
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724879155; cv=none; b=YSmHLD/kNzqldc7Tal+Rn/++2dUbeYkdITLlGoe5WgOH8VK/D3ywlo9u1MS/232gcpNKZFH1XIAh462+0REhiZdmcds7SBCp0SeR0eXx+OurHCxqxDeaY7BbLx0tQjHz4BrTp4MXGU6WLCV6AcVkQw+020iXUP5lHi5odSYhOfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724879155; c=relaxed/simple;
	bh=lh4sswzU4FPEJ5Z5GCowcaS/g3gdjO8+l4orKVReJVM=;
	h=To:Subject:From:Message-Id:Date; b=Nwu9gjdHqMmCmSvn5xC+UbWZeDb9MyLNGZb7BNydF6aSgZlaGoCPHz7eWFdNL8fcFOK8ztTB/96tnhtyRupLuWlmtF622vGRdaq9vkdqvXlPpt9lr2xk9zc70LbTB7Q+QwtL+0KkL8eKW3z62HFb2QfsERp3gQAKtv4a2x9IEjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArU+7YR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArU+7YR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44A2C4CEC1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724879154;
	bh=lh4sswzU4FPEJ5Z5GCowcaS/g3gdjO8+l4orKVReJVM=;
	h=To:Subject:From:Date:From;
	b=ArU+7YR+cHTMJYdfH4y2mumwghVHoLAZ+3bqduOtAyO/mr+bX08sBnFUtC+U7PLmI
	 EAufW6+WIZdelMpFwkg2RZ+0Is+z3NSpxQh5ZEuRP39q6aq5Htar/IyPhJm61hbQr3
	 oEW2QomevZ2smoMAYBZWeTYp6SvgeBCI8kFtuNKlL1E5dM1RU/+bw1OoiMANzFd8RB
	 PUbbFUuDGNRB8o3JyV+x07WbUvQjckucTqk8c2Ao+yGUyhYun87fpoFnf+Nx6VyxhG
	 XwqOUSdfAEAH+V5ncuqwm3T+NBAkiYV3BLd9cBwoBfN+MG0KEziCdqpv9XADwD3qsx
	 HyG5aF1y+4WcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9E1C71147
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487915363.11906.16188658467091070798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51878cdb05b5c6ae93198bc62c2f49e417a95a9628f574652cdf07e52d4303f1
Date: Wed, 28 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724879153
