Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C1F25393B
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771764894; cv=none; b=Mw8ullFIYHR9fL8TQ8oZo2kG0D6BJ5NApRJLtLK+ZkicnGWxxQr8K5+BheRyQxVo8E3HQjenIMRaNL0j76wIZcBa7kirmebDz38+SaaiRVEMTBstK+Byr5C7ETy2HyYHpU540EfDzGd/3rsBICEuNpqcZqmFV2wRTV5p+5rmQNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771764894; c=relaxed/simple;
	bh=IPtbkVLR4lac81HAJkMIWLSiGKAinzqO/KHx2YoE3tU=;
	h=To:Subject:From:Message-Id:Date; b=Q+4CsuslzmqoAHC+jq8rTfcOTHRkFQzgSsjxDAamWqWJ08fpVl4sDqa5SNioSXn/kKWiounijbyB+WGmVtx4JSl6UC8ApOo7befGX+tKL8fv2YQ/alItp2gS/GvPufcK5DVlh9GTY+WlqFDztWAvnsaaJFCAwBzLibHst2ImNEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIrKk5vO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIrKk5vO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70AFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771764893;
	bh=IPtbkVLR4lac81HAJkMIWLSiGKAinzqO/KHx2YoE3tU=;
	h=To:Subject:From:Date:From;
	b=vIrKk5vOnawL/i6jhGAJs88u5X9hSHm4PLOVbKn1RcJfkaUTnamv2rag3r7YDXWAW
	 7SDeuUeT5L7VTrpK72tZWfI642J1CbQZhZDSJvNSyU28505dRIvtanioFcIgCNqrHo
	 7aYIN5+XwO0kTRHyydCUzHr60cuSp/OGVcH373C0ISpEH9vFxI83j0LPjlAfOaOMIf
	 A3SL1cSIimgqSUeR/gSyFPxjQsx4SiscUBbVXVHw4dIJk+SnGXeoRk69Ylx2uBoNfq
	 Ie+b1dDUqpgc/i3lhyLZGl/J1N78CHokCG/retd68hLcyeW1RiucxJ+bMAGfMWwyV/
	 2Jj9O+6DQzgBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F71C624D8
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176489358.17160.16972083595718650810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5fc48158176235c639ac7a2251bdde4e3a8e237f18a9d30899fd192a9ca4aec
Date: Sun, 22 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771764893
