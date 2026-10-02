Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EC0230BE9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790974834; cv=none; b=NUMxUIqD0O5VSPjwOR1evKpWzxo0msruuXY5Dx50Srubd84bd6EPOyeIo77Q223fSxjg3CvK7yaipiCSxUGU63VBRxh7FUyDivDnfGapoJn3CqdsDYJ4R9RFStETgEFf1/qdg9aAytcrIyyvcjeVBnKSlZ6rdomsyLIi3NlLzyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790974834; c=relaxed/simple;
	bh=CCdhdqmfcgu3GPk+MLcZcWXzinGZv8Cc/c1ezg8lfuM=;
	h=To:Subject:From:Message-Id:Date; b=NM8s6s9Yk70V4k4Korb/S0FqS5mLjiGWVgokHTkX1jR1MbIdjOzICpnWFWejiYqljFfLd0NekcYCZRejKzSKwz9CYmKfxpBZ6eIkCVY9+ovYA4nqOLLUN2Pa0Bq4BWcCVmiW7/pYKFQU9/xxzQc12B/OaVCwTrf8mLbUN9jWHas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxfD1mD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxfD1mD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE3FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790974833;
	bh=CCdhdqmfcgu3GPk+MLcZcWXzinGZv8Cc/c1ezg8lfuM=;
	h=To:Subject:From:Date:From;
	b=dxfD1mD+qNDAmvQfLZagQik8SN1QwXkI693QrU2F0X3BUTgHhn1qAjRXoCmcFu3ui
	 A23VDrxWrf10HBpbdPXkZ8X5Ftgy7zzHc/UR8K4Fi3D7BOMpZ0reMHpY44AN3anYwU
	 YVmbrFOUpKqqGzKTqxKdA/PyzuGQ4g/nM9c73cc/itwi/LBK/E2sDfS6MSusHdVRnR
	 9wluwxrGiHVqcTHYqJAkODSM+UkyBRDhDZwmvzIefXtypKIcjtCs91ep2PmJVlQ5ya
	 DGYy6DCgjvp5CEhyi8FKKwVjVbDNXhN/+Z771HVFw2CVIngNAtBb/YE0iTva1871Lq
	 diw4P2eN1dWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA79CA5FE5
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097483369.7949.1549549374095392512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c98ab95599ca120499e795a8515d13f240d586c8beb709e93e119f80749c7d9
Date: Fri, 02 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790974833
