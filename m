Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D1A6FA8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720382783; cv=none; b=Uelf/GpRaBepWLTLMTL80i6Hxl+HbBqzBn7QEPzX1govs4o1vbcujlM7U9yGQtZJ73XoSPRrbCVf0dx+z1yr9gJBzkBDLPyVQGpxMNzd2IPnrf5e+rZ+I4YKYCSkZ6m9v3st8rNvcgOMhBNtAPIh2QApmIAMFQHOVZA4YNI7Cxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720382783; c=relaxed/simple;
	bh=rJPJNR6PbSuMlp3IFi2Wm4SpSIFrYSm7PhxmvD94VoA=;
	h=To:Subject:From:Message-Id:Date; b=M8eQ3Zsl/iGs2xcvE0taBQFybGV2s14s2vO0H8VyiLX9PXDWxw4VTsmifaaPGg7kYhTbZokpM9xd1h2uM3p6Dlfk30fZmSCoS7fiWnLfX7c0NI35sKWg/iufBOZBg5bt9JHhoaAeaXLqKzgLdm9oHEGrKKOb87sbVjnFo0hwgQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEItWco9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEItWco9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1E8C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720382782;
	bh=rJPJNR6PbSuMlp3IFi2Wm4SpSIFrYSm7PhxmvD94VoA=;
	h=To:Subject:From:Date:From;
	b=pEItWco9nrR+o1koahgxnyGQCtlPcJAKGDhBEbcekIAlTefRtNjXxK0QKqOmSdPCr
	 HRrDkciKv4C5ch17+5IC6N3FYQI8ENBQIYB532SN3VKu6MgwPCIOoz+jGThWPC5u1O
	 hdOJo+n0dhL9Ykb9Y4sr5yhWE1dv6IZkIrKDWixn8YS88uMsbjFzvPgGUH+O+Nuy84
	 FvqW19e8lIt0T0UHUpaXLXUMu7cXaF1u7YfrwWBv+BhQMjhhzs26mnrHKEKDapkdG7
	 1tcIAsgv69ScKB6NToV9ju0bp9RE9Q1Mujb/XfsG27PFeh6agDtcI3b5tRuWdYp2w6
	 /twQddulwbDFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A7FC3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038278277.28285.10321408003404269560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7495f66e112dcc0a6df541b9b767701d4078803421937900408601fdc1475248
Date: Sun, 07 Jul 2024 20:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720382782
