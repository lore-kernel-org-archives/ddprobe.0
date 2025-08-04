Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B9423BD1B
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754332194; cv=none; b=lY+IWKvqppX/gTx1o8yxV1rIr2rCz/335UX95/YdgT6jyYd2bjSdQ5W0afudNovwg9gUHbcxiU8plSCOrMiDNkmlFTmUEZT3lyEKAvy99MqHmrqNcrrCSa8ALHn6imhDMYN5T8Q8tSV2xHb4vAk2nSQuLYkukytJId8BRqwWHzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754332194; c=relaxed/simple;
	bh=fFTAkjGrZNAqMh3GnIKT+7pMzcUhwmr88Bfi0XV2YsE=;
	h=To:Subject:From:Message-Id:Date; b=q/3NQOZUpIz1hKa0c+aHnVX66HTorvnjHKTY9GkkGmJN+7XWC2WwsaXCXat7D13jas+15EW7YMqonYdZkKR0cjpadHbejzerRUYY2+oRkKeaKJpsenPzokjoP7PV7B6UF0bx9uErRuZm0pnzmCTSSt0H5+k9KbNwhcSj0n53W/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8P9Kj3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8P9Kj3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB52C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754332193;
	bh=fFTAkjGrZNAqMh3GnIKT+7pMzcUhwmr88Bfi0XV2YsE=;
	h=To:Subject:From:Date:From;
	b=r8P9Kj3BXRhq4ew7egNd94AHMCcsUz5BCX+LvtBJim89zwYxMpzPpHtPNmM/DXJsv
	 iEdiV7WZlE11PDxtzfJpLhT3aZtrmZPJIU60Z5vKrzc1LzuxgsQbCFkFdVCpLIwXrn
	 cUSxE/NmsDiJ702tXyUh27CkxXKZKxf6pVTtQekdaAgG/Jybqf521Yst10sxNnB1dm
	 qJhvYTL6gGHEbKhNn++7QZfB7ZhI6giE4UIWXA4HziLJWx+zeG8rVYvI/T1rJ7kFs9
	 j2v/yovRownl9U8P1fKFKlGHTVPAXfI5WgdyZ96eiiFjrpZMozTHCWL4awpNzv5zfu
	 sGVIZpU9QDPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F86CC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433219357.31864.16755179613129100463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffe61c478a9afdc4c180bccfcf060608a7deba885326db20f007be09151bdfe
Date: Mon, 04 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754332193
