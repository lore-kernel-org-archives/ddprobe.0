Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8730448820E
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789989034; cv=none; b=SNthd9xf+S80s6NkhZE7wDMnGI85gxvUFhN31Zunmo0H0irvs6EqcguPJgFBHNjS+sfghyU/BsqqXWFCyMzAzyyytxwh6dtIIDOLVXWHaoFqqe+AezQgHxp03O7+6Nlsmdzi4oWq1jv7NHyj7J8mOB0tULYOUCH4uKGRKeu4kbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789989034; c=relaxed/simple;
	bh=55pd4L72GTLmfyyrqmXA0GKd2KByn8F3et8OmAOSeYk=;
	h=To:Subject:From:Message-Id:Date; b=ra2yLn7roD8x3pXYtlRm4kNah2r9EXim/rrdL9783lZVEmctSVHryatQamrXNtUSrTqQTLe7Ct8InS1ufLXHrs/INSKVOJFkbInWprcTVJ7U8B5W0jHnJHhONQCFxglMg4U/GeDIHmTPRy3fh372HS7fhZRCDLzc7Zv2z6J4c+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6XdlGu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6XdlGu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EE5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789989033;
	bh=55pd4L72GTLmfyyrqmXA0GKd2KByn8F3et8OmAOSeYk=;
	h=To:Subject:From:Date:From;
	b=L6XdlGu+AsQb/ZMe85cZU2nYiU4Kf78txJ0Wn5eXpFXmHf5D9qTzGWpK4mFm7Wzls
	 IinN8T9vMFrvEPgevLAC2jIwu23A4Llk+DKJ0i1rBFwk/uFd5WurhlbJHYZM6qLK54
	 z6S6bHm/RfoPLTcOGUOb/oN+i8OvEvArq5+LnJ//X/G2Q2c/BbLcTDFWcyBXUYKH7P
	 UmOPYKkqlhz5NeT7/R68q8d1fMVKxmlcl3h9S1YTj5goaIqRuBzek6oQqVOCgiL8pk
	 nks+5c3bJOATymUiBw1Lgf2mDOd6pMvwNUZfrBMDUw3pRZ3gENSs7HaNkOR1ISZW5f
	 FpGoKAvEJGicw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF03BC982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998903370.17846.421515111924466066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a156b91f1a2439b863d2ba4d65581122dfb3b8f9ba6c0ccecaebf49d47e48430
Date: Mon, 21 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789989033
