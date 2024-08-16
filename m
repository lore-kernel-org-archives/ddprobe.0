Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3367A143886
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723800354; cv=none; b=d2Nx6EvuczTIl8SPlffB7BsjiwUyBj1ij+yNcs/jc5PQguU9S/8bEKZVPbguWgWdTkakUYmdxpbozre9GNy9vUEpX/j0uktuyN6v/0/9dbCteWbWwOsh/awzp4KrW1/PwF9kNsa7Z1O0OpoGql0N8yATO0895b9zcR2t171wqos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723800354; c=relaxed/simple;
	bh=YrccNcbtJTLhUKvLUh8B5AdDiM+19UjnWON0T2Rvqt4=;
	h=To:Subject:From:Message-Id:Date; b=Sz3IurSyjKkYnmGtyW0RY4+eE8K4+o0KKNO3DCsp1gYBZXUbfb77KU90AX/reWMAVMKcnN1NSllSXqok/6hKMGrXqTy/VY0YpQk3OOwFoTOa+9zBwoQfAesl3V3klKhUYD9lbJazEZmzKhSds4mhed+EcR/wXIYqVWNl71psNIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUC+3DMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUC+3DMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACC3C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723800353;
	bh=YrccNcbtJTLhUKvLUh8B5AdDiM+19UjnWON0T2Rvqt4=;
	h=To:Subject:From:Date:From;
	b=rUC+3DMu1FuDDyJI0tsgtGDe9dyYv+avU+0Fii6Gup7oATwhoLxkIGo+QuDvYu/ZJ
	 w99YH4pmsoAVRhJNiaHJCGzXtcbrOinguujjDwQj1VG88s7TKvcs5tbq+w1KBC8kD4
	 tigYIRcENGby0ZpD2w+YzJqdhPrq2jm8F4pHRubcr+Rezl1xS53XxC3YA8kxTpvIew
	 A76OxI4fGIrKsjfrqX1yY8BcZHjYhNdVBtScJfQJH0xLlGp1FGWYHLProNUlZ3/tA4
	 07CdUYhTt93PUgN80VmvCrmmHo5P7vzwTGz3aBSd1Pe4xjYQWgM3YvnNHf+y3wENeD
	 sSeJKlJxaW0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36C5C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172380035364.16990.7340270928166931804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3cdef0dabaeb9c44d70fdd0d48244130bb26c5b2fe71038a7285c1816850ff5
Date: Fri, 16 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723800353
