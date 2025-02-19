Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5435E4C91
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739925534; cv=none; b=X4ime/gLyokgACDAG8SIBJF1Qedxj7C1bFyGHgsbv/G84ITRqERJOCF4A6po4cUlmSXuEwN6SjgdZMRp5sQTZFTqgCdtO0kE8bWYD6wZb1WuaHQFZ76Rd5QXzc6Q+dv0+aNsiwNIFO6b7kky+rskZpp42+JaVa+MtAmRLq8zGXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739925534; c=relaxed/simple;
	bh=yKABT0XPriSJBit0w+IBr3k3k75UVOyFviusyIlEhcw=;
	h=To:Subject:From:Message-Id:Date; b=APmcTGZUqSydwYQVPd51iZ2hK+MrxqbuvswNtJ1IBP19mqsf1G8OE/nRS+prgFRMf9FyUe+Is6nrqGq21ww8m6UoIgCUvwv2jput0RfZb/z5HAjQ6x1XMCz++DnAXrDLC6KA3q2kITPhGlNDafzf2AdQxk5xhAcM5e7TcNOnLZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/Ver6gq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/Ver6gq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D4EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739925533;
	bh=yKABT0XPriSJBit0w+IBr3k3k75UVOyFviusyIlEhcw=;
	h=To:Subject:From:Date:From;
	b=r/Ver6gqUt+qN+snRPMk1TEXrSbES6/qTTwyWtrguLVKlk34U5VxlgvCK0mgx5PVh
	 LGVPy6Tkzv2DZuTnFIW9qf6V6RBtA1d4cWqZ1zHXur8BHa1usrEaJTJzi5pzlmcMbV
	 qv/T6rKha2N5peQ2UBBlzIc/A53xv8st0maC59b4CakA0XTAJhyKxP0ccR7/lNJgLR
	 V5paTRksbdFMS6gulHWjx4CvNgxSccj4vCzTHa4GCnZZxohXb0siBohzHjvaYkqqOV
	 WSK+m334o6Tw+JmWaB9kHDOWtfXE2QTmrXZOeOLiXZATd04ad74QfqYk74+nTfyvPB
	 lLLuzXKYbxIMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2400C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173992553366.1705.9086155892324941004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa866b6e716132534ff33654a56eff096609aca767bcc4d0f4af7634d481b464
Date: Wed, 19 Feb 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739925533
