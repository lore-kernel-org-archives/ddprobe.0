Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4821C233709
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741174734; cv=none; b=inUQNdgX16p3FBqT8vGlk5Gi9RwnDZEBQ07krbiQhszLykzMb7x2YNmrbSoCRXQSfveeFv9KA4lCggnaQqKX4giW7SVUF6denWjpsQsDBrRr+ZwLwjbLee3V7YxMQfo24DTY4wRMatT9pJaMKPSf2J323Iz9gEF3W3WURqULGkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741174734; c=relaxed/simple;
	bh=KDrlA6cR9NYfgTL/UKHnyqpqB6UcJa5Igxt2ny6xlR8=;
	h=To:Subject:From:Message-Id:Date; b=PpPhPKsZ7nTwX5qz4DmmU9jwI80lt8MdNWYpbmFkFdMx3FKCfP0qo/TRji639NeW69Lv20qJkxUZVPVA3wPxAgfZFST6BswqCjkVqAn8f4wSwmttbAWtfENQPYTy7FDwhJLxWzxRkZgbN4Ty8cGL2Gy1tnvMlXBYhKuNRrRSSxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhP3PxTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhP3PxTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1EDC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741174733;
	bh=KDrlA6cR9NYfgTL/UKHnyqpqB6UcJa5Igxt2ny6xlR8=;
	h=To:Subject:From:Date:From;
	b=ZhP3PxTD2dcK+zVX7Fkfz+vtD9qlAWt94rvLxesN8qcn0enMDfrUriszpDRkW6iPM
	 iVr1qfH5syoCFtp9SUt0aYCYIxyXNBbd4b3Mw2mtlxQ/AYbVHWbL9Js3hgJXPx3rwj
	 3Fi4H6bqu7TVqg9uqd6Fvoc/8+4ZnPfFU28KC3OQH6P9BdyJWbTvoTH5DL3KSoKcZt
	 JIDE3nEg5ms1ybKemHmB8e5xn86iapt9xLdxQWOR6mxwfKM3WveZpgfXNwaT9cVWZL
	 Xe4m1ddFNvpT0KdXUU/0Dx3edsmrPeHjpLgYOpkluWkZMiQFW3iX8gY/6Q/g62+WXJ
	 9QAtv2SSjjf0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAEBC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117473363.7740.14786653877460896562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab69e1dcfb1f66b31b0d4c2fb0d6d5c51ab79ebcd839e959fe14bd78096caa50
Date: Wed, 05 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741174733
