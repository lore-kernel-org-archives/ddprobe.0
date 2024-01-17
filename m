Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C2B20309
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705499297; cv=none; b=GIwW+xBYRrbtsgMslV75DkdOgBNeZzWOhfVmq0FFY1tATHY95tlcZ7CIRbR+A0GGaD4UK3EF/IB2iAEBsWXwe5qNpsHF6AeCgna85qLCWQA5uEs9FsnpTuIweMK767biBUG6pCp+hw2I6B0kJIJ9WwnaiRtApwbj3M3gfJxurgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705499297; c=relaxed/simple;
	bh=mSf65+UJATTPsgEN7MLeYedyPpo/HAcoyWE4UzPtjeg=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=cAi7SsREX505XXvbnJ+9MH0A7Mm/AHn6gAYvLAhc46dUlWgZy8P261WFQrXk+JUXHxoC3D3Ae7omQG9F2CRKnqp5m9ly3miEgCDmKpQSqMLt1V7Aioftw5Ka2eML3qLXDcCsXOdq1fWKuDYisZJaHp5XsjSc9G+ulSBh7bEWnrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5g8PQIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5g8PQIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF66C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705499296;
	bh=mSf65+UJATTPsgEN7MLeYedyPpo/HAcoyWE4UzPtjeg=;
	h=To:Subject:From:Date:From;
	b=A5g8PQITAV97EgIjfUGrBAAqQuZLLq2FZMIqJ4ybb/GQUpoI7re3duf4WBaqzlgXN
	 PHWRcHvCJ+HZv/LN1y7vPMOpNciVm5rLJ7EMplHgRRO9sknvkIG9RfGZzjN+7PgHGw
	 2EQdFjdwwH6ZHaiBljiTKj1PXdddUIfa+fHOmcDjIJZ5XRYYL1IytCaBbUjyvY6pAP
	 T5sc3MntJcV+QSrujC3HdKn51fLWfbf16sRMukqsnS/7U/qyeftHtDRLkTCzSCGPg3
	 Rw7/K8TUHnglcOZ4Kc7f+3ui0duGxGTcUBhlXMFM24AaeZ2gpl00Hu6B/HNFwlNHEG
	 +MMad9fp0nkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6325DC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549929639.6956.13635357283263309299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c539f335fc75906e063a7d3221c523764fad5a663293ba4cc80cce2b27903fe2
Date: Wed, 17 Jan 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705499296
