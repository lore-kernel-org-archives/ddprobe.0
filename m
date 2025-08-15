Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920BC242D6C
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755287995; cv=none; b=U0RNiYoN9snt9Gp1xxc9piwS3QrQ+jf42qpSjZZzPTk8TwYq+gXi0LhwAn99fnU1EvZaaAbZJGeMjww4CB2iDYBqUjvd8WO6/hNcxYfJy7MIn3LzsfgpPjOovOItGdcXXtjwcY/OgkPEH3xOIN5DczGjQvmGeJ4n1a7IPI665zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755287995; c=relaxed/simple;
	bh=+JF2KbymETPwTawZYueMbU1nivUAgbKRzc8FSGtoLnI=;
	h=To:Subject:From:Message-Id:Date; b=mCUhbrDG/vJ2Ui4tD3DwLJVx+9QPh0jP6S35dugBi9Rpn2RsKS3dmvrI4oSoTMI29qeD7DXZ/RTur6wgc3U6QvXIT0asRAopxHOAmp+4uYZ5VXXKmUIrLLLiG1F4x1IBRJ/An259k/7w311zbUZKRtiJzbZOYTRziPxQ8yE11ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Smg3eJHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Smg3eJHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB05C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755287993;
	bh=+JF2KbymETPwTawZYueMbU1nivUAgbKRzc8FSGtoLnI=;
	h=To:Subject:From:Date:From;
	b=Smg3eJHBNOD7J5udur+3WdrplnAZTWLWpruwbQEkOg226DUcNIRb27Gqd+VHu6BEe
	 I+B44JIgRR/4dnW0rZjogKwgltW0PtDyiZudkqF9ixJNhN1ErwnKRCJimRxPzg5dsG
	 jOux0vlGiIIwP1bdBjf/BgORbOkYXrXaL1TZWiKlyDtpPasGx3WJQONceXK+9F/2J2
	 6cK9QIBIv4ofY7/Fwf1oMA3mZfkLPDH+22pMFjpeXigC27OLLJzTzH4w23Ti3fYjVl
	 SbdLJN9u0Xoq0+QwKU8NAHcPN+SY2De03uCm2CeVnS3zfyGPIiAOHN0wbmsRnYBNan
	 Qr++nZ7G4IsKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E455CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528799357.24746.89573215713186521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d35c9696a4c5a83a18627a13918c500bf172f8876dc1aded6447e405dd15f17
Date: Fri, 15 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755287993
