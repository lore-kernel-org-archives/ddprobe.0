Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284134C83
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723179954; cv=none; b=Y7wmieTi7HvMdcMkL+Zi3gHmqgLhsSqXYRqCrqb+VBz7aJ2sAyJWbGh+DyaZu42qyFNj7EbmD6qZpuOZaiBdWuo1H2Cq5DEaD4IHF5vhDL5JQP3T03Y3JMXpteQC6RDHfcaXRUCXR1FZFzR1WxI4kxG1V6p+cwZq0+bQIXk2cQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723179954; c=relaxed/simple;
	bh=buBXzad/xiiJ3F9rtF5En2lF5GjD0t78S7QtpzlqDY0=;
	h=To:Subject:From:Message-Id:Date; b=tlWJrmeM8WxB8CfWVpNvoowT9d5ai+rKh1XhYVrgDkQYQmvc6hWA5CyeQ6499J+cTUpC+61N2ed/NbD7qZWbPu21LqvV3IYnEtBXtA3DLyI6UidzuMnDbwcUdEMM1hXB8S1dSvshCUIE/SjCN7VODlKEizl4farNdeIqDCpoPW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF0docwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF0docwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A10C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723179953;
	bh=buBXzad/xiiJ3F9rtF5En2lF5GjD0t78S7QtpzlqDY0=;
	h=To:Subject:From:Date:From;
	b=gF0docwOjfVsJNRtNcPVX/JJPQazHnsqvYOaMQwMZtW7k0bRLbrLz0+sTQ9TS7Z0+
	 pqqrZ0qfmlPvQvjpH/zYS0CnJnulAK7yh0+nPz6+xudgtL+87SND7ffjSv/DavjnD8
	 2ulEv3ropo2PBsRFHebj3J5RoZOufIVGGRDurClPJaWCqgaWsah/yjLiihAWT+h4E0
	 r7xL/or8xSHUAC7TBrTAPff1Uall6lrgZjp1HcNKBdVBDsGW6J9F/UIoIWeXbcefjN
	 vUvbdW9MkjAu7du+2a80Nj7mXIBq6y3kvERZNQLBl/7aTg1UZZKRS7AoaYXREfrDdl
	 VtsjqYAh6jAOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE48C49EA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317995362.4057.4977584595064110012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768ada6e82512f3b5b2d0e04e5fb3f555dc01c1c72d09404ec8248376227cb02
Date: Fri, 09 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723179953
