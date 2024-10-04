Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BA339FEB
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728023154; cv=none; b=vDMH+i2Royo7aCf8I1cpKR4ZWpX+UOmRCWoNL9xHN6k30wlqOo4stTC4Cc5aWIYJgwQlxOJ5LZui9T3CxE2SYGcIgwBu2cJ+aknZtdD7YDX8nbB/SWoIt+9/tPyOzPlxvi0CMuWpOJ/goOF9we3cEPB2hJ+I3qDtmUH7fWJ7hAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728023154; c=relaxed/simple;
	bh=kGzLQeU0RQmt2FQu8biSzrmFMudqu30tP/I/mbFWlo0=;
	h=To:Subject:From:Message-Id:Date; b=LRnnk9cShHkdsSDsckQ/ctRIFzxpJQHvCgyYzrupKrHVFbUzaaxkuoqjZtMBzrif/ajlu/rhwBCUdewpg66irKyVI2sl8nrp78S8As3Lgw4FA8koAAnkuPGznviCdmVTDJJ9Wu++YAsFZZEh7/RVmVXwC+uW4A4l5slurQM6PgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9VpW2gT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9VpW2gT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67B7C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728023153;
	bh=kGzLQeU0RQmt2FQu8biSzrmFMudqu30tP/I/mbFWlo0=;
	h=To:Subject:From:Date:From;
	b=U9VpW2gTqO9+MWTEfNfSkDAmVxQYOQRT4peJ4ur+v45lOkKZOouP+DuUpe743pGl9
	 PXt9rIbfTypdsggYO3cY9psSCS7b5KXu2WVu6INw96B/vYVCaM0EaWQUDTz9b8FwBj
	 bHjZHruCuWd9YHNBx07zq1nL2t6C5hC00MHwbJhkRsOH4MCx3eYTNewJfceZRHyvi6
	 f1SylmL7Q92IgpK8vLfcgvNCoWR8xSTyl0gJ9IvsOkvXExkTTfZcvr4qyonkDD9fBN
	 xtnkw/DnAocuHgmR9a11b00f7CScjZzPijrA4Qpefnv2vxFRk3GSnRymSdAiOAdowN
	 VZ8fjk6Gp2D1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1010CFA74A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802315364.1866.14132129154872984779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9462613816a31e125b81e22c7c231de85e845fe9c90d0c888f0cb08faa5080
Date: Fri, 04 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728023153
