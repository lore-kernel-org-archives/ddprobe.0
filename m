Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190C2C8EB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784782175; cv=none; b=WBRKedApjnIX7IpcS8N1fS9SNS8wpkOHEjjzNXnbMrB1MoBc5+l0zBVAkjpAz1HiGYfFM5UnRxnee3a4MHQWkw+p8qEK7aY1XdQIyVrjkbI2sn5D59n4qrZEl8eoo2bS7tAUU//+lqS6bf289hUQlKH+yM8EAnhn8uUpKAnMexM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784782175; c=relaxed/simple;
	bh=dPa/HSBCy0z8129kuxs7agMH68zCh2gk6W0RxZulcq0=;
	h=To:Subject:From:Message-Id:Date; b=o3YYeRLMe7G6qTpMAEsxH64pPkSDN3nSwzXenzJx6sA5zCYDHzRbuTu5dUNyeE/lKlvPDGxLAsAH/8mawTT3ry/Y1Ct8b8T0dauS55R3rkIp3x0AxSS4QjURqHKtlECl7gbqaTsnQG25RXw/NwW5RqLoR4BmwflSTRMQ6RtNNCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB5458vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aB5458vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA236C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784782173;
	bh=dPa/HSBCy0z8129kuxs7agMH68zCh2gk6W0RxZulcq0=;
	h=To:Subject:From:Date:From;
	b=aB5458vq6RF68kHUQwlAo9s+fOvIzY86k21LsrhrQ01CUS5Yj85qvy5QkiMTFCIiy
	 47AP1TuBPdJ4yN1NNmZlZFcUSANLxpjbQK6AGThGgRMhfQiPJE2z75G/DjIzkjMQEh
	 WXotVYMcN00p1LTdkg0ebvwFggU3TY5uSvXowejnFUi0LAd/yeKNbbWey0aLAqMRDE
	 +7meyX9TPwQC3SKrI6Vjdz3rUlpGQiU7CLIO0ucGuznqRT95EgrjHhvm6QZf/6mpa1
	 pWWJnA/hkbRxooO55EAfR9i4uNXj+RvhG2xHYtMDrCG79BiGcsFp61gFLrA+utu5zw
	 Pn9N/EmH59fqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF140C4452B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478217377.21579.5610797673331346512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120e80d96159bdd24345836ee73e4d8c2ef5ed9d8ecdf96903e72a0723a037c1
Date: Thu, 23 Jul 2026 04:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784782173
