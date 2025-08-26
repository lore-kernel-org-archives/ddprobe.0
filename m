Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F83299959
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756206594; cv=none; b=sL1p1fnPq1Du3C5PHs4W8KZSM6e+0VVPU6aj7fseNa6ysoopWFZr0FuLH2TmX0mj7kKsJc08eVmQWS669pewVprKxCpd2vqQtB6E//eIkxLG1OY4k2nj8wgNIvCC+ejCg33WnXtpM6lOyvDaLpQD25LzUejXblbAhZsNuRmZnxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756206594; c=relaxed/simple;
	bh=acnbzc3I3vkd4hIR9TP0bnfpxCJq0uZ3FpvRtgUUEHw=;
	h=To:Subject:From:Message-Id:Date; b=XrA8MHfjMbpcaunDaCbm/4Ek2K/UahG5vtJTa5slcVnfG1RqOH0ynaKyb67qyT+2KeA+ARCG0JxHjVZwX/yV1QwRmky5Gwj35CbfgyH5O7g0fp05Q0Yhejmz2q0xfdb4p8lUfwVQcBOl3ljpA2naAE9cZK5ZLMEvSeB31jAfkAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0bg2vf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0bg2vf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A213BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756206593;
	bh=acnbzc3I3vkd4hIR9TP0bnfpxCJq0uZ3FpvRtgUUEHw=;
	h=To:Subject:From:Date:From;
	b=H0bg2vf5J4LHCiyUde9+zhsJOweL6v53cAIeCMB5kpnMtRNOqXSMr3VCXrPdrUmix
	 Kv9fQpM5OMGZRx3yhffuG2RYgKNsvviodIwUxxNcLCzBtG/+iP87FvY/U9mNo8g2zH
	 JLlxv1sqaymDLO6BUYTHvbnGByu+e08qY8NqWPyyiWhHSPr3QTk2X1TgiOX4KTLWIz
	 y2lDNakt5Xf6hxLsaKQ3+Zf6jKqf/eSAcjdzikWaWla/XTFfhbpy2tdndy0zC9WGrD
	 VKedrwpLPPxCXgHzuaNzhdFnMO46kNqVz22H3F7xwfCYr8InZgG+qJMigkAe4cV0Z1
	 xe4Sv0vCOGuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FBCA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620659357.20732.1606941544478056559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5381745a2e084757c2062a1ebad66e4aafae879f05ad3390681fc5e034abe7cd
Date: Tue, 26 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756206593
