Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8B83D34B6
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790850034; cv=none; b=HMhK/TT1xB2osAZpcLwhYt+wj1sE7VdzIeM1k3tLtvnkk8OTXfEn4KzTz+FBWM4T53fdV8/1JrGNQ0mBo2Ksytd1jIHkpBoUI5jtTkvmHX226pE52icAyxvFN62osLSXCzixHwedUI336qHzeETYQ0thP7A8LdvdxM76NAN8uQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790850034; c=relaxed/simple;
	bh=z9gj+M7fsTqla9iTEviQMLiDaK2KLYYG0koP003OKXc=;
	h=To:Subject:From:Message-Id:Date; b=pUffuaUyVRQgBrxVzaPgQXG2QAFvCr544KLWhXY5W7uiQwDMO9YrJQ7JQPNTW8l1VqdW9MJhQDDbcEPPRlVkXhoIAe4syoaWX0UML9eukl18CDp/CmAQVZgNj+x0CuKOrzmVUvzY/TiPzy8wyCBw2SHjzK8Uxue/sdpWL3OKH7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOBEubvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOBEubvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD0DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790850033;
	bh=z9gj+M7fsTqla9iTEviQMLiDaK2KLYYG0koP003OKXc=;
	h=To:Subject:From:Date:From;
	b=TOBEubvDNRUYRDKMneMGeQ5dura9nNYT96dSjRh1nxMXKM1ybtBHXEKrQhmrdnT+I
	 GG8L2QFtMsrO4OCRDCKhN5IgIcCSHNtfhxZ/3Esuwg/ZmvQHaT4DbpNnefeKxwDbmq
	 1XxLuZDANAWlUss1HRmyFnfDlcJHtPoNIoyMuXNw9j60/kgc7EU5Xb1yrvhCtFdMoP
	 AtOXNQSIpi3sw+GWFlYdnc7VzE382iolb51mCeFeYVA61DrIkDlQ7p6pMSP/5PggOk
	 OsoV/oXVRYZikExCmrxTKzc4UtXhahVsZRVoMzos1QBR0u5VdD3KhMSIrJoI0aHQXS
	 sIFmimAnGf1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A5CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085003368.7148.6991870870944569346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704096985439d19e825bf3107f5ecf5c2a17dab2e1fe9ebfb344fb0c60ddeaa5
Date: Thu, 01 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790850033
