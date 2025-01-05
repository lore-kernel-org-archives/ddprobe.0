Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218611459E0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736113554; cv=none; b=ZxpDifdlqs1d53yBymXtm9s0+YUYiFQrog4vIfhJUCDwErozuSKIfPj6a7fONQBnpqBd/UXJHAUlMn2GHCCmQ1LhGcZSFxq0DoZBcm33YvNjMQjf54OFWDOn2SCYSgS4EDR45UNzX6QZwaySscb7uQI1pi8qFZeuSrZXXqnPsDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736113554; c=relaxed/simple;
	bh=xpnpaN0zYLJ73UN1eSENcrgdSdVO/gJKbG3LEQIsEuI=;
	h=To:Subject:From:Message-Id:Date; b=t9AzwxtYddetZqRtBSwr5WxRlJeEZngwBxrafDLwck76YXIFmNYZ0mOPw5fP/DonMeygGWmx49x/0LeHE4gZZu0CBcsp4fNh6bhn9xxArnY7qCISCC9fNq3OOP82lnaUIGs001/1aChf6OrVoyvmkbUeHwMysVtDMzZJr676adk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkYpWtTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkYpWtTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19DFC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736113553;
	bh=xpnpaN0zYLJ73UN1eSENcrgdSdVO/gJKbG3LEQIsEuI=;
	h=To:Subject:From:Date:From;
	b=OkYpWtTUjHW2FhPi8+ihSdy3GyjcIY7G6hzuK3pa7HT4ni9HVmZ8TtNEJUm99BIbS
	 AOfbAZYZPvsSCMOV5Icw6JlOqjgFLAX9DCPMGh/yoCFFZWfbUqChcWl64WdPUFIbPm
	 r+oiAmCjBSL39Vk/mw/UuhWYXFPM20/fW0ZHKXTgRUIyt3H0wu+PIqnmg1gn6A9nyf
	 VCfLZ3TWw9zQlsoeJ3deubxTYPYPvtDbCPfpBd2IVp+nyYZj+n+fzfjXmxriu9CakM
	 mPPAexqiNLh0O9RHtjP2LSjm0+S1pS22UxN7C3qpOKTCjMg4Jd3vnHfCm8smlHZiRH
	 LglIdcTx46OsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9526DE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611355358.3119.1900834317158659986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0f9addad7b6b03e5eebcb99e5fdc0b7130e0475b394ad0ea0e7902a3aeb34b
Date: Sun, 05 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736113553
