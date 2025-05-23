Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1422DCBF1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747976994; cv=none; b=P2viCYIW+WRK2Rx+mcYNYM223jvdobyIaLZkqBOkI5ZWCVG5v8aRcNJHdxa1j1+24uwypCdTqWulXY/3NlTdTVjj75AMgSAcTFtI3BKyIXs1CYDDDKHIVt6xEsfRj+XJun3fBXH4SJCw8LtxVaMEQRCGqp5jHOIwMM6RV5YoeUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747976994; c=relaxed/simple;
	bh=doQQwheDeA7UjBPenY6TZr/GWH/sUJF6hvZS2lvFCI4=;
	h=To:Subject:From:Message-Id:Date; b=QXKtqIeK10glrUnUymgBVRjt7ypSIchBnWPBgRPH/fNM6K6IUeAXrZ/o/T3CilJO+LcVgjr9UzqJ8lJQRuik9l8Y1OEjzJG142p/RdzoBhjIc50Gb2onaMUPaAAmcvQvJAzyUxsTQgji6ju2kVScdUrUkVKKtT5BMyTyom4vwBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVL1bJ7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVL1bJ7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E18EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747976993;
	bh=doQQwheDeA7UjBPenY6TZr/GWH/sUJF6hvZS2lvFCI4=;
	h=To:Subject:From:Date:From;
	b=JVL1bJ7ycWBd/lYiLIoMBO1B3KUmLxUOiWa0PFDcq13oKnIi8QoSmaH6xgmrukiXb
	 K9rRPB5cqcx4/FiHoptUGDK3ZzXQMA43oBHDzUKxe749wYmdeuYFG6CDZiZ68zbqTa
	 Xm5bzWj+ubrE/IIITdWhFbfEnuYd3zGroTZBKXbquIymrBQ4jMbDLPOblL37Z5oMdw
	 r9LeVRRfraOckYY5H7gqtVlacOaiRcTKlIl0sjJqViO5F+TSg6Bm4wHbHEOyu5OZrD
	 98GifSlITRaF/aYHv6xMvAi7biqYA42WoFFOnsEHnAXjZ0ypNsczkQTFCG5e38TqCI
	 9LjEk+jVM2HQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C3C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797699357.10587.9191570144039208220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380325c1a605f5baa2ed4cc912dee4b8f5aa6f0eec90bfc2038c285942b96d9d
Date: Fri, 23 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747976993
