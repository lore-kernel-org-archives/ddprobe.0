Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582D41DF248
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782008794; cv=none; b=KN/EYbYEsNiI/gZeUHu8vToqmbZNefMswJbUdXH6VwadhLj//HKAApP9PzMCPz6hnHl3+EZaKQIIVgIgPUt5DStlh4L2xhfF7KqZXJKUbxeWU6BVeqgJPFe/F6ig6mRFfHioJuJ2zdjiwgSaAYgl0KevfocJauYLMaqWt50DaIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782008794; c=relaxed/simple;
	bh=rrQWe0rmPwqtJrEYTXmfwu/ix8orx6HnmK8nVYc5hkc=;
	h=To:Subject:From:Message-Id:Date; b=MpIDDvk8ImEfvGsg7dCs6YTqiVwCSjB4kiZxoGwzvoVVx2SAXAYSIapxcM99qupNJ1eqsVm3FMZqgPIqdhbpoUujjjK27Y13LIHvl+7wl2Stbmp7OTSNpSgednlbYAo/8U+NfMITGXxKYipHLdldiyqDaRpZpbs1k/sJQXkBNQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qt/5Wbzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qt/5Wbzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1BAC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782008793;
	bh=rrQWe0rmPwqtJrEYTXmfwu/ix8orx6HnmK8nVYc5hkc=;
	h=To:Subject:From:Date:From;
	b=qt/5WbzuR2iRhx+LkVpIuYxCM/xeB5ogRlcfrvKYlRr86FTWicN7gw5NRmN89VqaC
	 bJzmSMySA40kAtNaAbcFoAA4vDDqUsdj363m/4fVoM9hxMWz0PqxksIx/NJdME9SX2
	 GdsjQTpsFJ5PxYAjp87p4pQ6RgOMQIgPPJJrGeD60yhEx0V1z4KaWVlKYsh5wIi0Ry
	 WCmri5Y5P11WRWq1k2ZAMijsXMGja961Maq1LViORgF5zoh3VMoN+1iaB0PQ8AJspr
	 U17nmWV151b+QRv4oaCksrxunvvcs0Q9ljej30ZEp7smFEIBpne4ty7Ag5ro8g3yUj
	 7CjTbF6gL/fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3EACD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200879373.17403.1292158031923553922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf69dd98d7af949a1416cb69e1fb7c1db878fcf26b23abcca800e0bc0a61d2f8
Date: Sun, 21 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782008793
