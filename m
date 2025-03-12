Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD2A79EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741748934; cv=none; b=YQPlaye/pWEvwo8AZKvLODyLBHngl4xDA2Li2iN2O0vGBmqnM9jAI04vO5rjSxTaXF390TfdZoAnOsFTDljg28TPNccSFsC8pM5FrhOOfwAt7Ep7AA7XD5ygR+AgU5J3oHNFrQOgaAyQN12rnQIsdSPhgludQ16Pgu/xpvhnOJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741748934; c=relaxed/simple;
	bh=b2bOHjZVEcGtvPIJIn21y/5dMPD7IJsbcULwgHyM0pU=;
	h=To:Subject:From:Message-Id:Date; b=MujUryoYdxs49yh6CGmulCwxUji5aqM+vmAkd2oe9scCIsuLpRbe4jCUEN1JXVAhuF9ZBgxrhqLu5V8QNuibKMvo4y4Ab/MvHcTtGkclBlv4P1i/RgN0U+CWJY7fDIumQf14YxwK4ieuJUVDJfSI3gh0+4z6fzbutFsGYOYLyKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHLhsOuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHLhsOuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FEC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741748933;
	bh=b2bOHjZVEcGtvPIJIn21y/5dMPD7IJsbcULwgHyM0pU=;
	h=To:Subject:From:Date:From;
	b=GHLhsOuhdpe5ngGr8x9VDcP0grDCQqUeqZ7LuBl2jNuGoPob+ZFxL6F3C/0KEnS/u
	 r6aUcYgv2x1z19F8H0AJ6IRrrL+NNHNrTfUnFRTutP5ziPgi/QlzT5Vvg4Dhh4sfwa
	 7ZhnEm1p3uzWTkcRtmy2wF5IogBLaGedsXmnXA+vx6AAhFOY2qbZmvZ78QvTVvNTUw
	 AAr06jkq9AZDEvYiECxbHngKNGE0ybVEQe6lFJQoNB3mHUTZ7awF9vnM8sEnE0kPAo
	 xMCie98enBorlQFhcTQCs3sMHcELkmHyXlq7FME9OAo0hLLlJ7SKWi7HWtLzvwpr9K
	 KduXDNSnO5k9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE0C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174893358.25148.3484819727888300232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9fd331628affbe5aadf2588ce63f33830449fa0c891d76f4e0e2106ce968da
Date: Wed, 12 Mar 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741748933
