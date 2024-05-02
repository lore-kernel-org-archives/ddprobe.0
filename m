Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ABB23A9
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714681343; cv=none; b=t4Rwk0Iw1AilQ8QHsHpme7P4V5dwg+Pld8OQB3hkXl9ersN+cFNu4/30dcKPZ/stcjBzmJve9XBSytBiQQ10vfDRSLz4j96uLNBkeBMhEBxaCGuiL6xt2YdtQ3Y4EnCuw0OAH0q63H2E9t8gOW9TKaQbSGMTrYq9Yc21Z0a6Al8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714681343; c=relaxed/simple;
	bh=LgaZhZXsNl2B85OQ3a4QA9/ccRoMRpVqMwgGzzHnxhE=;
	h=To:Subject:From:Message-Id:Date; b=T5bRLVvqV27QJr8fgW4o27uADq02NtY3bp82qb0vAPiCLDy3WDvmQ2xI5W0eUc/VQ1jcqKV287phH8y0SYTSSRws2C0A+brrGD3jDsZGNr67TSbeYxUD9vTtOMGY8MsIpZ08dn7S8KTzXg03mq9sdIka/NCLSC7CkZaALxHYxYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncPt/3ja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncPt/3ja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76E9C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714681342;
	bh=LgaZhZXsNl2B85OQ3a4QA9/ccRoMRpVqMwgGzzHnxhE=;
	h=To:Subject:From:Date:From;
	b=ncPt/3jaQidj8/NlF3siiURBmPVX4dueRKo2dsS7paoJgI2IVFQRrBN/xIVR0CNNH
	 zHbrlvGpqigOMi879yXKTqzE2WZb5nGz4h+Io5yEK+b+gVDVy0r+ZqJSijKd3ZHYGN
	 9JsltJOnV4hg889A73ei0lqYgZ7cOuJUPliWkqYj85CDIeEHuz+sDo8b+evAEUz4NK
	 yumJjPUx+GNljxeCYR5t3zFDfa2HhCQw7yFDYB3IAUAw/qDJe1QsnIWVilIsKj0wdu
	 EYN7VhE/7RA3KMp1JqdniqMheWnQABCSj91xQzqNH7vjPgzFqVjAQKN3i1AUlPAN/4
	 4UeHgD6WWwbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DD1C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468134279.20118.10048266916587640795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0406ce5a1664f1a5f7401776a9d6edfbc9ac465b18c613e9cbe6e4594550b9e5
Date: Thu, 02 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714681342
