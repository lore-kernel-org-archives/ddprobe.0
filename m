Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47831265CC2
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779376894; cv=none; b=gdl3PWhK3kSytRxtQy4j8lhE0QlIvEHxrfNKH+t3Drler+OirIVcsq689APfFtvqq1iRVTAG8DpqDv7b/YOAOlsyvHTF1iXJoYoIThnMaXWBxS6fo6j6Uc/DYTeJEdccnUCY3y+qjgTNJ3Yw/Hk+Uwd5YSW5qeJflSndr7fqRXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779376894; c=relaxed/simple;
	bh=rAOYJ06NOplUWw5yAb8NE6ylR999WOC8R2o4LjVrSgM=;
	h=To:Subject:From:Message-Id:Date; b=MZhjVxvBR55ckpAo/0afuKcAGr7xdBst81lv9qeZZZtJiDWKa8S969Y1fMXDwNnbd0uCNSeisJ98RV7IeMfld/JQBKJ7HqlfviVt7JT9G9rgLAsmhw68aFDWy4i8YRyPKZw3IJxcDIGKgMmvV6YM84FI8fvhqy9UWoR1+xSS96U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stHms4xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stHms4xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA24C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779376893;
	bh=rAOYJ06NOplUWw5yAb8NE6ylR999WOC8R2o4LjVrSgM=;
	h=To:Subject:From:Date:From;
	b=stHms4xj9jv84z2XRwFqlZkNYIOkgjVflwospENkRwtC45YZLstPj5EDhF4REVxZO
	 8zSKy1kWwaQwGyV8UlJked3mp2NdqrOMHumfhe3tP+c5XFGQsJrwQyhO/356KawkmE
	 7AOb5TodSI4/sw1FxYl9+Z2ObglIyxacV+KMQo0/9wbk223RcMk0/v6crRqekKbhf0
	 VtP+GRQChXBgJdh9lmWGTy5dTRig0OcjNhdV/bqSSnp9uW8JOHIIlyD8D5PPn8V5fv
	 tJgzCvPl6cuegYnbMM8vm/jggq3TLcigsGf3CL+kTvw0O1XfCuclj8hmSNWn7DHVEn
	 CNGwg7gzq39zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2322CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:21:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937689371.27692.17783280107368437288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1078c04a06f2ebb0c2a0c990e83cd263f34c7b31b886305a9d97f0a1f759f3e
Date: Thu, 21 May 2026 15:21:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779376893
