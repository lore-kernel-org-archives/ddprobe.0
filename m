Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275271E2834
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753262394; cv=none; b=oSuGP3yL9DJzIIQWGkRvbLGY8J3hFh8KFUcUKwN5WGRwvW1lAdV2HILW/nGRfJBiDbB5Qa3QvFsqV+QG2XY4/OFhMjx9tH8ybZ5OF/pJcqkw1lrtLZJczGofm5M/p2vwJYu7DHCqDJx9YtnDRw6nj2ATsgWb66YtGMvS6xvbeuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753262394; c=relaxed/simple;
	bh=kBQVhUwW5Uu2JKm5Et9rT02+jfYJANlSjTNwAmhpw/g=;
	h=To:Subject:From:Message-Id:Date; b=Ui3PdkLv86futGoWY/DWysrQfm+qMa0IB0LB+ymdpm8BBQ/xOaVtIs1cx+nzgl2oi2OyIXvJS8LO5RPjoOv2Xqb7nj5EPOBaQhCbGJzaUQFjeOKlbVTmaRGY04H+uXNBIchQN0tdDosalwN6wFollj2uhX9FRleq2Y+eY0MKeWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV347+/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV347+/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753262393;
	bh=kBQVhUwW5Uu2JKm5Et9rT02+jfYJANlSjTNwAmhpw/g=;
	h=To:Subject:From:Date:From;
	b=DV347+/A86o2fdYorBaax+BS71hjq/LzW7Ux6iq4kUj+6CaOVaIa3YfvW4GH8GnuI
	 QB+KBdZdkw9G8JqTXVrItILKpiFfofgsGE68wghdLmzxVzNWdZRD0tThcNgi1kfdAl
	 tV2HRbpxPzMxQQ2fa/wjIAAf/eoofaGhZpQP3keYelGA4KY/FounQ/iXKhfDWvSYeH
	 H+yRFhxRhvJRpFGha68JKWUKboSG4/aGm+5pmJSB7uuFEkeu8d3/q6iVuaaZ78pIiO
	 tdyux1hFJKlxZQ+R9zoYNyy4DErA21VXCxavO3ejZQP42joANiAFMOHFJVSixMaYxi
	 QjzRUD5/Sa4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F466C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326239357.18351.5220527341165211032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a795414f05af7804a7de4f7d4b1df141efe0b58a77a3f7f32e5c80343b2b29c
Date: Wed, 23 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753262393
