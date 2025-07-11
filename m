Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB4718D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752204594; cv=none; b=dS4j0CS3lbeiPPIFJmzAwhGCoS5Ti7DDaJNTDyJyGELHyDBAWRkSa/WEZe3XRJMopZlM/Uh4ZlLF2MryGsCks1ws8CfnMNTCxcPnD82JQaiVbVRtNuRTtvuZMd1pObzduqTs6XKP1b61VnNAW6TiogsARIhWJ1Gsix7c9QUuYhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752204594; c=relaxed/simple;
	bh=NXPgylixlYWA7Fqoj3yEUTLoj/iOK9c27vWRgBFKMk4=;
	h=To:Subject:From:Message-Id:Date; b=TSL3ToospdcLqlyFnVwMRyOpXPhYO77DgT/mvkmp8/jA7N3oKlIY76zbAk1jLejwYrQ9GlsV/y7JK/31eyqygBh0qfvZEeyAz5H3mGH2sui05VkBjb14MkxDE3/BrifknLQsUYAFg3yhtzbAZ6r0GDwK13msvT1cGvLlru2vsgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5sCjaUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5sCjaUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09ABC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752204593;
	bh=NXPgylixlYWA7Fqoj3yEUTLoj/iOK9c27vWRgBFKMk4=;
	h=To:Subject:From:Date:From;
	b=q5sCjaUfHE7DCtAyhFlrRtb43VLWQNc7PSpC/8i+dA2cwISGRNft/kzeNJI2LjV7f
	 Kk4u14qZfgnvvVE9bf4N8RikiPmrQVGDzV4rtYbcl9TWXqJ8ofuznF3yxf9n/nYrPB
	 JFdJSRTKuqgOB5YI38MAnNKKP67yjMyFHchRs7TXBmPFFO4QIiEy4DNuGoHfjEqSrL
	 bhxC/7ShryvIIp9Ag2s4KCtjySJoolNxlKTtsCK1MN1Zd+lRJAx0jtYEpZWNSL+4Ak
	 actksCLIRl0iHspMUbJw0y+p4URZX9L3RpRsFngTQmmgNxQHQCxFL3nmho1icFl/Wa
	 bMSG99AKZzXSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC07C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220459357.13238.5890541390062527113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc0f362aa70686cf3f0805a64db442f2caaf5f274a0a87bac953b42d6c2f41b
Date: Fri, 11 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752204593
