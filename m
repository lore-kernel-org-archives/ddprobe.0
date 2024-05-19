Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2A712E5D
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716097343; cv=none; b=QRUEu+jAlr+EjEiK0B1Al1qA5I2SSzCbtSidcQH5TMAR20++/Fo8BNFocMnDDUW93CsrkC1zEyQyUt0ot6Mq/UrE+7xAN22KlI1QdrbakzIx8oAjE9et16coVhvrjrYMoL/UZohzUj5Ctn8D/MxLs/WDt21EKLv3CYW00AOOMhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716097343; c=relaxed/simple;
	bh=jaehx2OnX/MhGhHd3VW9I2vUQ/5TbLUvHQZAf6u+yBk=;
	h=To:Subject:From:Message-Id:Date; b=OFf871bZ8E/lq5wqZDPE01XU+PW3mENTlu7Zd/uJfETSYjJvvllLOVI67CXx2cxgRmv42/GXDJmClXZdyZqLfpIivTZGDcjb5vblwsql6TUy0Bhyd0qNxgQUGq/MxMj90wJTXpzlvCSLsUr6ej6cTdP29dL1LJ4y+JZqPYhqw9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWalzY4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWalzY4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB113C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716097342;
	bh=jaehx2OnX/MhGhHd3VW9I2vUQ/5TbLUvHQZAf6u+yBk=;
	h=To:Subject:From:Date:From;
	b=RWalzY4X0pvp8iUk7JEYWYFibGF1tX2pYmbu6bJcFOs0q8rPWq855IaACiia9eoV5
	 INb4Iswuk8DMO3gV3i4tMqZJ8hr282mZvPbABl0RahXIQwxGidEHl4P+4eUYxuRbjb
	 8w1jYP2Imm/Co+6PEwCnM5RaZWVybluejbYJZJvWy7aX7lJi3t0YdtUcSf1pnsh2b0
	 2o+P1wIKl7qhseri6cm6zBVtwNK0EGq5lQrM/gHNU2y0HmoieaIvYYNQr+mO5iQwEu
	 TA8rSlTuq8VQ1KDmtOAToCZvBqHz+8aCsn3+mRI32JtmrQ8OWBbOEuv1Ox+fZKR3sV
	 6dngBAMYPOH5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77C1C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609734277.31202.12242639041559089403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0effa26db9cc08abd818866124e95b239ea85f3941c928d1e6de62f4b97344
Date: Sun, 19 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716097342
