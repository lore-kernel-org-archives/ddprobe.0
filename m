Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300C136D4EC
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763870514; cv=none; b=lR6UQSqg9Xnd4Q+0aVX5QXygh1OgIr7eq5C14k8PYBZSR5HVzmMaOeD8pzkmdmPAbAJXMMFyJli35mIK0hJYM84BJJz8InWBxBDNO0LwWeQXW4sZWYIh1UYzvT4BPgMQyvY+NeMCQA24wawysdNBcVWwbkvrNK7FOwz0RHS276g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763870514; c=relaxed/simple;
	bh=82euAe2yczp71AljB130o5SidLA2qCGwQ1viTbAW91w=;
	h=To:Subject:From:Message-Id:Date; b=Q2gFjwQZnQn/Vvv9DZXhPtyJgLQI8wAF+ScQto6fxmPbzoTfgA/N0A2bjc1JTEwxbL9MaPU6sSZ8qtG2mtqufvjOsB0z6fsy4jUUmlHOeuQa2DSGBIx3A9A9NntFNwcrQDLHm54N8/8avyKVRfZDrJCe6ihprOWXXS9jZEd+ijg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ln+JGHmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ln+JGHmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A802FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763870513;
	bh=82euAe2yczp71AljB130o5SidLA2qCGwQ1viTbAW91w=;
	h=To:Subject:From:Date:From;
	b=ln+JGHmLgGptSiwWzQUghYtjGEzel9Cu5o8q6m6hgo6h5CkvLYT5ongk/7jVlHveH
	 tosTIay1IdKBqd4itromn58L9n7itsBLxwHAYmegF0/HOlZYIRRmEYBcUCiLbOUMJO
	 yr/myKWoWonabbYEwv1KHuhe5oUGt0+6uy+vlvguvA7pablb7VlujX4RAEF2ctpWkX
	 UTuLqcUId2dn9/eiQIc/+u7Aql/doeA5J4yOKKg/isoLPR9hdyzEsymwCkiOKnI/5a
	 i9bumN2U/6MD/alj2Th5jB5O0vvLiJeSCsw6xlyA0+0LSivWLiDDUwF1VNOGBkHNOA
	 nkkpTgGK0wPag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FC5CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387051358.20527.7732683036170703244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d1807e02b450e95f26f048b788b83eff0905a39785337e9b5ddb9f5f26be6e
Date: Sun, 23 Nov 2025 04:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763870513
