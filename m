Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC692797BE
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752740396; cv=none; b=lgFQ8DlJvuXVv/M7jLRxNm7vN3cozgMDtFW5lXZmY2UDGm8Q7Asw4hrUI/0e1n/MxefXRQVcoLTscETaWhgmdmOt9qvtb+afjp6SxA4FRy5OjTs0IWiYy2z7Kei/kE0FdimLbklHmbqEf/dbGK3BOU2VMuf6CvuFpegdnpMw6cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752740396; c=relaxed/simple;
	bh=vyIylKLQ55MW22oM+EhKgMFXV+LG6Fikgh+bL+32XRw=;
	h=To:Subject:From:Message-Id:Date; b=AyGuVXwEI7uBcQpbYLMeg/Y/80PGHyfxJe2ArAKPZKCTz16AkVoUH6hjq+lDCfQedOF693+JIdrpuBXAiQZOT8ltHI6tc/lXHAm/TLFfplsSayfeCB2PfNeUjFNC9iWNOxLeE/Dp6xeZGuD6g1tbAQ4fgldvHB8r3Uf7AU0z5dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7Qp3n6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7Qp3n6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF42C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752740393;
	bh=vyIylKLQ55MW22oM+EhKgMFXV+LG6Fikgh+bL+32XRw=;
	h=To:Subject:From:Date:From;
	b=X7Qp3n6t93YpCQm5hspR4ajQAIvrygW7DttIhQfCCOwJ2CCCvBO2amNluefgInmKG
	 1VaYN++ZusRZFMZciW8ozxA5jOMaPMazNojuoW16+7/mQM6qRKI+Pqpn5uBF1Q8b1u
	 2FVovoaEyqyQoEzwMU16TwH+oXiDQRCO4+QN3uvRvZ/WrG5XlYRXHHckZSdXprKK9C
	 YqBsdpOoSmuJMl/862C8hicQaQA0a1lo71h5LAIYwfNzhMgMt338IlduMxzg6heTG5
	 fu3RgN5A9t7Ky4Z6fFXicq2I1P/SXhhoksU27Qt/rjS4Shc+yuZ7FFCJSRRI5IOpED
	 Zy91uF8M8qG8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F848C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274039357.11495.18122270720942854087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e6b2b979cd9c8c5197bb087b8f78493ce0c4f5049813fa4199c54053f78e06
Date: Thu, 17 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752740393
