Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C80BA47
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735782354; cv=none; b=GJT8oYlSD4rbydO5ac5yq+VHN5oo7LihkpbJZIr7MaYZEAPMuadWO1kkqw5LcNmXtH/W0/mXs5qRgG5WU+LVS45nB3/UeAbEQHA5A2WjN5GF6y8ropmHRbEZs4BtQBjHinzcq/TQuu2DW+WEuv6ohMpXDuqremuHfKljDnJipkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735782354; c=relaxed/simple;
	bh=oCIc+xrW3UCb4E2Hw8BzmeBJ9E970miveYFC82K3GfI=;
	h=To:Subject:From:Message-Id:Date; b=LaBcjtQPhHvf7JKsc9XBr9bVq8/yTgy6vYXjsib4K8bsID7kDztYIMH7Pi7NXCB1pPGh9/ENv/XKSt8ijdZ7Scga4A48/eAeSGfy2qgj0x9AqRmYMaQzA7t58bm5SttnTcJM8y7KKTw8eEJ0KdyO7bGbng5K0nUOJkVXvkH0yBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQ8wF+C0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQ8wF+C0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE756C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735782353;
	bh=oCIc+xrW3UCb4E2Hw8BzmeBJ9E970miveYFC82K3GfI=;
	h=To:Subject:From:Date:From;
	b=lQ8wF+C0jFxkYoLZD9nQhq95F5vnAK2F/UfprVQ3KtYwJBSwTrzcW8d+hw2Aw5XiT
	 3OA4VExQxbmio65/6v7Ak1Avs9yiVzqBsTF6RFBUxe+IIWvCZAeyh3/z0wYyMbCwTX
	 gNDtEX/+PxNuXuv5mbUsoR4kvTbH6TknbDrm13+4bdiiPrwmwgEfTIZDqHDYjxcRXU
	 16n6OvSnHVCgWg/cKq7QwpYUlh/lxZEJMWeRttHTGvv8ioGXyH5x0li0JxRtS2W4HN
	 zeG6Uq9IbooAChKopBg9QK2Ks2VcSaE1R8txSC8OubSn19gT/PWGZ/Sk24w4XKDoRp
	 0RtHC3DEdDASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92155E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578235358.30599.13168600256244462398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91727c4e513d6b79d974c2cab98a04d3a6ef9f63ebd478c16f7c2aa3498d9fe
Date: Thu, 02 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735782353
