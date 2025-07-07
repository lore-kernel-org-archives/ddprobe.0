Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2020C2D052
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751853594; cv=none; b=rmg+pFzct7ChIbxY8z4/zjl7CRxJb/tW0E4tHnkBEk12dsLsoD8QvkhWhoxCvkzodO7F96B8M8XAr8ZVxgjwtg55h0OSHICmFORJe5pXU+Ge4Gs36BEnmip+ie75QhviA4GBUyihgQCEXogl7SHd1t013y6oErzg/C2iopBwITE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751853594; c=relaxed/simple;
	bh=qvhEM2zQ7SUHGwjzN7Y9dmM9QHAPdR1p/uujscNzEgA=;
	h=To:Subject:From:Message-Id:Date; b=F5K6xvldt56Ga0/t/Nig752oaAmOzeS75s9ZKF1rxgx8hORNtaK4nUvb7aifi3boC0yLwbWtU8Mt56TrgHmFP9UifQh9pxFlj/2lmtQtS8qV+JIbcIfO18aZ8VmEtqP1ABh3lUPg7RFdy4Za0cOnJBB4jOUF6X1qKhZHgwDEDhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbMQfrJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbMQfrJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A030DC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751853593;
	bh=qvhEM2zQ7SUHGwjzN7Y9dmM9QHAPdR1p/uujscNzEgA=;
	h=To:Subject:From:Date:From;
	b=bbMQfrJfAOqkSjVaDNnF0EIx26e4swirtn5uwIVEEF/kwFchyzjv12d5L8VDAq/LP
	 RrdgLRDWgBFvlQ1GKOd6OU8ub3snXf/pFS96xTDeCT9+nhvKxYxoq5DsmyZg+t9zcG
	 Tz3EamVOSCpIjW5FNed92CmtvrEIXo9KUhvvNcUr7/DW5lkOuzEeaDB0/jGGTNXh2B
	 iqIFl+vvSGYpEs3dYx0bpJnaMxbWO5PIzg9qz9Z6RAdcrq+x+PRrAxSXBEx096tH3J
	 azIt6/P0ELSqTPcRB//XQpOjmHRLA9i6O/KgMTICi6EpVjclbhYdooH9QR/heoKRsg
	 Ct/ICZ8YVE7DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC32C83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185359357.454.7038794168114876053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5829b9821fd2cf5265948d0abdc494bb06883672616f9c96306b71805e52a9a6
Date: Mon, 07 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751853593
