Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E5B3101CE
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778776834; cv=none; b=jJcL+Dd6qUpR+iG9HcvcfCbUgBC5iybWLhZB1PuqVp30mp0OJVyiW417cxNq8Dx5Vpz8IbO/6TKTObx4MT56C82pyTr6c0+V4gSyFvhLusBwC4CQCmfh7otkWSadFIJprNeut0REBmIqJdDoKbzs3xI81tMCLra7AKmEbueODpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778776834; c=relaxed/simple;
	bh=XqdWKdjbK3r56/DZ6XttynLM2Ex7atUd5nMd5904Y2w=;
	h=To:Subject:From:Message-Id:Date; b=nGruoknYc15j9TwgH2GJjWhaTjGk/Y2VCh5nfnFbCRKE64IthPXKoWQWEa3prMqezq2hIBvaQTbXjAV5nXcXbQ7BWYlOrpn58IjYKASLjJfnUiHW+kMjLLWqvGJ8Nu4zuFETUSwBVJt1zcyDL0yijAW/qzOb5AblHvu0fyLRKRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLna1LI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLna1LI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF40C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778776833;
	bh=XqdWKdjbK3r56/DZ6XttynLM2Ex7atUd5nMd5904Y2w=;
	h=To:Subject:From:Date:From;
	b=oLna1LI2ir/6pjxCC4pLA578ALXmBh1vXJgb5CBiTPF36OsZb70/9026toBAtE7vD
	 Kkoq8WQ9pdg+/dQAKJirqUuTqEqxzkJLUs6tRLdPwCjljC9fUqd6FCm63PKsFuAwC+
	 NdgnIdCMixij1eK46qHU1xRG7qTdge41xElTnKrFmu8z0d+Pj41L18hLasZzruwWHq
	 6MM1i2eHaEtrzgMFlK00w7lZ/koBz5YU0OzLJwExDF6Tu42rLxVd6wDjP8xKxfoOCO
	 0nNMA1IHLBi24yUcWF72qEUT8O8ovhlub0zKMdPw6aGRinfcz7rUNqtsmgcFX7NoIj
	 xw1bBTx/avCGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB370CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877683369.20883.9643513811354525477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bb4176ffbb5ee4e63f1ee42474aea928824029255d3a72a044264f92db9537
Date: Thu, 14 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778776833
