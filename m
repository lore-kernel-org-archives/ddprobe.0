Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309E928C2CC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749548995; cv=none; b=ROeA/JeBrzb01an2jVX+uAzWwO+2e5x9WgsggxcHREjKPq2CgBl2C5Ek118KhTvTCauMl9sDrmp5vfC1EPLi5dy0iY73RxKzLVTaAHiQ8B0CO+SbU/I9CAVK43SJrNJ2qnR3lmU4fMf+Z7vdL3u9aMQEqD/Uo30X5bYrP9RoPiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749548995; c=relaxed/simple;
	bh=NRmj+arLTOPlHLeZp7ENqHpHL5eu+bkV8cIAEVKCzFs=;
	h=To:Subject:From:Message-Id:Date; b=u3PCWxxmrnDWUKey9yZgcjZJBbxfnKEe43txqV4jG1IPX5ciHbLoopc1rsjQJqtAr4J6UNoESYo5GMi2b1j/LkHJqZCP3Rj7FovdvSThJukFnemaAxabMk8Ee01ZzDxUD0qbw3d31SoTppmBOEmJlinZgO3CyIHW5QZjf0jMcxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMs80NrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMs80NrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A84C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749548993;
	bh=NRmj+arLTOPlHLeZp7ENqHpHL5eu+bkV8cIAEVKCzFs=;
	h=To:Subject:From:Date:From;
	b=KMs80NrXascJPC9IiLfuhyL6qLU6Efm8JX9RMURWb1kKGtf9fbxLAhf6uChvv1MRW
	 Tom4Rbgstdp/rn1bdp8G28r2hmXM0eB48xfMK0xbaBIDC+XlHffNePsZKOA71T6Xi0
	 l7PFUqeb665fnTrVKQPsmpowIWlj7sqru4EFmzAA0ZuJRKYa8v2DxiYmK6h5ocx1RP
	 nkrXL8N5fpK2VQCjqEAr5rbnfByIoJjgSeBUyeSdi5G9cTahdZF8TMYTn/BFGGc16p
	 0vc6tGc/8OaSDldkJnCwjDDnaWurHcDOX6wdGFvr8gzwf51NT5qIWE0HcMhb5bsvtR
	 DZW78apji+qtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C8C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954899358.2750.14417785156231070616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81316718cd2d238e87a777b008e3e0f88926bf66d2e6c50589b61387dbdf6a72
Date: Tue, 10 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749548993
