Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4936B15E97
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726905354; cv=none; b=Wx/OVPL2GwWjLXFL8UkBZ/YrDyUn5f4zBjP/7pjA2xsiaIxCavxaK8N+wKC45ziC4/uzV+sCQTzPL+hnOR24o5bLW3CIJP/1LafAl4LjlfKU4WTqRmjHZI4+kvGCPNkStq88o82bg2YftyfDKlbxdN83+m8kfUbrME9Jzp5EofM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726905354; c=relaxed/simple;
	bh=k9l3wzoJrsXV810rYL99a7FQKgmRDg7FU31hYxGUgkM=;
	h=To:Subject:From:Message-Id:Date; b=CrM4vjgDmPf6e0qA/3SBhAL+iUZSZcbIwCdqVuNaHn7JTifg/rl7bMp2Zqtc6moNu5oNAZdq0nBD302h2B28EjDxRqF2CqEVJpZrL/lReO2FBwk26PclK1YYW/BNPgHofb6hldXNVt960AOA4Gcvo/bYdVO1lF28NWS7xZd8orU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqRHWguO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqRHWguO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB33C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726905353;
	bh=k9l3wzoJrsXV810rYL99a7FQKgmRDg7FU31hYxGUgkM=;
	h=To:Subject:From:Date:From;
	b=tqRHWguOk7vTvjhwaPNaEs440LBKMPtxDn7LReHNSH/MEi/KFPrOLWyDKoKWbmsYp
	 lZd0h0Es8Shj8GlW1Xd12JkU9cawry//CHv+djYoDBJ+PRXdpa40/GLRWhSUiWkuHx
	 Jo/VKEA2j4ExzBnuK6msG/gBaLoGDcx6UakFZcS9ZAoZc03yAfiMc+4gTt31m/sMRh
	 COiq25lgI/2pBpLOEinvdVqzF5uRlss9SEfvbl3NKjFZ4Lb0zTnaUGSTjaqJ5EyG43
	 ULrGHikh63MnSiGVV1rpbG6Zp08m7G6zuqYgDes2Ga4T9mqTABvwoohKiWZ+cKj4ex
	 5RfGomK9Naokg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D27ECF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172690535360.32464.14181609794406624206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1c88b00e5651d11ca135449677b8d1a1bb56e91245a0e60477e74a53f663af
Date: Sat, 21 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726905353
