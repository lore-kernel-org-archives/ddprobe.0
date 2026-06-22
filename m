Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BDC245008
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782092794; cv=none; b=FNtF1202KeiYsEeYt4CuA3hUK3yTBM+mFW06EflUshtmEBArtP9Z42f5OI/u7j79tQp9NT/5nDicqaes7E5Cemi1cq6jr35cW3c9JOILDfZKXIeqhPa1nYtXiedtbQbMlDgkRfav72JGS7Oie2yS0FW3BGGX8PZeA/w7/zf39DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782092794; c=relaxed/simple;
	bh=KBtISVpUJuxI3co7PYuVxKX2REB8jgWJ2yzVK8dwbV8=;
	h=To:Subject:From:Message-Id:Date; b=uIuzRhMLlMRg/X3e2CMm2o5hTg+aQnK0ORbk9ZBhp8AArwQN+DfwCEiRXbKjCrOo1XqyCQl9Cxb+zD3DWcruB2ekTgMQFgPCScn/pISTLdPsMoStZHez2hUzLisi5ZG4ZY503NqT+/THiMBIjzAuKvW/byIq3IZUwu5uB/70Oy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eqg/pVqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eqg/pVqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C31C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782092793;
	bh=KBtISVpUJuxI3co7PYuVxKX2REB8jgWJ2yzVK8dwbV8=;
	h=To:Subject:From:Date:From;
	b=Eqg/pVqnb5BgpON/uX4Pbygy/UqALsGAh43qA1HWmPJNshwq8qJwobdvpAWNKJunS
	 fkjX21JGJEtoZ3iJZzuJohpI9idWv1b84fGQJOl6gQ1AY+OUDGGxmR6pBnN6AdkGeD
	 4J52s8iHPexmGw8yZU9kkGdtHJ4xYTM1F4fbuigeZUj0GLqOPLcFHRwp9t8bCqiTEW
	 zx8VmDK85EW7w5zryf2Sc3ZzFgiIkUfrm7CTI8k+pZYf8s59cXK5TuDe+Zfyn3CnXI
	 CmfLurhi2bGRf/ZIzNY/hTWke3aaHB51+HR5+7oXH6cEgqoKrILc1f23X0FJ85c4g5
	 V2RgeXcL5ZHpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F5CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209279370.7201.6883736234047320119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3970f94087adad3b2e98279c840617f0b54bef604a31afd796db488edd65aada
Date: Mon, 22 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782092793
