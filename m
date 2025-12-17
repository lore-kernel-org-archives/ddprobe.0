Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CCD5478D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765935234; cv=none; b=Cozs9uFGxAf6G7Ig5EV13b795OBW5H/lkaeCr0oZLKj224nMOf89jS7+EcqsTxHuscx7/H9h5Vb5T48copHPTT8/64WD2lgWek4BnHt5gfuFu4kHJcI6jvg8WjimSOLcnaE/4h4wVl8xiYCQIZXz0GzwMWQXHffUbUnW/Krvk4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765935234; c=relaxed/simple;
	bh=oqnrq5in0uQE83DRJdsiPpHswoIE8tykxRO0QXRAyY4=;
	h=To:Subject:From:Message-Id:Date; b=uMZIiXgKzI48eSBPB988AFEOoXq5eGeWHuqc/lsDw6RRcxZNk0oAuwXQeTvXmzdpDj/awM8TyRIxzCet+wISXVhBk81bPMgeJU2+xJNLkXcnYzZ4l8v5NG0urUJombt/oH09Ow0t6VsTgq6ftdZtbfxaP1lqBWOYZX54bKxLiQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6xTuGa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6xTuGa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B026EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765935233;
	bh=oqnrq5in0uQE83DRJdsiPpHswoIE8tykxRO0QXRAyY4=;
	h=To:Subject:From:Date:From;
	b=f6xTuGa61NlJwN6OI0AVRPbkv8KpkEGc0QZNYv5fCjzF39Gkkm13xVVlTdta+PnpM
	 pnJjmmJvhm3UU2WKgmy0dK3fsb/zKfS5CYy2g1DyP/r5LG84OvTJWrwuKw4IEllwYN
	 2fm4Fw8W1LaDtnCy0ZYaiZkMkZ6Hkh6MA0zHe5EQB4vVP+H5PDeoTjhrnHsfVkLWwA
	 Q+y6WhwaqCnP/XcGgWDR2YiYxSOn/lI760i/QTK6Efy/NmwoazXxVVWR/+VNpZ6wY7
	 z81innJVVc7MzZrerk4G5eLkMXaFRkMU2vuwFGbn9Sbc7j20SHtTMskv3MpoyS5FtE
	 63982yn0rOw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D4DD6406A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593523360.3282.7063588919807024308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa68f86463bcab9822aa06ff3dce3e83fc48a6e45f581c0c2f47b8ca88caf5d
Date: Wed, 17 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765935233
