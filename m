Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3579125B2F4
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790254834; cv=none; b=ABGgotLCD/X0HcydMd3BXzj9EmOEabNS2Ezh2XnIOPv945RR77+XPmNKGvo8lybS/U/Ck3MYcYnK/WQYD7fm2TVSN1JLlHz0Y1WMuApbXSE9uT7eTe08uyX+u+fV92SFsALj+oH2gL5jdgaVlW3Jr96BQIeVfd6S0yV4RmVaiPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790254834; c=relaxed/simple;
	bh=LH38RNfKcinPBx8r4ahP3FC5N5YGlpy4yxYd5X6SGNA=;
	h=To:Subject:From:Message-Id:Date; b=Pz07MAk+xfEh/TQKOe4TrVCPCh//1K4MX2vKOctlFLLun+aPIXIQM7adqnmrUF4scwluyIFeyxhMwy6OrWxvbq/fmWdM4s7NSoPmiVw9l3fh7QKp59zHjV2MeQXgenYLaCckLzRxJIMEveB8JVC9gG1KlTY2ZjpEfqamYV/ZTyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyCObFIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyCObFIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1065C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790254833;
	bh=LH38RNfKcinPBx8r4ahP3FC5N5YGlpy4yxYd5X6SGNA=;
	h=To:Subject:From:Date:From;
	b=jyCObFIUm6Q2Rygq06nHiR0yT2bUcfVu26rhBMQQRavHlCcYSgDRcp89f+VsBlc3Q
	 erxWWh4SRW2RawAN9GgLY5rT685JvN2pHFi2HYrsxXQ9h4flKTw9rOcL+JzSMHbaLh
	 INKrZnoVcZ7lKEUu+7rmNI6OelA+j/w7zOybU31OTrqqvxHFtedZ1ChYdgYakvsiYh
	 //pzHJ89wvkMHs8tcM4FhH9Mop9C97+/cyTdH4/gU8krSnM9gA7BkZZxi60ikm/G9D
	 nrQgtLvtwAKVgIKfoBWEso9m8lj6G/MmbNCvETPvwn/xK8oBKK0nT4FCxKvwqTFmz4
	 dSHNniA6gihLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD53AC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025483370.12739.4521472140160180768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7778c1fdacaf3696b83f8fc01bf1e15756a20c84524702c385e7ed3b914028f
Date: Thu, 24 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790254833
