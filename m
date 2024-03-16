Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F336B393
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710557897; cv=none; b=QgJbqaiqQZH1YpZTz8HVrV8IZV9Y1KfOEKUiFcFLZf4nSSoPMaRFGCBgIkt4x0Tibqt6KDj+xpsbOMwzRixbAD257nm4W29h3lWmmyqAYpgEg4JHbvXLV/pJRdt7dvsfXsry1WVZBKkvy4fVeHrwBCZKkBGfu+o8q+ADxCBNEtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710557897; c=relaxed/simple;
	bh=g2RQXNvTm1EPfJ/DN9hOF0HiSMc8dLjHr3vlbIVJgzY=;
	h=To:Subject:From:Message-Id:Date; b=IM2KEj9tjXOa1zBXA0WkjauZm88aB8XTTmAHgoUGsp9TobPCsd3C23uqrELdNTNquwFf5Z7t/N9a79mqOXpl1vDF3QcMbNSlv6nX27s3uBLFrw1xiWu/e1kRUbRViTPhMyIrRkv/uq8oRejNpVxjE2CEgges2M6ph4nXisBy7BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMrGMmQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMrGMmQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77785C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710557896;
	bh=g2RQXNvTm1EPfJ/DN9hOF0HiSMc8dLjHr3vlbIVJgzY=;
	h=To:Subject:From:Date:From;
	b=EMrGMmQ74ZOSJPsaPppxeZg8/q8kLqYe8QcmEdxmGuH2xyzPTN478Nj4erwKgVq2o
	 xpynQfmE6WgqXY8O+Z6eMCY4xEq7LcJbMr/fm6C20qxV5XSJ4yEZNn0/GJDqN+oDhf
	 uSUdeObfOPdknqsdjcEjHDGh5SgzbNZu/ZKyVGZ3HYUGSxFvGttV4dDj0qwsf0QTOG
	 0nbYddH1zx/i6zpVi9DE5XbgWmrccLIbdbQg9x+vjZIrZ0OlSnANQwcR2Cvz46OOhg
	 DGafTo5HyGROl66f+t/0GHJBzi7f3ShfEI4DjMon+2yXOR2VeV05fKwmFo8nJEt9ia
	 +2Tks0POclSDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65794C54E58
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171055789638.17389.5730354246903809222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b50abc80c6c4afef7ab1546c3137790763cff22d0dffb33297ca8d1c0c5df49
Date: Sat, 16 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710557896
