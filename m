Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2DF6A320
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711713496; cv=none; b=fKaZqSfTNwJ5CpT+fL/wfPHcJ8w+PM7ApdAYix9L5mNo/F4kfRW8ncwocaRO/Dx8OHkttPkT8E+nXRg5qy5VTT+vSsesA3nD/6/TIYrEq711DYM+OYfKSExBJ7OxvI5LzEdS0jULNdVRxFJoMwy0Lqab47rZFUQhgJ3CrxAL+bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711713496; c=relaxed/simple;
	bh=zUFWyB/My4aemMPGRZHu3cARPrdFIkPKAGmFerCwz7c=;
	h=To:Subject:From:Message-Id:Date; b=AqvZbByv/WuQsCymH3R3O8tJKxxcaHN7sz1rzbVXyaJw8uJ8uehwUIOhbiDw4z9UOKeIYcNalxw9P7bzCy73pAk5pU7zwTeguK4nK2t1Lm0QTPB15FZC6FJTdSVYcAxDxpUwX9V5w4Xc4egcxY5aM2Wg1FVZF/IIKxMObx2yn7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBTtXPIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBTtXPIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819CBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711713496;
	bh=zUFWyB/My4aemMPGRZHu3cARPrdFIkPKAGmFerCwz7c=;
	h=To:Subject:From:Date:From;
	b=oBTtXPIlqEuQLMyZfPkPCNxh+3ho53mjLRsPJw1X49f0q6XFPOIH8y9J+M2lQJVma
	 vWWMFgRWADsJbZcFq6OSYq5btpr4CIrsESG6F7I3w75NdrdvD6i6Y3VCeY9T5KpLhY
	 epa8/4LrxGpghzDpdqAneBxYZmu4/LidsX2FBHU/0Fje6nzZ2hyc9mVijh3/AJD9Fr
	 UobXyFU0aXIK0DZTHWdNCeAHbCyYYqTL8fhx0LTDOGQw24QegvXmwFElqhIQOz+8Vn
	 otYeewAiSUp/RmtJAz+SRKEik4Z9bXV5zwnxNDIypY01QwMMnZzdT/BjDk8iVljkho
	 6evIIBNTVynKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7348ACD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171171349641.22021.16799757777528438506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4386bc2a9245ea4ae4a3c6f5e45386a62f7cb5cb5be87cfe8bca89fbdba5824d
Date: Fri, 29 Mar 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711713496
