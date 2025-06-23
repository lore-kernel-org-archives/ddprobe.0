Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F028D8FD
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750693194; cv=none; b=c3ejsTlqmm79gEhvX0EkfH268mF9Ufhm6FRc3S8+y8+QzzwygOICoRBfOedk/h6GrBmnwA9PfVI9CKJ4lwQtN9dopdKNf5vrSKupN0MYOdJca2YqhnQGewZ7yyN0fN+E9zmCkryx1cUjuahPakjcQikoKm43gxvtYoWenupMdt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750693194; c=relaxed/simple;
	bh=x1JCWCxUkFGzcEjOAMs0clTzlmcc7sH6ZuszUJBBHLA=;
	h=To:Subject:From:Message-Id:Date; b=bFHd1dtiGV6d2Uccx1c4jRXA6l5nwDbkr3V7SYjGHavi2ycdBSfn9LoVM6YvxQk/MEnudrsR1KVme7j0IDiUf8+EV0N2IN3NuE+0d8xCRR3mor9mzFX+ZwfSgIEJFpZWlTqPZHALUPleDH3LAlL8pkBId1qlaKMm0N7aDyeuSds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIYhFTqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIYhFTqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5712C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750693193;
	bh=x1JCWCxUkFGzcEjOAMs0clTzlmcc7sH6ZuszUJBBHLA=;
	h=To:Subject:From:Date:From;
	b=KIYhFTqaOvbgWQ/HhN+pebg7nIY8qjusUYpVCggxpr0ECT2t+k2L70V8iGiQF2GrR
	 NUovn2EqQHyKs2y9hrKiwFaiHACOkNShiPhLLSjbimInyniTn15+wQ+XxoZsfGXEeO
	 10fehjTVtHWszVzHGuS75Q8FdJydYzNnj7ru1Ridup6Ub7urSC9JicbLQqvqcevHnm
	 Bt6FLgyTJ/3Tl6kw/75l2kYB0HBK7yXPZgdTjK69lisdkF9T54zOZBtOnH/IwpLJVD
	 S6nKNeuM68VJYKamg6wFs+dgDxzn1tR3vusw0BlKRtUUqjHeU13ZQXN7HAr3SM0HgC
	 /R0v9OBeeT/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069319358.19526.2030059397409090243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3bf7cfcf9a4a1b7b4a70de8efae258461cc82288d6e7d3c5f4c0169030a36c9
Date: Mon, 23 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750693193
