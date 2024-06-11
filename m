Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5660C176FCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718099903; cv=none; b=R1mI9ZUbr1oZcj+6291FWQPIT+9SEGhEN6d6fGaNUgl79jLOlHqZ/Tg1jwUqW2f/yzJl7kGyJ5oqF1yxEYbDu/LU0AkWhUsYEndPFWJiFBXtxAD4QbivUCTHFtguTpvH/kPISBQvxxG+oIHjlDw2qYkS5AE2822DmrfDdBWC/rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718099903; c=relaxed/simple;
	bh=PQXFS4+fTuGBitcQqP3ShMYRA7b5m7tuKIxd9AfQzrU=;
	h=To:Subject:From:Message-Id:Date; b=EVQnNl74c+x1gVhwsDV/6yn8mnD4DALQblXo1FE91f1O4ysTqZRwyT82AeZ+Weio2/ArYGJAJBtJOA372IkZan+Pzky5St7zZF5m4lK22U0+PCJZ6ItXkCnnd1+eETMZlfHksGBk71rt6673vJ1lVDbJSD0+3JB5Fg8cREW/6OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMemW+Y1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMemW+Y1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BFAC32786
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718099902;
	bh=PQXFS4+fTuGBitcQqP3ShMYRA7b5m7tuKIxd9AfQzrU=;
	h=To:Subject:From:Date:From;
	b=jMemW+Y1Ev8CtXqdbQtX4Ho1uD1TS0iKhRMsE1JaTZ9RPOzG2Prj5gEFtiDU3rG/b
	 g71s1Ph7zbjKiqwoLEtNh+HYOQAfT9e6hcP43sMUDjMjOvvxWRHtMH4+vTGnK6j3xv
	 oCRT0VK6PprWybeb7QvJlbu6MRa6ilrUcXVGs8AaDZ6vrEKyMyDEvLd7GL/u8rb7O2
	 LeSwRecN5hORL2iQv49KN2XjCX9s6KtP1yPtvls77fXYHFQJUOlRVFUwuTwKejsz/H
	 gOPOkGVmlXHFkf1X9JSMj/E/rcifYj1ZcLjyDIq5CUxQzSXXjCDC8urc+eW7CMXCuG
	 /Sh9Ygj9jSNig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D11C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809990276.28177.2422575031076539049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5442cdab23edf675d288784034cc195c4bffd48ebf684fd42a2e3cf68e2849c0
Date: Tue, 11 Jun 2024 09:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718099902
