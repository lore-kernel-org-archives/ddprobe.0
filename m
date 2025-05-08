Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F15EB667
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746673195; cv=none; b=HL3GkjQV2/CE3i6bJ0rlVuoWOhTQU+V2UYbqeniPZxZJ9eZdb6NsRffXGMTQUHMx51eucLvAuRRgL4bxY4cTUXEtFKIjf28nxx6tDowE83DltdSfwFlRGqQ773SeN1XOtw9lOYboJI8fP+g0t/btUa7B6+mgBwkBgdH4VzOPjGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746673195; c=relaxed/simple;
	bh=YhfsfjCjYeYFBOrc5yWZqAAS4sFeIgc24UXLWJ/uueQ=;
	h=To:Subject:From:Message-Id:Date; b=ZHUSfcjSBTLSedjJkkpf59TxWEXVhouK9KGatH6cspGvUBgP26AJDmLCujsP5PUtYIdypaWKfNoB5BswTRdVs9kRX4f20J3WyPfN6puHAvi4XCVAl/sz5otDOzMcKqOU6o2m5pFVDSAlJ4bo2RNK05XSuPN3p/6+pqsoGc82bmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh7dHAvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh7dHAvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99F09C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746673193;
	bh=YhfsfjCjYeYFBOrc5yWZqAAS4sFeIgc24UXLWJ/uueQ=;
	h=To:Subject:From:Date:From;
	b=nh7dHAvoNJXi4JUBN4vbRiEm4Nma4j9PipOZkokHFfY1exYAyy+UvsRfuL4Usi86U
	 dsyBV+WJJkiR3UQRbokulWlr6antggkQqWNfxUeR7/UjEh0hxzTlz7LoE51s8C+L/I
	 zsS922rPjfhk8BDh0gHsUwdzVqbfI1s+pthv2R57kRy38PXVIzuLauZ8uRcLXRSJZU
	 9s5UjzOH2cltCthRq942nX3+whWLDWNuxMDYaygnJgcQ5n/pBadpyBlNWaGo/tdOLG
	 o7ZhPk9TK5fLnvbrw9Du4hgCSzuBy/7Cshst2AWhrvTu/hDlkao5uKxMwM74U6JnGj
	 6noZp6v3qj1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E512C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667319357.15688.9193338733116840253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e421ba64e517f947b51ccd9497f750d975314a1681812355632c0d64f8bdaa17
Date: Thu, 08 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746673193
