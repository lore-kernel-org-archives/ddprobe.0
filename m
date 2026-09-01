Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4028931987D
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788265834; cv=none; b=o2rRxeqOSMyfa7g9gsn3QO76kRQWNXHUVF88CeBGoLBTU7gyQrYGSP7psZXgaDCGIRuZ7HaH8/sT99y9OCGVwSYAxQf9C9TvaZedTs4NUP2TBi3aIO4oYNPK4W0eGDS1RVeqdpXL+TdUjZTG3bigfFcqFw7mFpb2jjqfVrWQzIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788265834; c=relaxed/simple;
	bh=Xe9jcGx+gH6YzDlMKfmyM/wpL0Ckj7murar9aLlQLBc=;
	h=To:Subject:From:Message-Id:Date; b=Pccg9QgsGSRAIVDaw5Jld2bIp1gDyfAITj/ozQjDcj10zu6lMT0m15V0Fod0rFqYOA8Tgx3GGRgj5zOEI6b5db+CJRR0qPwhWFUFBWKnOuezhGusgFuNgK2r5gyM+/o0xbwMXL+Zj05bGx+rrAZsI3tkkSB93mUSsU7dOyp9EFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cE+6ywPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE+6ywPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8192C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788265833;
	bh=Xe9jcGx+gH6YzDlMKfmyM/wpL0Ckj7murar9aLlQLBc=;
	h=To:Subject:From:Date:From;
	b=cE+6ywPMzOK5HBAEeyxt/hhQr36eTTuboHdEsunHe20Wj8+Fsl5QmAj+nA+stSqdg
	 3UcoUUiagZJkiAadDlHd9vGv8RLumxUT97psJRZvxZmqyTEzRrMitis1QSBgIvAVKb
	 iEbvFp4TCbUTeV3F+DhL8lFVPyMcjWyGf4FfGmYZkJIELQDpZqIDFejWTgL97Iy7mE
	 kdQzZH/Mecm1bgwTEP8lrqabj1EpZpetX/OneIcsW3U6I99IF+oH6EmoOz8x8o6QMP
	 ga+os+Zc9TtcVnyZmOIsfAdvNzR2mnvdtUNYwyhgz112qZDPN+YPjTMp4ikKUL2G79
	 lD7LBEaGcnyRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ABDC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826583372.22774.16034667969893512241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abfbf47cd32a12d85d461f4e5e85553ba16d60257b87a8819d2c9ea786b7115
Date: Tue, 01 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788265833
