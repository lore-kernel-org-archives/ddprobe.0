Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87113B284
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752292794; cv=none; b=u4RXsA+YWupb2GbHLydcBHLR+0YrXmvIG3P7XW8+p/tetfeXsUIbjfdSKmsG/KPxn6OGIg6+gq/BRrOmX7/yTZX3nl/cLk3in+NmSRRfocETG8/txYi4SvtbDGuSkGjw0JOE5o0W2EgofQZNNAYpuN+UGagcVOv/E8ckwGoVoTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752292794; c=relaxed/simple;
	bh=vuflrnRXDSGt3iX6/lUOQcretvZw0miY8wB6GDZd8xM=;
	h=To:Subject:From:Message-Id:Date; b=H97+z/IMlraI+9VS35rzK0quRQt2Qg9AU6uHimEToXuHFg/ML+gIam+P/zEpB88Rz8bbmZn+5AVt59InpQVZIERXCP5MfTB9N5ir+bFRvXBNhBiSs3qb7f2kpYr0UQk37n3Gx+nT1a6PZez7YbLFNDJl7wPyBy9a0iecEu6T9M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPGOW7fR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPGOW7fR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B23C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752292793;
	bh=vuflrnRXDSGt3iX6/lUOQcretvZw0miY8wB6GDZd8xM=;
	h=To:Subject:From:Date:From;
	b=TPGOW7fRzqkGzzUKS9wDeku/ad+mdYpgTT1/JAmv7YRtBTDtkWNCEo8tlH6dtqxHI
	 PvjY13nc9k3KUH8nly3YH5ermX/tb6SS0hzRku9a/6JC0Yx/QBzi1Rhe38OZ/uvIUW
	 hnmaTPdbNsR2DoWOHf34Ke6z888gozYjiMOSej3ryUTyj2VsSGU3unWYx1JXnGyBV+
	 afIZoCZoYpuQUqMReZBJd1Cxu/gOpRCkQSxwHvOwxWvYn7s+Udq5ZMr4JHfsb+D7Pd
	 T3ryP5H5IX9JJsl9UvWiADA7bIORw7cUMCMFiTsXdTFvq6EXFnFHbfQJYqUiTUhz8l
	 br0AypjbGqq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C5C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229279357.18341.12148259679106200991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd21dac222ef202c65d45176a1a898e28da4085132b298b6c0f6aee0a1f512b
Date: Sat, 12 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752292793
