Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E5579D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751323194; cv=none; b=IcF6f4j7h97t/6yZnK8NkhtXroOlq3YHdg+AHBhNnUDOrJWSEGzIWU8SAinkbfqvGuoxB65X/mqZGtNvkNdo5NEbvEg7n1aTUfTPewMn7GSAbMsmokMT2G2QUUnlUQ3HUYkTVwmetVjUe/lh08gSBrMuh027CtG00ISya/9pv2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751323194; c=relaxed/simple;
	bh=UaLFI1nEmit+vUYqr3EPK8FsxYCMM+kZCjYgVqvIfLA=;
	h=To:Subject:From:Message-Id:Date; b=b3n8eJIkJLbwmyhSTvZySn9sI8BXpWwzEH4tPdQzGud/ro6grl3cUNN0CUALZdxlT/IZ3ekssMBP2cVGRiwXOgkPT7ZhniH8fEpog6lHBtpBlCMqQqfvQUTM1atMky3vLM5/BM9X3er3pDOldV6BL+tZSj7eeLRtNyEiB6IYgfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fItvZo3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fItvZo3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A078BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751323193;
	bh=UaLFI1nEmit+vUYqr3EPK8FsxYCMM+kZCjYgVqvIfLA=;
	h=To:Subject:From:Date:From;
	b=fItvZo3dSip8F5O1gmLQRySWav6bc3RU4l7uZZRz03IT7LMY8SzpSV8L767RDRbOf
	 Rvp6oaFiWPsw2rts9rM+Rb7muFjwbUMHjnKJqxR9jRqVNwmI+YJD8m/qQRLmfHdfr+
	 bKCR+KcfBhk8lQIpFSj1yR4/FGD/C+RjGHcdaqfGDnUampol0EhNJxGmW9d/pNuL8e
	 S906345p1nqv8AZ0MnxU0LfFrZCPaggSA5R5+m8eFRjYu7QBv/42L9tL7s9qnlcaHD
	 K+o0lQMiIMgGFXtyMTI6xv5AZsUcGhKHQNNjBg40mGB7MnCgDI7PGZAfXNLb9o8eyN
	 WhKZvILDc2IjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E872C8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132319357.19804.12887687033935902066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772c237eef3f393e21569acc107d2c75f409b872519a9aba87301772640b0015
Date: Mon, 30 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751323193
