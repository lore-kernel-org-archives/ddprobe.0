Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9FE45D908
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790853034; cv=none; b=U1bNAAyn4Ds/QO3tXPm1Gw2XCxHKK2/xVqfP4MVe/3yJuW2EqP/07LwDC9tOPPbGGrRQ0utUY7qczjbRMvTG+L+X3dWW9RJFFlO3xKZEpG+vwEYsIpx8yU6vKYIFM6JPM8UY8yAM+cp/MzvaLBvEPH0sHGxviXdWdRxXTCkkErA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790853034; c=relaxed/simple;
	bh=sJhQSWwnKbneX5VUgB8SZG0iRoU2AvnEY7QGTO3uGwA=;
	h=To:Subject:From:Message-Id:Date; b=i36eEPdFQK/XYQnh3rkz0O0rI5X1DOkzzPmizoNE8oID6ycPkNQmLU6FuF5JJnqSFzBuXIAQ9aKWQGVii9nNrTGojeRw1OxxX7odyg3BS9E4VqQesXh0uT1/iuZdaF6QPIOv0FZa4s2NgGlZJ+pHp7VQU/D/aMEwv5zstXGq2ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etVI9m12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etVI9m12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD639C4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790853033;
	bh=sJhQSWwnKbneX5VUgB8SZG0iRoU2AvnEY7QGTO3uGwA=;
	h=To:Subject:From:Date:From;
	b=etVI9m12wvZSvYUttu3RganHzaPuBAOL1V7V5/hHcHNE+jnWKvB+eUKBcUOXIxoDu
	 YxTNyOKXI/3MezFyAfxJEncSCak4wSZB1eTHExb6RERvUsGb6144vbLfxKpn2Gliw+
	 cDwIF31bmw4VjNPhKSYB9bqPTbcYQlIFFDn6S/6rrESWiLIqddTj3YB34tKeBENF4j
	 5Vzl/2rIlzYKB8D0qwxu8EEvzbjnD4c7rFA5Lt4RGWaYP1vRLeBhu6VoWiZk90hic0
	 eAvTN/DNjKpp4+cn2VysHMHbZsu5j8r27R2olOZ4n/fDkDRD3YnFnzSl5lxRmuz/MK
	 xt0IBYy0WzDjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAFECA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085303368.538.4717202028739600313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30a6b1c374a496b8a1366b3ce8fe1af453c7377b19bb64e44893ffae263c41a
Date: Thu, 01 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790853033
