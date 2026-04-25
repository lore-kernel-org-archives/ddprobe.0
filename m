Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E8F21A447
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777147654; cv=none; b=S3mPgWQP32F2TgB0VrJNT/wqt7BmYB950AfBSX+ENPB8UzLs9mqrqAQR7WHkdRWBDa8VJX1G52Y4xXn8MkrUe/8qmYtMW2oGmrSMNpHwSnUDiDGdx6bYZpshYYDfOcmXtQ8K83WB/9xpOdTpillUTPXh/HmppTTXtXf0mXyH/Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777147654; c=relaxed/simple;
	bh=Udba8Xe/R8ChrA3+6ePSy95D4pbsfGuutXiosGSg1wg=;
	h=To:Subject:From:Message-Id:Date; b=O4GUiv6lHNZsrVibY4Cf1JY/TgUlZ8Lh/6K7OvcavR9xGDqICZVi2B9zOJR+rBgvHe7b5hm7V80OwSWYfES/37rdDJnjEg0C9/Yuo2QQFP+1xrSY4R41k70YP0A30YfYh9hM3WEJ/855jIHfGz5AUtDqB7RN5mQA3J091P3NgHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaNzemL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaNzemL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C127CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777147653;
	bh=Udba8Xe/R8ChrA3+6ePSy95D4pbsfGuutXiosGSg1wg=;
	h=To:Subject:From:Date:From;
	b=VaNzemL9xDp6IqFw8CpAqTvfnweyOy4zCUBoWmSyIUobnO/tq1XDjWfqGCuT6PQTY
	 NDj08cO0fj32TJR3DUmqdJig+rQ9RRCVEVBf4V/2BtSY1PP2qcbrKYFT6xzGofe6nl
	 vBUGc3hHJe/Mzlw7Uv3P83r5NbFkMoso0VacNj5O/tGA3iRQhnVzeLeDH1hu1L5VQ0
	 uuPBpSbmrifwYn/5M08z0WA2UK+x0MLkPeFZkQwRam0cwpbw9/NS0TiSAY+epeyv3Q
	 LbyfzwF6mZ9fXCiPq0DN0tPJnJYOXuBWAIJOd/ogkKEnQJk4kLMNzgGp2KaALw9vc5
	 gWFIYIWgJIOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9F8FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714765368.10538.4820111628124528155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3187ea40f809ef2d817688ab4621d0241aaf0aed4d330dd00a9c963ae9f6706c
Date: Sat, 25 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777147653
