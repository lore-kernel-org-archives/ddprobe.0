Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D5017B4F2
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716979463; cv=none; b=I6l/avCN9cEMmoNjJxeat/+vVfJ+nyE8OpG6KKJiPgucnUqMdYHG0Y2E+nZv2vQvwQdoCRX7Yy3rPD1GDXGYe28NRnqmEzcgyv2j2oTSfymHWA/u6TsQWJqzQmrsePn4g5afjs8yE93ThfksZWF+YmSL/NS0fpfseelZs/Sa4Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716979463; c=relaxed/simple;
	bh=oguUow1bk1VtwYrxxAQ7jfGwuhHM3Qi2BaKIoZgloZg=;
	h=To:Subject:From:Message-Id:Date; b=oA1gd4W9u8RF1naxodvjuHTPOtFlh/6MgjDY+HXFbrvj8mZanIZxg7wrQ7oyWzjas5YYJz0OBPnnPD9MoWHjxhBZi9uWVgJu5Hdp9r1Ru03IVSvcECl/J1UEKdPpTtff/5+l9ZP/LN7i3V1I7BQs4LSA2skAUz/PSWq/Mo+CuVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuKKofP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuKKofP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42CDC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716979462;
	bh=oguUow1bk1VtwYrxxAQ7jfGwuhHM3Qi2BaKIoZgloZg=;
	h=To:Subject:From:Date:From;
	b=VuKKofP1/6HtRSzAvbOaOjYVmP88jm8hR4DZmImP9TLxDc5aTW7S5pPRxeCaWFnlm
	 j5FNuO0qq5rd4CYghK9pYYPSYJ1n7HBAdnmNj9ICrgQyDkR2fsZwXdI3E7JJVkwx24
	 XMKFpI7J8oLF4I8ITvpbLXv+9La+VI1MSauW9I9gvOR49j5SIm4oPOIbBUNYdZh9OK
	 uzV7W+7UWxyqxSdMQyDAGLVlbO+/gpqQ9XUqJrJ+wNuR1XWSIKqJq80CcGJ3EcvaHM
	 H5LR4zz5dmZADsQ5vCB858JLJvUzTiepfcyxl2EmCGvAt7r7wQSIVlQ2dzpdVbLayx
	 +RFUSDDkAF+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E97C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697946284.19369.6805358856844131323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc7f957eb1065bcdf4471ade173a4db8c920582047c3e48010727b9a3583a66
Date: Wed, 29 May 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716979462
