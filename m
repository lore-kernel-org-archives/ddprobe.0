Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADC15E96
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755397195; cv=none; b=ndyS2eX1q9vTC4sAP77z87jRXpVAzAcvTJHO82IcdRqrAMjL2bEQHB+ekAhpNIfW8bDameu53HnW0we0F1ygrEDueeSzd8OYOZw4KWI2F0/TtCHYQZieqIVGbsw5pilR+F45HXsXIKLNqEW4/z6TPxtjsOqL1V5lchlCmm11/tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755397195; c=relaxed/simple;
	bh=eSNJtaa72ZBLkoPsVfGdupcCXVsuicOz7lkwT3wPBgA=;
	h=To:Subject:From:Message-Id:Date; b=NlaNYHQyIlgBT1XkcePULgI1RTv3dFvvoUIdc/rmUrDYgM3Zl17p7lRP2GKLHvf1E9zlw92k85QjNNaFsLpWUEEQVlk4GJY3v988Zuu5XTClDcNuomgLd8+gW6dys2+Zy4bvq+Q1b1ZxqgCrn4F8QaEh4jtgVRl9SzRMA0DaCQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2i88m3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2i88m3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB73EC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755397193;
	bh=eSNJtaa72ZBLkoPsVfGdupcCXVsuicOz7lkwT3wPBgA=;
	h=To:Subject:From:Date:From;
	b=S2i88m3kBpzwL0XKKXP/T/BenKe/olb2HQPcJZBoN23+4/KV8xiJeMH7Ez0ppwi5Z
	 pvMN9NhtgHrX2PR6ZNgVgietaZ5W9fvYSv1SONDKRK/OaMhmqNIoM6Dp6B8wmTW+wu
	 SvN6fTDtTiDeOHPbU3wzmEPhL3jIZcsrzvzsh7gwHDJTEPfn3UDTMUeDDuDUt5NZ/G
	 y14Z9h4qRa4pDIPg0VkYK8cR35v2KZBofbQpnSsfAoHEgSVv1TQB1SpeBACIdYOmXJ
	 lf5mEz9fwTqEGyqyHl44lQXjqhc7c14MnNa1XPyF2WaghY+uPxIT9oA5ktW2ObgXkT
	 V/vRLPcBBU3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9274ACA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539719357.29754.16196561720736810499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e7f76306e66f633392ab08dfd1eb0309da20e11adc376c4958e768f35c8bf0
Date: Sun, 17 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755397193
