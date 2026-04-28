Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0A21CFBA
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777337254; cv=none; b=hVrWl5wx/KA4YfnrC4QdShnw49n5YC37zSes3RitxSZ2WjQpENwM8qPh1ogsF+N073ZI3aqyjOh3ZoWW1od7cEAEq7oBx11iChbB+87GJiceuN1Y7nvN5jP3rywvTOyJrlxsHTDeRmMabx5KLjsSEn72zDx8Lx6dIPYOb2dIKpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777337254; c=relaxed/simple;
	bh=F7FXreKedUfi8abbFGc9yjOSL3OUStYY6sbi9uWwBT4=;
	h=To:Subject:From:Message-Id:Date; b=bhAKaxhOV7gnpsW0u1y6VeSDWDx6/FasWXqORzkb9aY9Gw2b8qywm5B2WIanSTX9c5iN5EItkJZ3lB8Sqaf+Ytyo4BonkhAlr1ZSehEGFo9rSnRjthOxFqCPm3yVrhePREcS1HjrHexjSDl7I8U3BpKgNvE6r4a0cvtF4k0m9Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRgdzekD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRgdzekD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBB6C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777337253;
	bh=F7FXreKedUfi8abbFGc9yjOSL3OUStYY6sbi9uWwBT4=;
	h=To:Subject:From:Date:From;
	b=RRgdzekDLhuOQFU2W6t8A/mDAQ4vkM/AhruTUobVGhTfKkXTZu44mv30QiFEm2JuY
	 lLv2aztAARHYgzVvj1fHD3WQ0f0O03cvz9adfDk9G/9hhsxLWsHOaapo5swXojlaMc
	 Fh0Hgr8UPvR4ZOfT2Xpmyr+20a183YRcT0UgCpB8ZEkJQdHHvcZ3PBh+P2QKRULLPH
	 y8frYF114oAwWaE/t+NAZyJ2KnbOQTCTHIXe9rzyrb/HpgiAIxy1kjn3u1gYazFrpq
	 pLMTaXPHbyKpjKmbVmUs8Crg1iaH3iJg5PJyA1RD4r7kjiRKqaECsbOp6LBkb1gWHx
	 rFA9KolbJLJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8D2FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733725368.20884.716480188406537735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e7cdd12795baddecec1b4378ed2474080de657a25c34fccaf33d936308998a
Date: Tue, 28 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777337253
