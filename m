Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3C23C092
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719789863; cv=none; b=uFepjRxHd8tPPjXnNGK8sqixyrbUWaTrXfe1Pl/BpFdY9hhxgoth9IMvKM1rViRmfWQfSTwJAh0DwzMwIM2SR+3u+3YOj1EaE8rL1vJ1jAKL5QYBplrwTNGVzg4SVGf+vriUTFw+l6GBeB1p275q+ZkdB4yx6ydkUDDGXiYKk0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719789863; c=relaxed/simple;
	bh=tWlYJMcHXcSvEm8iPA0AqJcDeiBiHnFRUXgyQpIpVBM=;
	h=To:Subject:From:Message-Id:Date; b=WDavNt8Vrr+Bk71wjD7IWeGoWvuLoHW2evH3RjJPCjMyAk9W5Vl7KzNpbsYQqOSvpxdwtZk9F/TgLEvBINF5DQWOC/yfw6fB2dQJI7lQlL3OqxzXP6RaOHhuUTxFyhjDSmuTnUBPgmgX5J9jIuDfkCgCQ+blkrC7SUFOBFeGT3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpQ2wj/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpQ2wj/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5463C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719789862;
	bh=tWlYJMcHXcSvEm8iPA0AqJcDeiBiHnFRUXgyQpIpVBM=;
	h=To:Subject:From:Date:From;
	b=VpQ2wj/CPb/ImbtTboDEAitYcg8LwFl5SXEE9vvcotcop6orlsJdwQIcCNjh8b52K
	 x1f7a6c7P6uR/u9bgx8NFNMp5QRM0FRfEVslXeYJ6zp6Aql5No6YC0uwVNSYesw7Sk
	 U3dU5dNvIKMHJOqSf0s9S6vWWWQocf89NKDCeUy3e3Pq8uYxqMLrmxJ9wK12ob3WAx
	 NgNPqoUBL7Rc18rynKcZCsxypuq5N8/fB1m5K1wtPdPNH+82Bd/YAGZJp4jCykYpyG
	 B+mnEwSgP7cr9bwUWj1YnBfi1KTTM2vGPfatFLOVg8RprpTxnH3/FWjWO9ZQ5WLtGS
	 ig8/C9v2rGHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB647C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978986279.7672.5108552481287462331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a05aeee6ab7d1d9d0760528378b3668a74670cb5a62ff03edb8746bd5d5d68e
Date: Sun, 30 Jun 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719789862
