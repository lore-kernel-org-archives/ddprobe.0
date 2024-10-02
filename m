Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4AE29CE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727871954; cv=none; b=jSRtHcmQvVVce+ZucumrnIlF31nuhYWrWQluxPlDpseoPno+iDpZ6cJ8SAjAeU1FN/DF3ILi8BDeQSGOKtp4xbsZtuJRDoUYN4QVMR3vJj6HzXBL6h3AwagLxgSxPCktwPZ9o0xPIPf7St9+6i4Sb9yUwFlDPIZjmW0vQtvgFxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727871954; c=relaxed/simple;
	bh=rkTZIYwDcQonSI27Jbb1ImwQ9jB8YYr3BBoIZmKdW3U=;
	h=To:Subject:From:Message-Id:Date; b=Rp/4aTAr+8j+oddB7lM03Ye4Oy4AXrdhYZonOE5o60TP0+iS7oujvh0F6BZacuQVGCw/1pYkUpdvslhDnI/nVJ+ebppVdFPeirSJLT5q2Sijohqj0SwC1bfGzNJm0RA2LG8gG4PgcSVy0LtKYHySXqLPTsQop9QBVEo6aEbMv1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgHN2Vhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgHN2Vhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92EFC4CED7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727871953;
	bh=rkTZIYwDcQonSI27Jbb1ImwQ9jB8YYr3BBoIZmKdW3U=;
	h=To:Subject:From:Date:From;
	b=HgHN2VhnnYCzfq64A+Gk6kT9bJPU8lV7BI1EmF5+Kc9li7d95WYTSNxJfLkGSfWYU
	 jJ8sa9rKO03VLWmCZLDmwvOExcSMY8AMAnDehyKc2DDN4VF4LBopDCA/yvnZBFyH5N
	 Jb0YC33qI476HdonT8UU5MShnDvKoGDnXmowwIPVz1evpDUBY1UDog67rUQuH/sK84
	 Ys+eBRxkipVX1ApzduwYsiSyoRo2qNId1OPAmsRCRk0qqgPZ/Miog8wW/mMjNd83M2
	 PDcqO6+WLUMdNmo6wAekZCTehh5PO6lyQnXFUc1tGw6yyhTp8ngfwxHcRXqdBwJvq8
	 3iFe+KBLLfGnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FAECF31B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787195358.26350.784096852827574399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42c1b578f5f78f257c73f3d5c4572660363e6d971ff226c927ef9bf90783f38
Date: Wed, 02 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727871953
