Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C1D21ADC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791936034; cv=none; b=hcUPzex+ozvCIFJBG9qxCrXmqaG4D/WHQ3cOc2tAgYgLwadgTRDD8WY6c88y+q/wMdhLJTzjL2AEuCKvwlP/voBmLaqX3aKxwVns3rvFYgRD6lTUVA3iduH+i8LoNfgQACUBcQXadUoQsXKtl6QFtloJsEe2VqBsoN/9ui4GtrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791936034; c=relaxed/simple;
	bh=YTXzk6XL4u7pG/rY39jV/rYpPxIzvMo8c7gwEA0HTCw=;
	h=To:Subject:From:Message-Id:Date; b=cOYIErwiv5Zsr6OvqgufzaCt/XsEhnTJTBDF5/NZL8dZhWeuMTfJbifoNoCqA85tBUu8rac8+jkzumGyKwUFkw2u0Nayi27cEhEBsn+mjB+o4QZ4oWqNz9gmOWYkkSRW7VMduf0l7xzAEk1eA2fnMBKCWQEFYsdufKlR+9RuXj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7P5R0e1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7P5R0e1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5889C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791936033;
	bh=YTXzk6XL4u7pG/rY39jV/rYpPxIzvMo8c7gwEA0HTCw=;
	h=To:Subject:From:Date:From;
	b=W7P5R0e1TiKvRvRtt+oMHLRHkJg+dGnvfMACp84b6Cvkzt2mEoPMapBO291lZPYgs
	 HOjHhKdK0bdLj2jhypIY0bj9J4W2+lUBHtWIPFs+0pidcp1pkSEg7q2jzB/IE+C2dW
	 c3T6oh7uEnTrYn8CspYo5guh2nOltphWapB80dGXEZFEXR/up+9WvOLNpgTTYnIUN2
	 QyYnrc2pzdIh2T6z9PW1b9Cr+o6ze19kwm0cvZDV6nJDX/QkTqk4oKchUNbr2IN3dg
	 9Ghi2fBBzpIqOws22ZYi7hlJE0Axsswj+CVKHAS5MkPQ6r3OmqcRiv42h3+Kk3WZmf
	 5eqyjpX6TezJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A2DCC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193603371.6636.13771749309912701566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c249198796eea5e7f03468ee5a0dff83de9c92efd6a6fdbc13415e47ce7bc8
Date: Wed, 14 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791936033
