Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DECB274FE0
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747653594; cv=none; b=HAKpKrm0qrJRBq7uesghASz52gPL1Uvil5MJw/VQVpuGficUgIaeuy4FVxVt1px35lHhMkQ3s+hZs8A7iIQRPqrNntS+q8Z2FkUqIQE/kLVSyNPqeMtRG/CPiaaTu0LeO1P4vyEqXkLRBggHGtW+mx3bOVQO1bLECycR/qPQsvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747653594; c=relaxed/simple;
	bh=O5AzE8GK9DlJtM6pBJ8Y5rXNrDIxHz1ctvlvnY6PQKo=;
	h=To:Subject:From:Message-Id:Date; b=oJCJJl/rC2b7lS29VesUB2aiV3ejUmpaQ8QgcJsO0F922dq/41AS60iGs6fXQh+z6/bGjbJZjCbCXuc0V+FJ+OCtYn6VsnaWY5FHCEMWclzArj5E2l4Z4q85b5dcfI7hpDUseCWsKDM7cr1v2qXraXKHCRFsiuOkUBxOcX2KwsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbGZkQoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbGZkQoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A5C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747653593;
	bh=O5AzE8GK9DlJtM6pBJ8Y5rXNrDIxHz1ctvlvnY6PQKo=;
	h=To:Subject:From:Date:From;
	b=tbGZkQoZxNpbekY+g86is3D3PjV8vG2H4YwRJlR4NudwLlvL7HI4GH36wsMraLpNa
	 RaPNN6bLQ8osPk6hZqSoBifKTkl/GPqmLnjYVRnT4guGtd/OLzuFaZD9FBAYBOcblE
	 azfPI9x4rYWH0yNVKN2b0969gHQ4Zbk9lx4hCbNEzLI/7O27UM0xcsjBh2DCHuWXIy
	 yp3F/a8JE2eJW0s89YsskkBpNw3co/wRTvE2K/Zriz5jkCT3lQ39TsqkknC/dOpmQU
	 iz4wFHxIVI9ZRMVSAaS0CcY8s7p9KvYzkX884lT01QvVDzU4vjWXNFLARhvMtjqq6s
	 5bK6dfR+ECJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9041CC3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765359358.30985.10726638487570838775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79b934d9dd0c3126c349a0838995e3b8298157e65876e2cd54dc656f2a32d33
Date: Mon, 19 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747653593
