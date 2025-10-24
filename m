Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250E01C7009
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761343794; cv=none; b=WCGwC/25YNvmU3jOR7Dt3d8iyOat/6lHwA922Y2hC6uj0jVF8D5VgeAqZ4IP2qo0qCksVR7fSSL9G4Y2L7EytT8XJJK65BV3tzMegRp63fSq4WzBB8CTY9c8fBm5iXBYZWWw+swl+rCUl1ICcLmudZnvdrXFO3rydPDp4WfzdNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761343794; c=relaxed/simple;
	bh=R4sLqFoR8LRvtes+jetGkNzzv1FR/aLCB+eZUJMWwHc=;
	h=To:Subject:From:Message-Id:Date; b=HCy/UyBMOcKEQXK2gizUfR4pzTj510p1npWMUvEcLQ7NYkQet9wkfdA6sNV9Y9FnrBaN/GSg4t8hIuN28k66h75yRWwAXr8ogia3R60f90fwmHqDRWlWIiOlIR88ea5zlv8VqLAg6At3bMwB7cgNZfqp3zj87EgJE/zZWuhYPCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7J8stzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7J8stzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC59C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761343793;
	bh=R4sLqFoR8LRvtes+jetGkNzzv1FR/aLCB+eZUJMWwHc=;
	h=To:Subject:From:Date:From;
	b=X7J8stzUXByrbiDyrbmj+r0xhaJP+tbaD/xiEICsj21suSOZci+zRvZ9JqYrjz5Cs
	 dIJP0QoUT5QhG9nV+HaWihW/E5ikx61rSh5a86biYgamNfnGwlIs6zpPExwzL5oXGI
	 mDp4vuiIl6l5jv909uxVig9sPl6zYOpweH4DadwXJYn78au1KRwB9TGHj8F7aV/XJB
	 4pkNhHMYUX+pReOtxAm7XcS4igLVB5UJz4dcpp4ZKVztx0YMVJwvK/g9wgf/kW4nAj
	 0kPiQc+W1I0Pqu+2fFHvBeAG4WyvJEVp9T0ZsqcTyHob3TsO0+ADM+pqXjkPgZ1r8E
	 5y23lolwD5xuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E530CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134379357.5273.5111377480330734792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e893603f3501a55b9e0bf239fce8ac3d96f9d4e8a05aa79672d2f3a07f45a962
Date: Fri, 24 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761343793
