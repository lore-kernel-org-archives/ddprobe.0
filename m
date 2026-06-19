Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B51A362139
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781861194; cv=none; b=WcxhDplSC4f9A2OVfXg2yfrzuqpgFipAKzHDzLvR4dGQ+S1Plw4hTIGPdxZD9IYq0RQRWvZuIt5RN1xK6o2MP7E0zL3eoy3ZWv8hXTu2W6/T/TPH/Xn7dCa2Q/gxv0wAKRkW8+GpQzi2z+HV07Nfx7mjk02kESCulk4PuzRIWVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781861194; c=relaxed/simple;
	bh=zVJbXYK0eUeXgU9fvUnLIySMiF68EuNPTdZhfiJm4UE=;
	h=To:Subject:From:Message-Id:Date; b=WvM08gKAPpJfaj1I0zATqoo6yb4yNfreZ3ZSmbEDXRgQ4IcZdcMwJ26CQ9f04d9gtihV01cRyDUG6oNnVSMHj7mKpq+pDdVfyVsJm80m16WIf9Kumu0ZIShCWG5ojYoe6vAskOKDymZjLfbIkzm9u2vr4sZ0aKCMhuF+T8Y9/c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvgKKv28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvgKKv28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D375FC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781861193;
	bh=zVJbXYK0eUeXgU9fvUnLIySMiF68EuNPTdZhfiJm4UE=;
	h=To:Subject:From:Date:From;
	b=AvgKKv28Erf+GetqHiXJxcBLfxiwjmWVkxraDT7CgqWdsRMJwXSbCYg69LsliStkN
	 OlxOUvG5pnXhIwm4Jo9301Bpx2AYGRpmGBizPu6/kB+3WtNRW6yIH5dBtDi8U100v8
	 yxsEPjgI9XcTJfFgw4s82ZoHFiur+bLHfB19wUDOWx0vDUuAO7y+WEZxDZ2q4o8fpe
	 BgoWE+o9GpYOzGd4wbpBjwtr0GEfnTYY6V/auEpYGrdG4wkcYGYggSvjROmzQ6RWtr
	 kp382Kk/GCHXIIELGyxWPoXHC0U72FV78c5n+5Rm9d2iCL6pzHryRP4NJ+4CO7BMwQ
	 G2F/lSS0ZOw5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7921CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186119374.8076.47841360435901342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2f624b67bd2615a2e6f297b05b3e1bde3599bd879d1793b8b696ecda67bc8e
Date: Fri, 19 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781861193
