Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1556419D880
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717613243; cv=none; b=KzDr9bP8ol/JhSTODFw6IAlQh0ZJMEjZD8ozwe7fVCrtzUdhH+Sv9JqLkduyJgBnM57FCYHQ0lthyaq+ku82EP3FYa+k0oP/lvP+ntGqRgQczFdyPIqXoEQmgcoENWDdIXfgukxNaMMZwA4vEczuYytiLNkrtb8+7cFMWvulK4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717613243; c=relaxed/simple;
	bh=+u1HIjhNTIqAqpRzL+VtFXDM3GdKfwvXFcqo4V/+01k=;
	h=To:Subject:From:Message-Id:Date; b=fAD3AAFEGSGYTvbsn5OWvlaWRl1p5KTg+TfsK1anxgl48sdpvLGWYFNGFPnTBKAHyyDiLIpOHgOxxTldvXHjKKcstq3AsSmbfsVS4aLIkZ4Uyrdqcq9BC9a6H0vSKKfzy4R5qSQX7d6NUdljzTtxb/X5i6oBkHxjtYZTY4+mTBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxpUY19X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxpUY19X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43FFC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717613242;
	bh=+u1HIjhNTIqAqpRzL+VtFXDM3GdKfwvXFcqo4V/+01k=;
	h=To:Subject:From:Date:From;
	b=IxpUY19X+a1BA5KmCtXz/SWiZxY3Pi+DM7Hk0roziw1I9AJlIy/BfqTM72mLbERt5
	 VngUDzwdq9UmE+dQ5b2nq3dwJX8r/8ylH4mjIxcnR9zw4MZWSuvHJGDXmiIdB/lC0o
	 2SQkZps9DISlpvOH5jUJgbnfcQeFvt/bfXY/kKMzRFSvcDOgBYQmDQHYTDJNS128f8
	 Es7/IJgyMHIs1RXtt9dQcgZbldKNBkUh4xdS87Rabbh462/0W1ZxMd4TzZSMfdCL1N
	 au8HzkOIrYGDQ53YkWMpY0YmDPpYRseTy4qLB4scwYkjNgX/SHZ/pgWxy7XWXQxvsx
	 Lt7WMBKrWvsAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3948C27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761324279.24974.9440360748640007927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcd3229a67e6d234c8b44405ac49f4be00526432cb7546e94cc26dc5b6185ba
Date: Wed, 05 Jun 2024 18:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717613242
