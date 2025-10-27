Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D75306B3C
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761573594; cv=none; b=fgUb+O8GAo75JK/udyMfcv/g+fqulphu7J+3zAvii5PtqBsYpGn/qhuI5SPXgbaOeGIWUHplD5RIxqZA2rHqNwqLF0LHnBxKXwJZFHYZ3qQi3VEdhyS8qaVfBb4pK4evYWKdyd4Rzh/yiKth+7zO5HYUxlVLwmtOeTMmjMDMe74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761573594; c=relaxed/simple;
	bh=sJWmXIqwhDMmeNe9lJ4iZHL42GxjCMZnUVnW+z8u8ak=;
	h=To:Subject:From:Message-Id:Date; b=nIjcGeCVjB2sggYR63WTPPYovLmqjknR6jJRIEVH653dniyZ7M/8AfHyrumRSFojdEI+FjBuDrNLvU2CpZrs4pJN7s6A7RQnQJXrwRtvuuoz83dOn4zvq+YIdR57XmaYwELWHeljwyCXqzhE/wAVY0FK51p2wRto+wZmr1Ri6q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qffqh5TP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qffqh5TP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761573593;
	bh=sJWmXIqwhDMmeNe9lJ4iZHL42GxjCMZnUVnW+z8u8ak=;
	h=To:Subject:From:Date:From;
	b=Qffqh5TPAmNW912SMJABVGvj0agx4J58n+ThUj/ju9WhQ85n82GzCxLtSDQiBdblb
	 xzVLuTtkfdTXI/264C6dO7DSQ7ZKqgVXAooboXasN6cweZ4SG+D+Vw1yh23Vv5kli9
	 5P4dPEaFYJDb5vJ9plogbh7RI6CMbfPCsnQN0KPvPHCf7borw0oFv2IB8GUfAZFoXJ
	 Ev0ES+NKGenPeBFHuQb7tyYNV5tVCHe0Kfei24Nl8F1KJrBB95kR45jr2V+Hn8AC8V
	 6wgsEpkYbjS+sr4zlpIovgbf3taiZ4X2HnbjraD0kgK+t8fM3ZMnLii6Llpp2xMIWH
	 h9Ml0l4H/gtVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E2CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157359358.4247.15837440224444159586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d7378c5e93794c936d1e331ae06c69a66e0132f27f6905d81309c0de20bd18
Date: Mon, 27 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761573593
