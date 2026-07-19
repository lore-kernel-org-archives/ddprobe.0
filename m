Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3040439524E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784471914; cv=none; b=bQq8a+bPQdMRZHACLrb9nSMaUBYfHdcj1MciTOgcR9vhBm5+Ad9YqttUldk2liMxPDhMqSgJHzMwt4abwl8mMoGxeqCngBdcV96MSrwO+nYzRlJtA+H2g9ghpkK4scA/KrJ2hvPhyoIjO9jgfK8SBIo+1IkPYx84uF9FrnwAURo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784471914; c=relaxed/simple;
	bh=1FBCSuDTpiavAD921I3u3fhwHcYJ3zK/tFslKiZms2M=;
	h=To:Subject:From:Message-Id:Date; b=c91Ew8+geG7BcwqwIEQVEkH5WZZHkbY2/OqZcNPP5E+y456wY22tlEBKtmWsHGNBzsqw9riE28X6+FMbAC10BDLcGDsOuxSsUzXLP0R7HMPuQ7E550yf8IuSmemaoUYVEcheNHXJGM8Z4dHfrvKLEtEBWVQNL4Tuhrzw5h5RgdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYNjrvLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYNjrvLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42C5C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784471913;
	bh=1FBCSuDTpiavAD921I3u3fhwHcYJ3zK/tFslKiZms2M=;
	h=To:Subject:From:Date:From;
	b=DYNjrvLXAygS3Zf1Jb+k+1xChpOurvtdvU8nMwCg1XfVJu2/4Q/9jFC0zQVhU7dom
	 C3hVArz1JxZwTGTG6vdVVuv20qyk4qK+gPbiW+ZWViZNQOH72rBiK9CyDVWia+t9sf
	 Ki6ngsbse5BC3lOQax/GSHVnormFhD8pXAZ/8H9zMEM+0X8yfhSuCWD+CmSDkXnm5g
	 RrVJHudVAo2mrDkaFimWW+naWJ3tk9GUgAkt/3FmFxTxkFc1Ih4jQ2QXHKA07YZvSN
	 dfiG6fe5sJQtBD5+jhAGKnVtzylVPP1Szatnfkcqvk7VYtEhClkjoPY4Mokg/lhQtc
	 VhqXtvgjthj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04DBC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447191368.4585.10369873357090148258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7059d99cbfb23e1251a982e8f4f2db654b7cbb43cd6452ec526aa71d2776e2b1
Date: Sun, 19 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784471913
