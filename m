Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2704422FE10
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752913194; cv=none; b=vBONhj/sIozoaoiDQmPXH1RHV1t3y2yYR/5fJvifT4+30aLlHMPP4dNtJlasfozRnivThB02fV93Oy9nuweND44pxmbWtxJiMsl9S9TD66zAlDiUi/1wgYdummUrmPgohHW3CPKtwI68zFIgQxZP9DtFcMF5fSAN++7mPGHTT5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752913194; c=relaxed/simple;
	bh=U4ZjOq1C7RQx/gnBrmKwVX9Q15MhAQj69rBtZn3+kmY=;
	h=To:Subject:From:Message-Id:Date; b=qL1LNjsix0vzXjLOnU3CIbwLs5WP+tG9G01bb5IPlM6YuEvWIyv94lhlbFA0Sr5SHpkvjyeCaPR/PY1B2UH5+TF5CDIy8TK2NeexPdT/bfNGe5Qc/HBwj3snkcoiNEJEOiRMnbIPO6YwvSVZz/z709CnPDs/fztqMuCc7KCzuNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPds5nts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPds5nts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A7DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752913193;
	bh=U4ZjOq1C7RQx/gnBrmKwVX9Q15MhAQj69rBtZn3+kmY=;
	h=To:Subject:From:Date:From;
	b=hPds5ntsAJ3OffP0oxPa/PeAmvlmdjfHooPBpp98EZGpSlGx3qi0xKxFIRZAsWdY6
	 yMsFT1HRAZEt6zk1IJcgIPAMU4H6pizAJxieo3H8Wm78gFfdnOgKXn6dR9wdZWVNVP
	 JWrSS/3sjRdIHfQQFQtqMq7rJQuV0491U/cz9ZmRvntvqPwLJmFS7/y3wLU1IPgrir
	 ICpuEHGICm9KfpuAICaKLQDn8ddwY7dLpL5djb7bKh+NTzDdb9qtVaT03HlUSdZBJa
	 BEKnxcqsNQKN0EN0CZwe3QZdwR27APZTUF/bEhJsFiPuF5lszo9+q2X5V3qcM5vcDt
	 QhjJM/VZg0uYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91681C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291319358.26747.14321218866529667452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c53536825d62f1eafeeefc5315a31ba7c16cd1b2ed93b3127100e2679dea2c
Date: Sat, 19 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752913193
