Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BA6335BCC
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756492795; cv=none; b=S27E1lrNyWO15JWtZSvPOzDqpTJtzrmlxM9Zkz4QdP8dOiaqDTMGlDHWhXWUb6w7SKMS48DVsBa6TSvoDh887z6PWcAjOKAzjRAvjOtQKGhQxIF5JhaDGaa2luiFplkj86+PbkmwSUb+3htbrd8KweU7a1Cs7WjORTTECs0Mq3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756492795; c=relaxed/simple;
	bh=WEKBe9ixz90wqPcRu5q/fE/ijXd4FcFZzgZzGJB1Tfo=;
	h=To:Subject:From:Message-Id:Date; b=rKkExQZLmzelfgHkXacw4wolDI121zVKJ2u0aMhT6A8CoV+Cbr+hHwihj0B4RCKERHvYfTHCgiYAmtQA18UtP8UnSZ8VC0ufe/cLHVwk8OBXdjhUV6KXUgTrWkavyQCKikOV9KVEfnUBxZhxPRN3CbbHxih/IS64qhLDpwK4Bhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdsgVFRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdsgVFRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8738C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756492793;
	bh=WEKBe9ixz90wqPcRu5q/fE/ijXd4FcFZzgZzGJB1Tfo=;
	h=To:Subject:From:Date:From;
	b=MdsgVFRp/+y84feCKwJpS7iyd2HafVE5F0zcVX2yHU9N0jM3/TzqtJeBLEDxB0GAF
	 r8AfjsWN5lUMFYhQyk1WiYDBqU3J41ggCGZevVmBAJHIjqDU+0Ri1nKIx7PBfiBCJZ
	 PzMWvjPglEJXnFtgkhszBkzUkDgmggMzRUE4oo98VUGww66ebllJUnyYzXgtNuR6Wv
	 sy1UxJ2+FISwmpv/3R3ndy7vC7419umGCly4x+nPXrlYURYt9k1lF2mBAq0k/K6+1i
	 8fIsKeWLXzJGETieXNGUphG1wG9Eepzrv93uJLecDxqrs2kc55/kkr9NiYx6GGFuCF
	 jveJIF5ZBi5LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD38CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649279357.2110.961458641825483156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3159d956d8336810fe7bbb0dcf1ebfa9ccd35f121d7c4afdf0f20a9ee6d0bbf2
Date: Fri, 29 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756492793
