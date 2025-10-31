Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDFA2EA730
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761927594; cv=none; b=iBNeRC5dNOWBtruGMADz72FTHRnWDigJPtMLZYWiWdTVevlavmQFWupDb2rqfi18erRsj1svZy8dmG2UQIIFmzsvmxZl5FAuCoi8XbmEmg4pg8SJqr65ezFzwe9AODT0Qf8QHZyubrI6+1AZ0Evr4IV8KlLFiFe697z0SNozl1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761927594; c=relaxed/simple;
	bh=OpQuXDNX/sXQ3KeNn5/5v7cRL+IDluPMwAzQp7Gg+gw=;
	h=To:Subject:From:Message-Id:Date; b=RNroe5fCCi24mpQqYs4GTlVx8OEvqC1bs7DQ3B63l9HKp1topxLLX5jJClzOsik/B5SCKXKbh0t4SdvEzyq+Zn5aNCFghfSa/niWiK1l2IcIhXba4+YNI7nQNkznav/TUbnDKEe76LK3BFhMSH6conY97iqrJgRI0r8hs259W0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9EzDvCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9EzDvCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD08C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761927593;
	bh=OpQuXDNX/sXQ3KeNn5/5v7cRL+IDluPMwAzQp7Gg+gw=;
	h=To:Subject:From:Date:From;
	b=Q9EzDvCIRZIZgj5QeIgFPOgOtmDjLAcncq4n/dDe/Z/dv85UlXfuT3NppGQvWAKAp
	 /OGL1QKAfY0K1TKpyGUNgUU1tsLTT01WwxqpMa+hAdIHT5bKqA5SzW60KhMZV2QqsU
	 /NPT9PipTSkOz4/XDW6D88k5yC/tw1/1m9wMOkIwm4J5acdmZAJdeXXCebDXOdkAPf
	 Ea43GJZHub8X+LmdL61WTfbRL11OqeLqHNk5LOcdr8ZzWYjYB8XWFNHtSdb1PyMvs6
	 s5hKyusbb+Vi6tm3eWNDruhG9Q67Vr4LvcKZpUhcav45UmN3S7oMzdliOKW8zGAWpf
	 nM3cRt9D35SBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1A0CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192759362.17335.3872517598962333410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78405b9dd839651c0369d343195b9b1cf4fef4a12fedbc5e07c0e4a6041e8a7
Date: Fri, 31 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761927593
