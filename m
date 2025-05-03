Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD6B182
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746253794; cv=none; b=tFqICJkcxQBUs++2L3szkkdCINjMGNyaWMe5O6qqnzDGnH0BtovSbRDSmYDG+D1+p8/bI48AX17Ud5f7OntVaRc6odtSGLtM8gzIRl1XfSOeqOCkGnygqxORJlwkOyOJmegKR0o5h4L4XBmC8tY8paKox94wH9PxSMLxycubur8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746253794; c=relaxed/simple;
	bh=huI/glJ8pCVHaVsQLB3EfLR0/KOjjm0e0IMa5m+k93M=;
	h=To:Subject:From:Message-Id:Date; b=PdPlGgy3YVfkUPPZHTBY1vVQkig5A4y21KJkNGnSMBpjtcp7/sftG5cfHtmKsvqv92lBJH2UF93NHdEZsfXX9mJQV1fA6ArNdlcz38pW8kxwklRBY8mD0gEo9soN+FuWTIYZ1hhBkha9hqUEOXgR9de5EBIPY7Xpd4eB6T5BFrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZ0L+Em2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ0L+Em2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA00DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746253793;
	bh=huI/glJ8pCVHaVsQLB3EfLR0/KOjjm0e0IMa5m+k93M=;
	h=To:Subject:From:Date:From;
	b=UZ0L+Em2hdvjIpYsQplL2Hjg9QurdvZ6wU6629CIqT0HIbuOp7eYBe0Z9HiNafU3n
	 //kZrd5K9Iny7E83+WE0cHQBeXKQu4Mh73mBFXcC/3ZnlKhod/CLdgPzg2lvuEAZzO
	 OqQo38gWkf+4SJeUMOBTUUdZz9jD2S5PfYDssW0ohVMTgnD25+iaBnseXZl0oJYGIH
	 8odW3fXPLF+poCe5DSDHQoKrWvhzA6CLdXTLp1JHLlSw2oyYAdldgFUpRdoHob8ssj
	 IkwS5FFD5yMp7tUcc4zWoa8EPFLStFmudy5uAhlSH/u6lDLwAiKiCvAhol58EhSRKG
	 SwdSvuQzsCdCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A62C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625379357.20504.10322840953549560875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b00137f8bf361f2ad3f3fc5c98414d3d7fd84551200350b56ab4057bf04db2
Date: Sat, 03 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746253793
