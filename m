Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DEE1D9A5F
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766997834; cv=none; b=Oa3pXBGXd6TaVC3PCmI2qQalRQIREtKKguJ0nIuO/PQZeZL/wNMaD8Y8uR0Xf3ok00U9QjurgFKag+CrfEfSS0Qme9nspseJRMOZAAuWYHntGSvWMIt8AzHLTnbwuVCNvvY2MLrx+63RQ/vatm63JFMDz81YsHWRLM5N+yF0PRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766997834; c=relaxed/simple;
	bh=3EMbo5TvacZePy7vJEzL+Q18SQ4sG/1/+gstf3rXl1E=;
	h=To:Subject:From:Message-Id:Date; b=FNkKums5B+jyDSOl90kmPiRVVa6nsiVL3xwi1i8Fc26r2ftJ+PXxmbPJYFTX7n4qRA2Aq3YBXoweevr2SnsWdaWvIv+fNBFc4IjSjCNA/UKh0MBJgv/uQFyjneAD1r5NxDjw9CO/tKuvdyHBbspar9VQSGxzzWscc/JSGv23824=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcXawzdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcXawzdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766997833;
	bh=3EMbo5TvacZePy7vJEzL+Q18SQ4sG/1/+gstf3rXl1E=;
	h=To:Subject:From:Date:From;
	b=KcXawzdrtgVv8onjuFdMMt69qf1TiUm/sYeU1nKjucBzYazFctIldcMEVhk/EC160
	 bPoAmQVj2xV6EgMU8aRX/MwuwGMPL4Lcn1Spd3uFzeg6cC1WaFgpFmbcNOmmMUTYlE
	 08l75Pc/hzs2sJVyRbGX+2mLD4wKmFwnwpEozpfLbLeH3pjeKafIM/DggixsnpUpLw
	 RRoS8vn46xp1bJ4+nfutC/pDv48nTthqSKJhursXPT6jUX4dobChv8UnMW+9ysgPcV
	 moG7//bicK+r4/uuUAhqPB7dRBpv4VUEKtgPpmsmblsUQ80YIjqc926kLebHfRZPLv
	 uFodCD7RemJWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90837D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699783358.23914.4345703366327270437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9745848268dd42d73b243660cdd449bf9d9b774f80f97721652fbe3ea0ae27
Date: Mon, 29 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766997833
