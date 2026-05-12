Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288E737DAA0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778601634; cv=none; b=O3cegx+pg2YppwATmAWT3giVICLXY6//X6j/nkQScdAqlqroFG4U2ooulcW8YQTGFa9sBW3fTW3k9vhZuAoCWRKAbtmXj4vhhOdUugWDGUw5GFqzRkTRqVyhja72M9SuPHdNf3zIXKZFtc4Q0JT5tTxJpgty6drWhz4O/StNLvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778601634; c=relaxed/simple;
	bh=dFjjiznmODrPqI+yk/+WBcUN+Qrl5Xmu25wRiO0/i10=;
	h=To:Subject:From:Message-Id:Date; b=f8PxUhYznW/+qZYNMcZxXdpj6rDgTRGTykJkJC4/L+qm6cw3e9Zv0fxy24YqIK674nZaOtnDCXEpKFFnheEKAWFqVfkBpmDEcvxVo56bjtnOmnwURtLxONiWeBrkgmXe4uIlzF+FCHpNGmwtJyr2s7rFMSLMUyeIvYOD4vMzoDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9StPWGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9StPWGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF94C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778601633;
	bh=dFjjiznmODrPqI+yk/+WBcUN+Qrl5Xmu25wRiO0/i10=;
	h=To:Subject:From:Date:From;
	b=W9StPWGFVMtz97Gr+tnTmvuL6rnpNqJzl9BP0wDjfwndNeDhlwMR6brrxCgjqrkxV
	 cPCgbHno2UJJ6UY9s+/Laot1yXCe8sPauhZdID0693z1wmrPUiZMNwbNhK01v80VTl
	 ecPWIcUAeto9BlEMjpWVgJ9uqzFaJd7cQzLxD2/VV/DdmjvJA9fVmqw+tanJ7USepd
	 wBNWY8Wcjhi0aU+hxzqWckW372m6L2mzBudi40dUnCEzht/ZknVuX77Yo3oN3i/Yr+
	 auSCFVOTDmniO0Fo14Ofj4+y6YBoVu+oDtGU0Sa5Fsdtik3ETn13as+QAUXpFJyn9z
	 gQdI/L0f+I1kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA665CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860163368.32259.9823163075968520682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8712031987cfe99f53f29fa64dd7613dc32f69e0f6ccddf74b412cc81e38789
Date: Tue, 12 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778601633
