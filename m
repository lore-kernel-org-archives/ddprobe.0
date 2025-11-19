Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997312E7160
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763539314; cv=none; b=VLRvcoyCKV+XPSALeMymVfo/z6//xj5FAQfqBtMQ7RZSh9YEujT+mKRpM5VZ8yhXu9/JbKytl6hXhsBh1l7csIVDTeWST0X9VI8C1BscHFzTTRuXIzujUWWUMvwUBB4z1zKCWnVwXxv6zVm+Y8rwK7LXcddhRQDbWz32gGvHmZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763539314; c=relaxed/simple;
	bh=KwMa32dQ/mJ33k3sezfE9Fmh8mmlpJ92ukabv7jnVqs=;
	h=To:Subject:From:Message-Id:Date; b=fQlwTg9wAfzLVIwHtp4yYz2yjmvcbboHCSm3WPFZVUjx3tGSfrlAs1mutPtCw0c6y+46UVtbTd/lUiTz9BCJOc4dIvAifxj3sbiBasnOmfroC8YcEERn6+1DkXYOWfgjaAZ/e3ABD5XKuCTwR6yWtXkLh9nh1ikZY6S3m9PA7Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy1gcTW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy1gcTW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EEF0C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763539314;
	bh=KwMa32dQ/mJ33k3sezfE9Fmh8mmlpJ92ukabv7jnVqs=;
	h=To:Subject:From:Date:From;
	b=dy1gcTW44pckT2iFZmKavw3ntZS0sMKwGeAM5NCrfaCY9THomw6mc3jrtC/wuvKCY
	 bo2BMCryDxE42IYK4nZcmY946YZt/2UbxKbip1MspQ6GMW4ZznMe6VH2qMiNeZij+U
	 6YzvjvVxB7VB9DArPZsKl5wG29+TOxOUAt+xKoeyEGWGKt1dkm5Hhr9HQAUyvH7Rjs
	 ktQ7/DBeOTEvn8+gIT4PdunlA5d+xQOgFcSdetuNNeUUS9V5DHE0xtIJJN1uBsSLHJ
	 o8kDUhsNnJgJERrCDv+0nnfYvMD8Sr+YIQWX88/GI3PY+FBl4Q6kip9ey/Au61CLRg
	 Pirh9nJ+Mo8Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2559CF2599
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353931365.7275.7157758386955828902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e38ae4dbb5998ee6a4a35ea275a32f51f785b83cadb9ed6515705f6ec1c610
Date: Wed, 19 Nov 2025 08:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763539313
