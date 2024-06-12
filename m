Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D06217C9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718176703; cv=none; b=JqCAlLGx7lsh9w3YNf61vmZN5LvUBAteSuUAScktExMDGq2sJ6uYNRwzG5B4pf/4QU3vp/61V2Mx6EjgR8EdrrVFmwQ3dA0cVhyo01rgqK3JO6u7Vy0nO86Jt5HbsfKp8q6J1XFuilPFSrIVlMnkiAvefb60sfH7Ftwu95IMT6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718176703; c=relaxed/simple;
	bh=/LzYQfT1ylon6hycw6KX0aVjpxdItQJb95BcVtkV1vo=;
	h=To:Subject:From:Message-Id:Date; b=mPt6+Yn+veIHHOgdCNuAFnZ7QAN1HmDoVKZCehTrGV2rsPVbjzbugHiuXK3LoxZTepBoNEDfOThD16KuuKbvYbMqH7dlW1JhOCR0xMDXW/LUVowUS5zcwrOiSLSMUGOmUr00a0yHGr+jt6eDhCJ6vZsNv/lBBoW70sefHoek7Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf4DZMua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf4DZMua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC97FC32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718176702;
	bh=/LzYQfT1ylon6hycw6KX0aVjpxdItQJb95BcVtkV1vo=;
	h=To:Subject:From:Date:From;
	b=gf4DZMuaIR3wAXIlWDTN/uGMObI0/esOlogsdKdBXB+L47c2SIy3ZiL6GfSF6TFfY
	 8BEgKqY/ynRgtOKze4hdaoULsu8Xno0L6+Krw3sch0aF1SKzqSIQq/R8heGLUd3+Pz
	 5d6s9ixii8dnHQQRy4b2l6l0QqZJqTkOKD7xgVVc8p/7EMey+6RtGcOavITSH2JcmG
	 bTsih50Hem1sNSY9c5NY3R27IlqmJpnyCF4xqMvbaV0+QMZdVf7NhEX4YUvrDb76OG
	 1adq/HUUxzhR93jjyQqWzIfN2D6qMEkKIVHrExUFSMdfyxwrbKaU4ElyL5pHtAupIv
	 cfQ3F0zZX8KAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C878DC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817670279.22095.6932097264267849302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da917d962fd76753cdc11620d5ac9394335c53f17437c4e1f1951d1c1fc14fd
Date: Wed, 12 Jun 2024 07:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718176702
