Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E9815217E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719058943; cv=none; b=Soe6m+WQjpFYX4RkH95fXtnNJjKXYf9HO2fcMuQaGQx9rVB3pDm7J63EjtoQ2KxDGwFi6XQk2V/g8n0oMxbr0cWgSmx9Z1GUinCWvMhwS9YjSxgP/Ji0bVoOQD+YfjzEHWBF4+zK1BJLnVkEZiXWYNG2ndOItHa/ZIz0QpmTkj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719058943; c=relaxed/simple;
	bh=8dLM/wvBX+2dC5/u7/u0iumpWfmiNl4m4Obx15Ijd6I=;
	h=To:Subject:From:Message-Id:Date; b=BMz/pCcpa/2ZaST7cbrSTHsEBBzfJsOP68q1kWy/1RRVHv3lheeMQHN8XLmDPA04Bl6ifB+YT+JNQNN9M0dy0GAZA4dFh3i266kdTP7m77bqDvgtzmvZw3GC12/I7MIaEAZqcfSn9AgAXpe6ESItJjv2Ay9+//vayrG/ddFtpGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/Wfx4Jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/Wfx4Jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D38C32789
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719058942;
	bh=8dLM/wvBX+2dC5/u7/u0iumpWfmiNl4m4Obx15Ijd6I=;
	h=To:Subject:From:Date:From;
	b=V/Wfx4JzPpycBCUWW6hKPD0IyE3ZWZU5FNcZO1eNYZQPW81QPYrKjatufoWX8j4FS
	 dKxSbt02QJkjJVwIKjkXb1oU3jWgEW6lXUL2hiUncII0yZyAXGgp9VK5cGQxqXpnMe
	 susGBIVUu49V4OEL1qpIpXbhr/Ae4VcmRoBtt07KghxOym/qkIxcrov7GTR2h2x6mY
	 0Sbt/oByTMl9RbE1xgfheZYStvEujx1vwlFAg1XPPIdPxgQ3wcdsigafi7wW/MdOoQ
	 w4IGMFJ/9/tp0dgz4weRNU5Vzk2sc84GMqjDlEE/U6ueHbyemF2amfebxziPoYd7PR
	 m20HIutP2UWCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10A7C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905894278.1390.7310732417644331947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430bbd878da53e6b73481c72d417c6cea5a08167fbf498058f278d6833b61b1b
Date: Sat, 22 Jun 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719058942
