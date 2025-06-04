Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D00D224CC
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749017995; cv=none; b=mEs9izyqOncbur151qfe6pp/w7c/zK8yJQmNKM65od9Ta/K+qKMlLk6QYIpOaxnpkd3rR4ZjS5RTMtcx2JhLztv7bhCkLP9z4WJUcAVJXwN2fkmNUbERHFklbIGeIDLmNoHcmLOFOUWelyuEMkGCZNTCRhD009baaJ4MV5Lwig8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749017995; c=relaxed/simple;
	bh=g0nO4b/XyHeVdLeJeWfhA3fNrZCbdKHNww9vaB0XlYY=;
	h=To:Subject:From:Message-Id:Date; b=A9Z4dz8UUG1pJgA0b9TTzqklFLT4KAQexbwZTUXmcnRnhc7UjNFZcsWMDXM7tTHe4CBjxecraRCqz/YM1gj9/TNrSgu0VxpcitD6mUjLV08r4+KuPQTJorHnHA0rPK+zy0QwzXpw41iRAqioUVShouHXpj+g8ANgWJ9DUqpe278=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv0ZELX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xv0ZELX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5080C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749017993;
	bh=g0nO4b/XyHeVdLeJeWfhA3fNrZCbdKHNww9vaB0XlYY=;
	h=To:Subject:From:Date:From;
	b=Xv0ZELX87I7uyvO2KNrp8AOrAm6Ejl/V+qjI+ZqGR3tPNGJ3IFlV3liER/xA5AtEw
	 gnUjm6QEddz3wWzOwzDhXc8oM+jrr+wGlFCL0di12OgoAM01q15oQv7krZXioAl5Fj
	 FjnMyF6saM8EDRP6k+syk5w3bRGuQEDN9mIPDiRh9+GbaOZlbfY6qrfydbW2N8PJKh
	 lq20lxvd9SH9amhrOp/VcfZKvzXD/Zm2lx8qi1SGxQXJx5KSaDksDrvxeO9xi5yHRg
	 iOWRLY4E723LLCyXmxdUwNC7AAFQ315+6tFu5n34pRF39kr34tuqIhMUHKQTaGzT8Z
	 UdRQkLxCJJTFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B69C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901799358.19648.6837860334424435789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5425be096b9e47acb679149660a8696554023d449b8b815708502e079602c756
Date: Wed, 04 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749017993
