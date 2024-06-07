Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64669E552
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717723043; cv=none; b=o04AV5GzIL5SZfMV3fQSjAGhyBbEMvFH93zhmaYq3OBQ/v0WFgfXLucAeF6dg0wmnG+H6QakVQUyNL4WWgEJ9XNnWA/pvPltSb5HRtZNdfRhX1x1NeUWMGcPa6WUaUy5PSh6zKwt8EKFPLt6Q6FXTe6AD70YZlxPnmzG1m1kjJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717723043; c=relaxed/simple;
	bh=Cx97Ib6tu1iOVDTxZq/5Izy/9TXx82fjjeXSkbrNolo=;
	h=To:Subject:From:Message-Id:Date; b=HNkhMYUc1rAE3cR4isA+7xVoINBh+eaCShFy3mEyFeFpMzx9EAp648y0IqZb7+upCr2NG5Vc1xu1+0jwDfqyABCMbI8uMBUtq9P8G3N/q01IK625ugsR4fxTke73rWdGiBMz53xR7bvoC37PPu0CGvP8ow9UpqMtLFAj3lCLliA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPFX+DWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPFX+DWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00761C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717723043;
	bh=Cx97Ib6tu1iOVDTxZq/5Izy/9TXx82fjjeXSkbrNolo=;
	h=To:Subject:From:Date:From;
	b=lPFX+DWd7TUk0AEDduQi0JCOergF/Mvpyrc9BoHV7cYQz8aLhLmUaOuTnBpDg8q9T
	 36128xWboZBpKEbsHZxtpXNkPNeuVy4ER7Hpskl/ujU+8Fh9UjRUxLTeexG6J6l9M6
	 CMIhx91MSfFlpd6E2p2vHmuR+UslOSWbPlH8LuOBaogSI6W1ztpt0fWygvDC7AbQef
	 iVwhCru5CbYRDqF3PSdsLCnRLIja6goKsdNBVLPqZZp8GqGgtWsAXzDPmP7RwP/fYI
	 zZgGJrcjWNjm/MHRIDv3xLroF4MJEXVjncWPa1LsYWAXQ81uwBUPAf7cTA2KfFETmS
	 D5+cQ/y423lJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD580C27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772304284.7816.13350498940090213090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27eb5f04afb5303e70d1cfdc90cd48e75ad211b9323184b54796ad9eac2acf56
Date: Fri, 07 Jun 2024 01:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717723042
