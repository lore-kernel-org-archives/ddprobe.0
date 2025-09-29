Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104654A07
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759104594; cv=none; b=O7TF1B2AyWshTekeWjiX1e5cqOMz7GT0MFgXpE2M9cuTjjVSjz8dyBZRu/MznF0LP7dsGa5J3S3mpW5J7Ue2QPtd2oqQ6efB2Pby2Us1My2rprv5tZX4oqjQx9+xK3UD0s3aGaTRUE4lUx6yGNDOm8JeDFt7f1Xyd09BkZVKUC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759104594; c=relaxed/simple;
	bh=b3W7Bvi0rVSwfSIj3+GVsFbw7RN61XpVW50ZQX/KwIU=;
	h=To:Subject:From:Message-Id:Date; b=bGOgLuFZMK5j43ZU0sr/iUMMjXKC7uTyet3520CL1wvw5jxdCWDdrsz1p84kzO2T3Ek8QZu2NLxSLE0APUnI+2AEKq2pLzbl49UTixe5FQlN13l+NOlVMzWASQIya1VEkCZC6E1kpRmVwhYWNEOm9iUKo9nZUE3uy257bq7FiR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrUbIVsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrUbIVsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA2CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759104593;
	bh=b3W7Bvi0rVSwfSIj3+GVsFbw7RN61XpVW50ZQX/KwIU=;
	h=To:Subject:From:Date:From;
	b=jrUbIVsBHP7w7NAlRq8xuooX9HyfY4oZ/sYR3PgAOxiTOu8f8+YPABkl7rAA/XlP4
	 YWZLlUTHGJ/Zf92yB6tB11TbE/PCi3mKOpZuGhzrIiG7AF7OOAFfHQWsfZ6izs8HVq
	 SFfGXfQVBlT9d/ckbOm/2+PH6hS7No5KLjPYwoBp59flIVMGd34BlBvA2ukm7/rh2k
	 llh7JE23yuRsUWtn3AXJZyghQAD57pDjHqCECDNfOLe3Ab+2PISSArTcOJ0TXU31qR
	 R8vgzniMSmRT9oyR6vSMvupHSZiOWXFR6q0XBrgQbBm4jk0No6UJCfzeicTk+KtXwI
	 DLG95+l6PmjKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A863CAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910459359.7199.8582624860392767205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c54256b40235ed7b47f8a448d58d5a641ec904088fdc73cf8b9a91bb848c702
Date: Mon, 29 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759104593
