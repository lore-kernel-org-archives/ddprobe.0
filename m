Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E912DE717
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772386494; cv=none; b=dc3/vn24bnfQaicLv8IVBDNi9fjzfzBAI0p0o7jCylIp9SZtIWljjDydK66xEIO2r+nWrsJTK1QNjB46TWByKDpqfQYA9TBX/C+v7/+SuoccUowcQVnZFT5Sj5hFHQiqlyFe/4RukqSMLNCEAWcB+Nbz4jYrovryVnsVxajUcTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772386494; c=relaxed/simple;
	bh=DslwIHzvdIKU6eQP9R3AR7pduuWQJC+Q0oqGfMZYWCY=;
	h=To:Subject:From:Message-Id:Date; b=ROsluIzDauooNnMrZX1CrBY7eY1MZuMaR/5IFU40nIARgYOoLhw3X4uNVxHFiKNNqqRaAbst21hAmSSLTERCosjjDDAZEarb33lW4F6C5FHpwiVXkx+ntscBKy5/VxfAWl7j5YTc9j4XXO6owbqCJIyNTY/N+YcuHus0L4bONBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfn2pk2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfn2pk2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A85C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772386493;
	bh=DslwIHzvdIKU6eQP9R3AR7pduuWQJC+Q0oqGfMZYWCY=;
	h=To:Subject:From:Date:From;
	b=hfn2pk2CSifqD+Z2qPuI64f6Euxrz3HT3F1A/kTBYdNQER7nhWjSJ8vY3M6M4f5VS
	 zg9Hwh84Mv2IL5PldfLt5VNBuVxlN2bM2b5KukO2RzrycrB8BsohEYv9NvWVY1y1j2
	 vj4NASsVl/bInmnv6v6WDlAy2Uq9nwufXQLVI+c2HDUTFmNZkS69V3jfXWs7geeXFK
	 V7Sd4fKRL0fyrNsLG0xtMOB/O2Wd6nETLQktYIzxTGviDzv7G6Nk66sQe7be/x4xN3
	 4o1ZlDLsggIUicZUyZgMO9V6wtI73BpElVqk2QjzT4dNdeYfnFqxpJoRFQMqqgVN/E
	 pU4hWS+2NIxrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B142FD006E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238649359.16244.9211761034465131454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a111de91f9396e452806b568e1ce9248a1ac1b5cd25481ab8810ad2f934532e
Date: Sun, 01 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772386493
