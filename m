Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576631A5BAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791850834; cv=none; b=oHHcg8OEK6iVUy8I7IrZzNKWTUdtRh+47yCJve5PRz9N0AeRcCAWhx2Xuo2Pr+lY1wY0w30Sz8Idp0A0DFuZu/RdUqtyHZ27vrcRuoVBEh3YRDj4Hqj8kpeQYKDLTOg6HeJdh4WAQF5V3ZnK1wYl3MgY19yUrsuu1FlOxSzyvM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791850834; c=relaxed/simple;
	bh=7O/I4KoE/WSL18OYxiEg6yBG4A6H6IA7SA3SEAsQNOU=;
	h=To:Subject:From:Message-Id:Date; b=Gq7NVDc0IXBQvNS94yA+jzw104Dks68bdw4tz6oxX+GrklIrGl6s9izvakA519/9xf/N++4KYvgsRh1dO18Hbofhq1f/J6jHghPvjjbS7FW3RW29OHB7sT0Bzz9N65VBGq9l0l0LOYM1TzfhlayHMGITrVMubArEEgPnrQsNUPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2IOGsoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2IOGsoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BA3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791850833;
	bh=7O/I4KoE/WSL18OYxiEg6yBG4A6H6IA7SA3SEAsQNOU=;
	h=To:Subject:From:Date:From;
	b=f2IOGsoFUzZ1SDIrqXASV+Ihz5JgdyB8lSDuN+aLoxhcJ5y/mWx6yT6WFlqnG7B0U
	 5bH3ZOlYpqNkJzIA5iclv1QfG4h6Ke7B3r8R03OBD2aP6q/iL3aL4vhOhgmMPBqjMy
	 zcmtmhZmX1F2stAV3wx1tme9BpLxyMQaD6Ui0xgCPsdJcYLy+MJPxUWchyQPjIHhpK
	 3ionX/Debgy1u0/lZ4kiHrwOm/te7Sf9+bvtiwuu2hwZqrWuYoOnvpEDEMXlxVfou9
	 AWjz7Uz8L336NXr0t2W1EoFdnrRT3goJ/cXpAcKi6bwAHpUgUaLzRpo6du2VXLGe4h
	 iCyjAyOgsI78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE3CA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185083368.28340.6884353466257653923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6bd52acbf59dbc37fd8a4c14147ae119a615760816bd4cd2a80b621f0ac6c1
Date: Tue, 13 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791850833
