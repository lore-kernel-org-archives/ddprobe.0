Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B408239085
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789603834; cv=none; b=gAy//RlIi8CmzV9YVL15zbbFur2hVZr9CrKri70C3hyAur5Ohep13nfoPr+PhT+1bU61g2rruj/uDcHFY8spllNQ5OCCu9lZD1oG2LP6IHdipPdu/53EtvUkJQiQISFe5GCRMUDLZ7++Kbn0OdRqfurizLEv3cO5Y1CTOG/bFRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789603834; c=relaxed/simple;
	bh=tw4oWNoAz40wuR+5yvwTELj1VvH+oHOWz1QS4dXMcW0=;
	h=To:Subject:From:Message-Id:Date; b=AOfwAKTvZ7HW6iC8cz0Upz3VXhfztKbw6SPs9o1gXrhbwD/+5dtW4RJ0ZlzuK91D9ADCztr32gM9PiU//5nXawHltnzYyFjiO3tGzA2d6bgAenNn9UsMZNnKbW2BxyPZGJPSFFE+6Ih7SmMQS8b6wjE2/3r7bG0GhiR7wHes4UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg1J1tfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg1J1tfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF44C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789603833;
	bh=tw4oWNoAz40wuR+5yvwTELj1VvH+oHOWz1QS4dXMcW0=;
	h=To:Subject:From:Date:From;
	b=Vg1J1tfS8nwVyzWnXqfq2jgvzFSO8PSpMZvkL7LFkAEFRiSELoqzA88VgBoe6dcCb
	 6Vf0YWcjRmMEMVKPbM/GrOy3AdA548eCy28D0DW/3eWnD+mR5lyRMXS1T5WFu5femK
	 8y/G7atwVink1MZG2JjPybpbyIzs4t+UyB/h7n1il4DXJLpPYHgEzq/2PCZTfBGDO7
	 Y0PdU7SnNXYNo1AcT5WYGCd1n2LaAVu4ixo6GNY5iz+8fdiu7HYK502pg5NJGEQsw+
	 jvAU55And+1eI/2itil2VJtD8K0EKvB93Z0b/j9wSyyAOkqgn1w/6JelumONpnWJRe
	 K8UcP94N2aWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6471C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960383370.1224.11182172007851505830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9139d68bdaa40185f433ee9ae36850da6d0d54e06dbeaf6ed5a7f768d1fb0c5
Date: Thu, 17 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789603833
