Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0363595C
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759723794; cv=none; b=nUqg9+3mKI8Ot/ijTmb+FGlW83hd2OabSl8LmLd7J6ghGU9GTCcATlgsdmeyNVp5GdekZ4wfl+AltypIOLD2dY/O8XxIeGEe16mozsQ+S83e9pCvVSMHnrtnHufzNisqwchdpMfsnrlYvNMXiQx0GsO6M58zTtiyrz6RoQUG6j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759723794; c=relaxed/simple;
	bh=e5Q/q52+bbk/ge0k2oQaATBgq7JBQdRYiAIK1Mzox6M=;
	h=To:Subject:From:Message-Id:Date; b=hJt4NhhZmDFtYu/828MfVxUwcl6GOZZAbVr42lJIXDPVTfl/3TZy6RZ48FVA4CXTkhdhluP0t7KbZUko7YQokRewgLpRcvhlLj39CBM/yLioaRro2fXrV3W2fvReLBTvtRxKEm2Agvz1x7s/nRtYMzCZwOANaf7biPBCO5KlRI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQeV/I1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQeV/I1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3448C4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759723793;
	bh=e5Q/q52+bbk/ge0k2oQaATBgq7JBQdRYiAIK1Mzox6M=;
	h=To:Subject:From:Date:From;
	b=VQeV/I1Bm4Dye6BXz7wljUZyhHL48FpehWIdVNd8oC4dnvH4vspPnsNer7jkqGRmI
	 BXiTEj9C0tGBlE2f6XCTBE2nhiU6jOk7SlbbJH2HkAwxySB2LksN/HbSnzz8suMJBZ
	 oS2zVRfKOmQ+eW6WKxKS/rfJvzqtBYQ3K9ycVoOcgFRbDHkBEm6tOeClb5sIqrTsMm
	 nJpcsHYQJOgdfD3w4uesRPwFTtbl2si5LE4ValixH9LlHItaNhBte717x+Ov5lJsb8
	 FlfIXfVJ5mn9UEn6RLsl6QbfqaUYCyWl3KSypTCw9JdudpE4g4yQiGd0PVF+79/iH3
	 AGyPdU6uo/EOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB5CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972379357.14370.10419032084941907697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a56b05bc2f5cc37de66326e9c033d4751fbba107e99efe90416e4779bfa71a
Date: Mon, 06 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759723793
