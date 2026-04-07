Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AFF1A9F86
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775602534; cv=none; b=KzDzkpZkR0bnGmNTCVEpi0EVHX29X+1BzVUflWh7xiTPcLS3p74m95FPK97cwp/nJaw8MiKnQt3kITm3kgpuFyvAh1KroPlaofAhxCyCSfJQNbRjFVL2Zlq8eErPnTvSmoQAb4W+2NrO+wGEtonu/bmQ+Y2MYqn3KCy6+dVWGJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775602534; c=relaxed/simple;
	bh=ad5G4PPpacFE/VhszWOsXZWLIgOCs8QroBU3KlZMZOM=;
	h=To:Subject:From:Message-Id:Date; b=q/DmmSrEw8vpXYP03g9rQqJBqjyPTM9xKkKHcKRjoZJKXD/RpVK2DiZpQOgbRz+a1dMYlcyUWG11j3SBqASpAeiOGthyYMW9BQLG/CuqEi0kx1dYNPOA4Bt2CU/rdULbSaoSmEy7BqD5+DoHJXmQ9gVtWybrovCac4udDDnYYXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdfAdiWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdfAdiWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA2CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775602534;
	bh=ad5G4PPpacFE/VhszWOsXZWLIgOCs8QroBU3KlZMZOM=;
	h=To:Subject:From:Date:From;
	b=fdfAdiWVl448dDn/ITA4yHvpCciJYIvTvB0AdWXO8dpQtnXmmJPQ9Gtmo2ysyuNUK
	 Jx3DUhmTBZtqUbvOFkXEbNCfOy00OyoZimLkWT6dKBnC6eBqDH+Z7fXd/cLNHBLbJ6
	 k7zCuDmI/A5wE1j63ICJqEYhbcRJhZpqcdzRyPRYdIH534IGe/AoeppIhWoEzUvPlu
	 pIhaKwaTy64EbhuGbanHSrqvrmfz92DlmZqhUF2nqht16Wqda7k5DHWGa/Y4+txdZg
	 +QlhVdspCYBW4tp+Dk7WPl8frQrCfpKkhJEYh4TmC4kTCLr6sfFrN8pLXHU2ZecsTI
	 Qns8NeYWL9Sag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C634F105D98A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560253376.13841.10782293628705340191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840c3ae87d0971d54aa614956b7e0020da2bd1900909bfdec4dd1c2c6d7624f2
Date: Tue, 07 Apr 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775602533
