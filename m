Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ED11A3172
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767768834; cv=none; b=DM4pFP7Ya0BA5RJ0uhS2+SLFmxm7JtD4ZAC4OTAlvwlBQE1PcBa9wc8qxZRzxejso5kuy1EK6PM41gn9k8dOgsgIWsI3uWByi9AIoVncXEw4+EmIh4Z81q+qs5Bp9oBtilTERJiKs17RM211ckdlJXddAZZ3Mg3vBw3h5isT9nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767768834; c=relaxed/simple;
	bh=6I66Gon9mBBogTfCj3LgAf1eMYgqZ6CaaEZEioKnzh0=;
	h=To:Subject:From:Message-Id:Date; b=kE3uqJGD0MWLs54zVPOHmiBD8EHzQZttSZwi76g/xWX0agBBbL3+1d49mjAliQ2IuAK01rh3Qkl2cfSVcu5WbbnQ/wuHqNVqH6NqgtzAUkW5qKDkCLjvA6f72B3HS9uPp93EmZt7xDr+VYYJJne1HWplBd3AW3DE5ZYwY6VhtKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgO09jnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgO09jnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767768833;
	bh=6I66Gon9mBBogTfCj3LgAf1eMYgqZ6CaaEZEioKnzh0=;
	h=To:Subject:From:Date:From;
	b=IgO09jnRY4tSIDEyXWxkwghVX5ss0bsPmALgI9OhZvPyacec/e5k7b7UBYDI7dbtB
	 A4kuEB1s/faoIuEmAwz15RM0hIjmmBpVKiLqgg2VBuvs+Dc9RS9b9dcCXpvFCKyCLA
	 4dNSjAXHcOOoseAyoOiqa8BzUiwrYuNmxFHDi77qSJjlbj4dT4HRH2rDVQ5lwsX2o3
	 dPJH+CGrK82ARwcB4R2GGqSYgR51hV4Deo9HowlOAA8+aoGbBgeBL+cB5uyhlZ5or8
	 Jm/O8yslaXFUi22G3JiZaC+7N23SL9XETi/8rzv+x06yD+d0/c8nFigqkk/bUj9Udw
	 9lVlC8gA9gHyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C5CF6BF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776883357.12036.1409773290841521065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107f4d0821eaae90e2d8eef4dd6b1210db7b369a585b2be980f2aa3d05b40e0a
Date: Wed, 07 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767768833
