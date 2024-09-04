Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361111CF2AB
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725449154; cv=none; b=Rdd8yqCZwJkoS+sci/2ZHVzn7G4W8opyNIW6TFqZLr4qay7Dx10fvnINO/YjYpIjrDbLNCKx9mIAGoyxpu+AO6VVvR6lO992Ek7YQigcXvy/6Vahnk8ndBFgnr6kMS9rURzS0DkfuG7dCWFn/0JD0nM60LhEx0q5ahpoAZ3HeJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725449154; c=relaxed/simple;
	bh=sJxl+nboFs56OVMV5+mlPd+SI3/u6jYAoWKO3t1gETY=;
	h=To:Subject:From:Message-Id:Date; b=hirK5dkBni76QxXenMR8gXdcuMT6xvfYKC2KVBVIm9xO+PyXjNpl8Di4XWcvgTDz+btPZZPWD7l6jm1tkfL5d6rNKq3VrATlVUyTMLQcsJh+NFeMjS3/7B/+JWn/TIwhDghH0kLbUEW7TunLKTmczu8OP3OyYR+65pf0dz0is3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8XSdBEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8XSdBEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76B6C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725449153;
	bh=sJxl+nboFs56OVMV5+mlPd+SI3/u6jYAoWKO3t1gETY=;
	h=To:Subject:From:Date:From;
	b=C8XSdBEbR6BSLpDZVdS4m/EHmxoL36ev/wIoxqJ/YTLAwZ94hW1bU41/cKfJKEt3D
	 eSKbDpqLzLu/m45jM8kNkbOZubFGdNnhVwudARaLArJW5Skj/fWL4ztWEjgeisKS0a
	 yi5RZTFgsjTuLRxef3EnXGAE2meThE+Hs89tl+50c5PunOYhOJ+3toLb6s5HEVVMTy
	 74a5yKdToPE5OYQbCVd86d+Wf241jFNuD+xv+fpT23oxtniYQMHBUrBRE0DFsj1Cm1
	 DMnzgGdZrUwyw2oLuz4PjfxkkjtA1a8KQqwcEMK3Te0DK+w6PfWXIPfGn3EcjK66r4
	 opBjBvH6LyoXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69DFCD3431
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172544915365.25647.761745677838535000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d248f5ed3afff6981bd222229440a000e22ebe0c879fea080857ddcd486b38d
Date: Wed, 04 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725449153
