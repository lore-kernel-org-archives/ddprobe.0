Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8427C7470
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719627863; cv=none; b=iyswPOQjrvhzVSilVXkiWK2pX24mrBTIY8aufoJCkdqMkbwzWFluM867m+rhcvEKdkdLPN98v1tQH2BVDDF+U4ie+pICOrYaCZuZR+fIlYcG5tcKOxp/bbxs+4e7BVW4XUtNEdPns4bk7DcL7wLhaId5tRPgLwA1CjI+od5f5pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719627863; c=relaxed/simple;
	bh=u+bEkje1TKrhHRSt+nKR9ZpHY9nuX2Uc8a3mCFrpqeM=;
	h=To:Subject:From:Message-Id:Date; b=DeFpaMh/xDdi7/WIY3uWWNrCzs5OkUQTm7oeEST89blu5idh8PKKRomatCmYKTm2hPnHlLfWr6GPo2G17Gldfloyx+FCdFIe3E/D029tGd/LB+iUVh2FaTgZlPMJPKHoQOHEL3Wi4gHilEnvhZhA0i47h63hYJwE6ab4GpMuOlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3rfJFwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3rfJFwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07463C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719627863;
	bh=u+bEkje1TKrhHRSt+nKR9ZpHY9nuX2Uc8a3mCFrpqeM=;
	h=To:Subject:From:Date:From;
	b=Q3rfJFwcUGX2s3an6Y4fZjJPDjt4PvKJplZoYPrTw3YkofoD3Cmt4Jh1aXvgxRMQd
	 +hGRG+6hC1kA93YK1Bn9JKcGApNxPGPmiz14q0+frDTBt8Ul9rhgOpAlWSgej5kIUd
	 Kr+2m8aGIJPTX0qENdvMe9uAb3ga8/OnpEM+EO8/Tt7bP/ienzezqmBG3XOUPnI2gu
	 pRUhpKjS3Ytm1g3b+7yj52fUkQ9rnrGQnaKO0aDuGK3dEAmX5A4c3o5FsBOXR25rXU
	 +LvB/I0UDxdK7N1iP5DbhTKkwJJm92Fa2vX4+kztIOeF779n1bXhJlVeJN9hirVBZH
	 SOt18Q6VDo4+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4A75C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962786290.3223.7669358218761205679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde2bbafc82bd750d101628cd7cda691bff226d8b7f4cbe2baace66de50c85b2
Date: Sat, 29 Jun 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719627862
