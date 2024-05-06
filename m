Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426B71C3D
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714966943; cv=none; b=YW6hBRqh1XP3XM8XbDJPCC5PLo19y90j9UUH6DYB3jODAbvrfjDb4ZctL3fCBWFkpkTzqjqLXKFylw+CcL2kV0KCDhzxY/P0o83jJlXOy06HdipF4Mxr92lA1P3YrvqFGoHMOsSlOMnJKVIqQj14ZgDsGzry0hbr1QjqgkJUfz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714966943; c=relaxed/simple;
	bh=RCUsTEfa6dG3+PNALy3bTMLqd34xZcQdcZzq5qc195Q=;
	h=To:Subject:From:Message-Id:Date; b=JasyuVERR0xQ2XOZ03JexNhavhJ3GYej4I09qpzpo2QQWJx3MCmo58vW3UJpVeP53z6KqT1UGRfpvns5W1k0XRZ9Zle1qsCmiqtJSmdpYCcGcIrVxLqk8eCH86yozSG8UAqXlTJE7MZ7kEaTXKvplS+g4yWVsyrEvulSsO1mNrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFRQ0doK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFRQ0doK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6817C113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714966942;
	bh=RCUsTEfa6dG3+PNALy3bTMLqd34xZcQdcZzq5qc195Q=;
	h=To:Subject:From:Date:From;
	b=bFRQ0doKb7UTlgewLjwmiQY1XtrM4IHuFTyDtWSTV809NvbwdtR2E5XllTrPrnGiG
	 JIXSmoX7lqayQtO/xJ9BC4p5jFO21HJ7MWBnpiy0GkDxxbJsWfVPFdQPD8oAYQpXiR
	 dqqG0D80TMZJydnpo5dqEACxDfdr+im8IORtSkmkManFqO1pYliBA85A94yhzZfeeA
	 6y1B4TtoXv8Tzh52QcvXUQqvc9R1QwC1QNgNkPMEbhzwRWLAzbzvuzQyUT34DaH1fG
	 hJ87pgq+h7KMsE5y9grDk1gnT3wLQy0abHM66rxexvb/7tLMmwpDj10y9App/d2VZ6
	 CnrPa1WKgls4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A6AC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496694276.19790.2703367369738707861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4dd8a5b67e11bc156cfb983539a89d1991d1c860a18210448297118bdc4202
Date: Mon, 06 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714966942
