Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DBB387593
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773400494; cv=none; b=mOucnpfAIjEYsoypo9Uycdwo1fbjr3DAkH3ZQIezLOU4AMFqeyeD9sx68CiaNaAsglSCXyf+cyzMisgnfi2dHNF40OvYolc7LZ6pdPu/tzFIrCErChCWqiIignUVt5F8YcrX/DYmQ7ziqNsadNnYx+GiTw7UCtIMj3N0pxY8f40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773400494; c=relaxed/simple;
	bh=KKMkEt/z3pHqPH4pgSHDJrpT12DDMXPtYsVQQ9dZvTQ=;
	h=To:Subject:From:Message-Id:Date; b=A5BysUMt64I5AOY+W5VWv8AjkNH59TyHpQ1HMmpJEOHYrnz2AiyLInVgGMXZAUyuKA9AF0zj81JY3cuMfVtU80s6Csr09seF54LwYGr3AMDqxA33q6j3MB23E1qH04z3XO/gxgU1897lPBXPZWB6xE4XlPzX5I8KfEX+5gE144Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha+xCNEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha+xCNEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF9C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773400493;
	bh=KKMkEt/z3pHqPH4pgSHDJrpT12DDMXPtYsVQQ9dZvTQ=;
	h=To:Subject:From:Date:From;
	b=ha+xCNEIbMNF1jE43kCKTg8X7JeyW0nV6kEbfzo/ePg7Mfl5Kqh4USQPJxq1QNXJM
	 U6F+T9V+KhBhmKSqWl55X8VfcPu5zF1UrwAsYKKsxEHOy+0onUPy9+DHHLyB/5/iML
	 CwXJOr1aAY7aKlIyEeuWYylt7H60J+fhT1llJhXgccWw7LbPgf9ap8w+7Oga7S/eQm
	 ojhGwsBkTbB8w+h0snU1yEBd/WGs3s96UH2CzFofhCMG6XvZT29v3mP4x97lyJd6r6
	 4VkrM2O2blOjgZr/qn2S2HbGZEhJJXRQ0PRe2E4kLRPRlxzJtWRa6Ngi1/FeDLTmRP
	 4goEQ1+ruYHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9A3105F79A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340049362.5968.11529815465086938023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f0358a64bd5dc395920ef102c4ba9d07767c265bd4a46cb40a793a34396301
Date: Fri, 13 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773400493
